<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link type="images/x-icon" rel="shortcut icon" href="${pageContext.request.contextPath}/res/images/favicon.ico">
	<title><spring:message code="system.name" /></title>
  </head>
  <style type="text/css">
	body{
		background-color:#b2bdc6;
		}
	
	</style>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/k_effets.js"></script>
	
	<script type="text/javascript">
	
	
	var kmiscro={
	
	ajoutevent:function(e){
	
			e.preventDefault();
			kmiscro.kaska(e);
			document.documentElement.addEventListener("mousemove", kmiscro.kaska, false);
			document.documentElement.addEventListener("mouseup", kmiscro.retireevent, false);
		},
	
	retireevent:function(){
			
			document.documentElement.removeEventListener("mousemove", kmiscro.kaska, false);
			document.documentElement.removeEventListener("mouseup", kmiscro.retireevent, false);
		},
	
	
	
	kaska:function(e) {
			
			e.preventDefault();
			
			var cb=document.getElementById('cb');
							
			var taille=cb.parentNode.offsetWidth-cb.offsetWidth
			var valeur=e.clientX-e.currentTarget.offsetLeft-cb.offsetWidth;	//position du curseur de la sourie dans la barre de defilement
			
			if(e.type=='mousemove' || e.type=='mousedown'){
			
			var valeur=valeur/taille;
			}
			
			else{
			
			var delta = 0;
			delta =((e.wheelDelta) ? e.wheelDelta/120 : -e.detail/3)
			var val=((delta<0) ? -1/30 : 1/30)
			var valeur=(parseInt(cb.style.marginLeft)/taille)+val
			}
			
			valeur = valeur>1 ? 1 : valeur;
			valeur = valeur<0 ? 0 : valeur;
	
			cb.style.marginLeft=valeur*taille+'px'
	
			var elem=document.getElementById('cs').parentNode;
	
			var effet='scale('+valeur*2+')';
	
			elem.style.WebkitTransform=effet;
			elem.style.OTransform=effet;
			elem.style.MozTransform=effet;
			elem.style.msTransform=effet;
			elem.style.transform=effet;
	
	
		},
	
	init:function(){
		
	var adi=document.getElementById('cs')
	var elmouse=((navigator.userAgent.indexOf("Firefox") != -1) ? 'DOMMouseScroll' : 'mousewheel')
	adi.addEventListener(elmouse, kmiscro.kaska, false);
	document.getElementById('cb').style.marginLeft=document.getElementById('cb').parentNode.offsetWidth/2-document.getElementById('cb').offsetWidth/2+'px'
	}
	
	}
	
	if(typeof window.addEventListener == 'undefined'){
		window.attachEvent('onload', kmiscro.init);
	}
	else{
		window.addEventListener('load', kmiscro.init, false);
	}
	
	</script>
  <body>
<div style='width:500px;height:600px'>
<img src='${pageContext.request.contextPath}/res/images/cuillere.jpg' style="width: 30px;height: 30px" onclick='effet("cuillere.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/car.jpg' style="width: 30px;height: 30px" onclick='effet("car.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/carton.jpg' style="width: 30px;height: 30px" onclick='effet("carton.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/ours.jpg' style="width: 30px;height: 30px" onclick='effet("ours.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/bateau.jpg' style="width: 30px;height: 30px" onclick='effet("bateau.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/avion.jpg' style="width: 30px;height: 30px" onclick='effet("avion.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/fizz.jpg' style="width: 30px;height: 30px" onclick='effet("fizz.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/girafe.jpg' style="width: 30px;height: 30px" onclick='effet("girafe.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/carnivores.jpg' style="width: 30px;height: 30px" onclick='effet("carnivores.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/surf.jpg' style="width: 30px;height: 30px" onclick='effet("surf.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/robot.jpg' style="width: 30px;height: 30px" onclick='effet("robot.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/robot2.jpg' style="width: 30px;height: 30px" onclick='effet("robot2.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/romain.jpg' style="width: 30px;height: 30px" onclick='effet("romain.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/lap.jpg' style="width: 30px;height: 30px" onclick='effet("lap.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/gliss2.jpg' style="width: 30px;height: 30px" onclick='effet("gliss2.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/lieu.jpg' style="width: 30px;height: 30px" onclick='effet("lieu.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/chiot.jpg' style="width: 30px;height: 30px" onclick='effet("chiot.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/rock.jpg' style="width: 30px;height: 30px" onclick='effet("rock.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/clyde.jpg' style="width: 30px;height: 30px" onclick='effet("clyde.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/mustang.jpg' style="width: 30px;height: 30px" onclick='effet("mustang.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/lboy.jpg' style="width: 30px;height: 30px" onclick='effet("lboy.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/voitu.jpg' style="width: 30px;height: 30px" onclick='effet("voitu.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/levant.jpg' style="width: 30px;height: 30px" onclick='effet("levant.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/monstre.jpg' style="width: 30px;height: 30px" onclick='effet("monstre.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/monstre2.jpg' style="width: 30px;height: 30px" onclick='effet("monstre2.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/york.jpg' style="width: 30px;height: 30px" onclick='effet("york.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/lion.jpg' style="width: 30px;height: 30px" onclick='effet("lion.jpg")'/>
<img src='${pageContext.request.contextPath}/res/images/lap2.jpg' style="width: 30px;height: 30px" onclick='effet("lap2.jpg")'/>
</div>


<div ontouchstart='kmiscro.ajoutevent(event)' ontouchmove='kmiscro.ajoutevent(event)' onmousedown='kmiscro.ajoutevent(event)' style='height:10px;width:300px;background-color:blue;border-radius:5px;'>
<div style='height:10px;width:10px;margin-left:550px;margin-top:-350px;background-color:red;margin-top:-20px;border-radius:5px' id='cb' >
</div>
</div>


<div style='height:375px;width:500px;/* background-color:gray; */margin-left:550px;margin-top:-350px;'>
    
<canvas id='cs' height='375' width='500'/>

</div>

</body>


 </html>