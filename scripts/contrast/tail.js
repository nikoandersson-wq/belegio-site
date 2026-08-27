};
function __go(){
  document.documentElement.classList.remove('js');
  var rv=document.querySelectorAll('.reveal');
  for(var i=0;i<rv.length;i++){ rv[i].classList.add('in'); rv[i].style.opacity='1'; rv[i].style.transform='none'; }
  var res=window.__probe();
  var d=document.createElement('div'); d.id='__A11Y__';
  d.textContent=JSON.stringify({page:location.pathname,lang:navigator.language,findings:res}); d.style.display='none';
  document.body.appendChild(d);
}
if(document.readyState!=='loading') setTimeout(__go,300);
else document.addEventListener('DOMContentLoaded',function(){setTimeout(__go,300);});
</script>
