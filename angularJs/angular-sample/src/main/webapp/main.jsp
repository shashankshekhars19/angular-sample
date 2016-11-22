<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	body
{
    padding-top: 20px;
}

body{ margin: 0; padding: 0; background: #ffffff; }

h1,h2 {
  text-align: left;
  left-margin: 10px;
  
}
#myCarousel .nav a small
{
    display: block;
}
#myCarousel .nav
{
    background: #eee;
}
.nav-justified > li > a
{
    border-radius: 0px;
}
.nav-pills>li[data-slide-to="0"].active a { background-color: #16a085; }
.nav-pills>li[data-slide-to="1"].active a { background-color: #e67e22; }
.nav-pills>li[data-slide-to="2"].active a { background-color: #2980b9; }
.nav-pills>li[data-slide-to="3"].active a { background-color: #8e44ad; }
</style>
<script type="text/javascript">
$(document).ready( function() {
    $('#myCarousel').carousel({
    	interval:   4000
	});
	
	var clickEvent = false;
	$('#myCarousel').on('click', '.nav a', function() {
			clickEvent = true;
			$('.nav li').removeClass('active');
			$(this).parent().addClass('active');		
	}).on('slid.bs.carousel', function(e) {
		if(!clickEvent) {
			var count = $('.nav').children().length -1;
			var current = $('.nav li.active');
			current.removeClass('active').next().addClass('active');
			var id = parseInt(current.data('slide-to'));
			if(count == id) {
				$('.nav li').first().addClass('active');	
			}
		}
		clickEvent = false;
	});
});
</script>

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.28/angular.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.28//angular-route.min.js"></script>
<script type="text/javascript" src="app/app.js"></script>
<script type="text/javascript" src="app/services/customerServices.js"></script>
<script type="text/javascript" src="app/controller/customerController.js"></script>
<script type="text/javascript" src="app/controller/tabController.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" /> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body ng-app="mainApp">

<div class="page-header">
	<h1>Your Application   
  </h1>
	
	</div>
	 <div  ng-controller="TabctrlController">
	 <ul class="nav nav-pills nav-justified">
            <li data-target="#myCarousel" data-slide-to="0" class="active" ng-class="{'active' : activeTab == 1}">
            		<a href="#/home" ng-click="setActiveTab(1)">One</a></li>
            <li data-target="#myCarousel" data-slide-to="1" ng-class="{'active' : activeTab == 2}">
            				<a href="#/set" ng-click="setActiveTab(2)">Two</a></li>
            <li data-target="#myCarousel" data-slide-to="2" ng-class="{'active' : activeTab == 3}">
            				<a href="#/sss" ng-click="setActiveTab(3)">Three</a></li>
            <li data-target="#myCarousel" data-slide-to="3" ng-class="{'active' : activeTab == 4}">
            				<a href="#/sss" ng-click="setActiveTab(4)">Four</a></li>
        </ul>
	</div>
	<div class="col-md-9">
		  	<div ng-view></div>
		</div>
	<div name="footer"></div>

</body>
</html>