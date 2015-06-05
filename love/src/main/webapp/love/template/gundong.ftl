<style type="text/css">
#ul1{background:white;margin:0px;padding:0px;width:100%;height:300px;border:1px solid black;overflow:hidden;}
#ul1 li{border-bottom:1px dashed #CCC;padding:15px 10px 3px 10px;margin:0px;list-style:none;}
</style>
<script type="text/javascript">
var arr= new Array(); 

//请求后台
$(function(){
	$.post("${request.contextPath}/template/getIndexUrl",function(data){
		$.each(data.result,function(i,result){
			arr.push('<a href="'+result.url+'" target="_blank" style="color:#000;">' + result.url + '</a>');
		})
	})
});

var t=setInterval(function(){
 var sTxt=arr.shift();
 createDom(sTxt);
 arr.push(sTxt);
},2000)
var bPause=false;
function startMove(obj,attr,iTarget,fnMoveEnd)
{
 if(obj.timer)
 {
  clearInterval(obj.timer);
 }
 obj.timer=setInterval(function(){
  if(bPause)
  {
   return;
  }
  doMove(obj,attr,iTarget,fnMoveEnd);
 },30)
};
function getAttr(obj,attr)
{
 if(obj.currentStyle)
 {
  return obj.currentStyle[attr];
 }
 else
 {
  return document.defaultView.getComputedStyle(obj,false)[attr];
 }
}
function doMove(obj,attr,iTarget,fnMoveEnd)
{
 var iSpeed=0;
 var weizhi=0;
 if(attr=="opacity")
 {
  weizhi=parseFloat(getAttr(obj,"opacity"));
 }
 else
 {
  weizhi=parseFloat(getAttr(obj,attr))
 }
 if(Math.abs(iTarget-weizhi)<1/arr.length)
 {
  clearInterval(obj.timer);
  obj.timer=null;
  if(fnMoveEnd)
  {
   fnMoveEnd();
  }
 }
 else
 {
  iSpeed=(iTarget-weizhi)/8;
  if(attr=="opacity")
  {
   obj.style.filter="alpha(opacity:"+(weizhi+iSpeed)*100+")";
   obj.style.opacity=weizhi+iSpeed;
  }
  else
  {
   iSpeed=iSpeed>0?Math.ceil(iSpeed):Math.floor(iSpeed);
   obj.style[attr]=weizhi+iSpeed+"px";
  }
 }
};
function leaveMessage()
{
 var oText=document.getElementById("txt1");
 createDom(oText.value);
 oText.value="";
};
function createDom(sTxt)
{
 var oUl=document.getElementById("ul1");
 var aLi=oUl.getElementsByTagName("li");
 var oLi=document.createElement("li");
 
 var iHeight=0;
 oLi.innerHTML=sTxt;
 oLi.style.filter="alpha(opacity:0)";
 oLi.style.opacity=0;
 
 if(aLi.length)
 {
  oUl.insertBefore(oLi,aLi[0])
 }
 else
 {
  oUl.appendChild(oLi)
 }
 
 //开始运动
 iHeight=oLi.offsetHeight;
 oLi.style.height="0px";
 oLi.style.overflow='hidden';
 startMove(oLi,"height",iHeight,function(){
  startMove(oLi,"opacity",1)
 })
 oUl.onmouseover=function()
 {
  bPause=true;
 };
 oUl.onmouseout=function()
 {
  bPause=false;
 }
};
</script>

<ul id="ul1"></ul>