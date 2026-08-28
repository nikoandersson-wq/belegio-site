
  function parse(c){
    if(!c) return null;
    var m = c.match(/^rgba?\(([^)]+)\)$/); if(!m) return null;
    var p = m[1].split(',').map(function(x){return parseFloat(x.trim());});
    return {r:p[0],g:p[1],b:p[2],a:p.length>3?p[3]:1};
  }
  function over(fg,bg){ // composite fg (with alpha) over opaque bg
    var a=fg.a;
    return {r:fg.r*a+bg.r*(1-a), g:fg.g*a+bg.g*(1-a), b:fg.b*a+bg.b*(1-a), a:1};
  }
  function lum(c){
    function ch(v){v/=255; return v<=0.03928? v/12.92 : Math.pow((v+0.055)/1.055,2.4);}
    return 0.2126*ch(c.r)+0.7152*ch(c.g)+0.0722*ch(c.b);
  }
  function ratio(a,b){var l1=lum(a),l2=lum(b); if(l1<l2){var t=l1;l1=l2;l2=t;} return (l1+0.05)/(l2+0.05);}
  function hex(c){function h(v){v=Math.round(v).toString(16);return v.length<2?'0'+v:v;} return '#'+h(c.r)+h(c.g)+h(c.b);}

  // effective background: walk ancestors compositing until opaque
  function effBg(el){
    var stack=[], node=el, gradient=null;
    while(node && node.nodeType===1){
      var cs=getComputedStyle(node);
      var bi=cs.backgroundImage;
      if(bi && bi!=='none' && !gradient) gradient=bi.slice(0,60);
      var bg=parse(cs.backgroundColor);
      if(bg && bg.a>0){ stack.push(bg); if(bg.a>=0.999) break; }
      node=node.parentElement;
    }
    var base={r:255,g:255,b:255,a:1};
    // last pushed is the most opaque/deepest ancestor
    for(var i=stack.length-1;i>=0;i--) base=over(stack[i],base);
    return {c:base, gradient:gradient};
  }

  function path(el){
    var p=[],n=el,d=0;
    while(n&&n.nodeType===1&&d<4){
      var s=n.tagName.toLowerCase();
      if(n.id) s+='#'+n.id;
      else if(n.className && typeof n.className==='string' && n.className.trim()) s+='.'+n.className.trim().split(/\s+/).slice(0,3).join('.');
      p.unshift(s); n=n.parentElement; d++;
    }
    return p.join('>');
  }

  var out=[], seen={};
  var all=document.querySelectorAll('*');
  for(var i=0;i<all.length;i++){
    var el=all[i];
    // must have its own visible text
    var txt='';
    for(var j=0;j<el.childNodes.length;j++){
      if(el.childNodes[j].nodeType===3) txt+=el.childNodes[j].nodeValue;
    }
    txt=txt.replace(/\s+/g,' ').trim();
    if(!txt) continue;
    var cs=getComputedStyle(el);
    if(cs.display==='none'||cs.visibility==='hidden') continue;
    var rect=el.getBoundingClientRect();
    if(rect.width<1||rect.height<1) continue;
    var op=parseFloat(cs.opacity);
    var fg=parse(cs.color); if(!fg) continue;
    var bgi=effBg(el);
    var bg=bgi.c;
    // fold element opacity into the text alpha (approximation of the real compositing)
    var eff=fg.a*(isNaN(op)?1:op);
    // ancestor opacity too
    var an=el.parentElement, guard=0;
    while(an && an.nodeType===1 && guard<12){ var ao=parseFloat(getComputedStyle(an).opacity); if(!isNaN(ao)) eff*=ao; an=an.parentElement; guard++; }
    // Composited to zero alpha there is no text on screen and so no ratio to
    // measure: .back-to-top sits at opacity:0 until you scroll, and folding that
    // into the alpha made it composite to exactly its own background and report a
    // false 1.00:1. display:none and visibility:hidden are already skipped above;
    // this is the third way to be invisible. Anything faint but > 0 still counts.
    if(!(eff>0)) continue;
    var comp=over({r:fg.r,g:fg.g,b:fg.b,a:eff}, bg);
    var r=ratio(comp,bg);
    var fs=parseFloat(cs.fontSize), fw=parseInt(cs.fontWeight)||400;
    var large = (fs>=24) || (fs>=18.66 && fw>=700);
    var need = large?3.0:4.5;
    var key=path(el)+'|'+hex(comp)+'|'+hex(bg)+'|'+fs;
    if(seen[key]) continue; seen[key]=1;
    if(r < need + 0.0001){
      out.push({sel:path(el), text:txt.slice(0,58), fg:hex(comp), bg:hex(bg), ratio:Math.round(r*100)/100,
                need:need, size:fs, weight:fw, grad:bgi.gradient||''});
    }
  }
  out.sort(function(a,b){return a.ratio-b.ratio;});
  return out;
