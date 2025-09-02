// Shared navigation / dynamic loading script for framework docs (clean, no embedded refine HTML)
// Single source of truth: actual pages in /docs/framework/check_refine/*.html loaded via iframe.
(function(){
	function filterNav(v){v=v.toLowerCase();document.querySelectorAll('nav a, nav button.nav-group-toggle').forEach(el=>{el.style.display=el.textContent.toLowerCase().includes(v)?'block':'none';});}
	function toggleGroup(id){const g=document.getElementById(id);if(!g)return;const btn=g.previousElementSibling;g.classList.toggle('open');if(btn){const base=btn.getAttribute('data-label')||btn.textContent.replace(/[▸▾]/g,'').trim();btn.innerHTML=base+' '+(g.classList.contains('open')?'▾':'▸');}}
	function ensureSnapshot(){const main=document.querySelector('main');if(!window._frameworkMainSnapshot){window._frameworkMainSnapshot={html:main.innerHTML,title:document.title};}}
	function restoreSnapshot(push){if(!window._frameworkMainSnapshot)return;const main=document.querySelector('main');main.innerHTML=window._frameworkMainSnapshot.html;document.title=window._frameworkMainSnapshot.title;main.removeAttribute('data-mode');window.scrollTo(0,0);if(push){history.pushState({mode:'framework'},document.title,basePage());} rebind();}
	function basePage(){const path=location.pathname.split('/');return path[path.length-1];}

	const REFINE_IFRAME_BASE='check_refine/';
	function refineIframe(page){return `<iframe class="refine-frame" src="${REFINE_IFRAME_BASE}${page}?embed=1" loading="lazy" referrerpolicy="no-referrer"></iframe>`;}

	function loadRefine(page,link,replaceState){
		ensureSnapshot();
		const main=document.querySelector('main');
		const titleTxt='Check & Refine – '+(link?link.textContent:page.replace('.html',''));
		const body=refineIframe(page);
		document.title=titleTxt;
		main.setAttribute('data-mode','refine');
		main.innerHTML=`<div class="back-bar"><button id="back-fw" type="button">← Framework</button><h2>Check &amp; Refine: ${(link?link.textContent:page.replace('.html',''))}</h2></div>${body}`;
		if(!document.getElementById('refine-iframe-style')){const st=document.createElement('style');st.id='refine-iframe-style';st.textContent='.refine-frame{width:100%;border:0;min-height:calc(100vh - 70px);}';document.head.appendChild(st);} 
		const back=document.getElementById('back-fw');
		if(back){back.addEventListener('click',()=>{history.pushState({mode:'framework'},document.title,basePage());restoreSnapshot(false);});}
		window.scrollTo(0,0);
		if(!replaceState){history.pushState({mode:'refine',page:page},titleTxt,'#refine:'+page);} 
		rebind();
	}

	function navClick(e){const a=e.target.closest('a[data-refine]');if(!a)return;if(e.metaKey||e.ctrlKey)return;e.preventDefault();loadRefine(a.dataset.refine,a,false);}  
	function rebind(){const n=document.querySelector('nav');if(!n)return;n.removeEventListener('click',navClick);n.addEventListener('click',navClick);}  

	window.addEventListener('popstate',ev=>{if(ev.state){if(ev.state.mode==='refine'){loadRefine(ev.state.page,null,true);}else if(ev.state.mode==='framework'){restoreSnapshot(false);} }else{restoreSnapshot(false);} });

	function init(){window.filterNav=filterNav;window.toggleGroup=toggleGroup;rebind();if(location.hash.startsWith('#refine:')){loadRefine(location.hash.substring(8),null,true);} else {history.replaceState({mode:'framework'},document.title,basePage());}}
	document.addEventListener('DOMContentLoaded',init);
})();
