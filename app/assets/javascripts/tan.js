// JavaScript Document
function addloadevent(func){
var oldonload=window.onload;
if(typeof window.onload!='function'){
	window.onload=func;
}else{
	window.onload=function(){
		oldonload();
		func();
	}
}
}
function img(final_x,final_y,sign){
if(!document.createElement) return false;
if(!document.getElementById) return false;
var tan=document.createElement("a");
tan.setAttribute("id","tan");
tan.setAttribute("href","ta.html");
tan.setAttribute("target","_blank");
var img=document.createElement("img");
img.setAttribute("src","images/img2.gif");
tan.appendChild(img);
document.body.appendChild(tan);
tan.style.position="absolute";
tan.style.border="0px solid rgb(0,0,0)";
if(sign=="1"){
	tan.style.left=final_x+"px";
	}else {
		tan.style.right=final_x+"px";}
tan.style.top=final_y+"px";
tan.onmouseover=function(){
	img.setAttribute("src","images/img1.gif");
        img.style.width="262px";
        img.style.height="111px";
	}
tan.onmouseout=function(){
	img.setAttribute("src","images/img2.gif");
        img.style.width="20px";
        img.style.height="111px"; 
}
}
function display(){
   img(0,120,1);
   img(0,100,2);
}
addloadevent(display);