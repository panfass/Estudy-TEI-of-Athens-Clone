<%@page import="webServiceInvocation.ServiceInput"%>
<%@page import="webServiceInvocation.JavaObjectToXMLConversion"%>
<%@page import="webServiceInvocation.rest.RESTPost"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!-- saved from url=(0041)file:///C:/Users/Takis/Desktop/index.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=windows-1253"><style type="text/css">@charset "UTF-8";[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide:not(.ng-hide-animate){display:none !important;}ng\:form{display:block;}.ng-animate-shim{visibility:hidden;}.ng-anchor{position:absolute;}</style>
<meta name="GENERATOR" content="Microsoft Visual Studio 6.0">

<meta http-equiv="Content-Language" content="el">
<link rel="stylesheet" type="text/css" href="./LoginCheck_files/Unistudent.css">
<title>Inserted Grade</title>
<script language="javascript">
<!--
if (navigator.userAgent.indexOf("Gecko")!=-1)
{
//Add Event Listeners
document.addEventListener('click', function (e) {window.event=e;window.event.srcElement=e.target}, true); 
document.addEventListener('mouseover', function (e) {window.event=e;window.event.srcElement=e.target}, true); 
document.addEventListener('onmouseout', function (e) {window.event=e;window.event.srcElement=e.target}, true); 
document.addEventListener('onresize', function (e) {window.event=e;window.event.srcElement=e.target}, true); 
}
function window_onunload() {
	if (window.event.clientX < 0 && window.event.clientY < 0)
	 {
	   //location.href="disconnect.asp"
	 }
}
//-->
</script>
    <script type="text/javascript" src="./LoginCheck_files/jquery-2.2.4.min.js.download" integrity="sha384-rY/jv8mMhqDabXSo+UCggqKtdmBfd3qC2/KvyTDNQ6PcUJXaxK1tMepoQda4g5vB" crossorigin="anonymous"></script>
<script type="text/javascript" src="./LoginCheck_files/angular.min.js.download" integrity="sha384-yIqa4x9Cpx9ZK4TKjprtQfMzhBQaotZRqdvNR6Y0Ozb+/2TaeBTqxr9ko1tQhSgU" crossorigin="anonymous"></script>
<script type="text/javascript" src="./LoginCheck_files/angular-messages.min.js.download" integrity="sha384-Whow1AP9yk/ncZXeszCVRcuw25o+1dys5YTJ6Fgik5SyciRZZeoqs06xP2rzXtPO" crossorigin="anonymous"></script>
<script type="text/javascript" src="./LoginCheck_files/angular-animate.min.js.download" integrity="sha384-kN5JkHYVPirSqYGT8T8yiWjSk7dQbwE7Ri8B1e6mTaESqPk0ZzezoykQuUGixa2X" crossorigin="anonymous"></script>
<script type="text/javascript" src="./LoginCheck_files/angular-aria.min.js.download" integrity="sha384-v9WdzVGR+rwdUVZhBdPNBQa55DL0m/SZZOhsvm42Rh/G+8y4dzb8ptTJws5d/vY1" crossorigin="anonymous"></script>
<script type="text/javascript" src="./LoginCheck_files/ngStorage.min.js.download" integrity="sha384-f6S49lisxpydi1pZg4rpv6aIrhPhDHoLyKUpeuOL9F5zmJVeWqUYfr1+s/yAMVvz" crossorigin="anonymous"></script>
<script type="text/javascript" src="./LoginCheck_files/app.js.download"></script>
<style type="text/css">
   input.ng-invalid.ng-touched, textarea.ng-invalid.ng-touched {
    border:solid 1px #cd5c5c !important;
  }

    .ng-field .ng-error-messages {
        padding-top: 4px;
        color:#cd5c5c !important;
        font-weight: normal !important;
    }
 
  form.ng-invalid input[type=submit],  form.ng-invalid input[type=button] {
      border:solid 1px #ccc;
    background-color: #ddd;
    color:#aaa;
}

ul {
    list-style-type: none;
    padding: 9px;
}
li {padding-bottom: 8px;}


</style>
<script type="text/javascript">(function(window) { if (typeof window === 'undefined') { return; }window.FormValidations = [{'name':'userName','required':true,'maxlength':45,'message':'Το όνομα χρήστη δεν είναι έγκυρο. Ελέγξτε τους χαρακτήρες και βεβαιωθείτε ότι δεν υπάρχουν κενά.','pattern':'/^[\\u00E1-\\u03CEA-Z0-9a-z._-]+(@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6})?$/'},{'name':'pwd','required':true,'maxlength':36,'message':'','pattern':'/^.{0,36}$/'},{'name':'userdep','required':false,'maxlength':0,'message':'','pattern':'/^(\\d+)$/'},{'name':'userdep1','required':false,'maxlength':0,'message':'','pattern':'/^(\\d+)$/'},{'name':'userdep2','required':false,'maxlength':0,'message':'','pattern':'/^(\\d+)$/'},{'name':'rdStudiesLevel2','required':false,'maxlength':0,'message':'','pattern':'/^(\\d+)$/'},{'name':'userdepname','required':false,'maxlength':0,'message':'','pattern':'/^[\\u00E1-\\u03CEa-z\\-\\s\\.0-9]{0,120}$/'},{'name':'loginTrue','required':false,'maxlength':0,'message':'','pattern':'/^login$/'}]; })(window);</script>
<script type="text/javascript">
    angular.element(function () {
        
        var form_bootstrap = function form_bootstrap(window) {
            if (typeof window === 'undefined') {  return; }
            if (typeof window.FormValidations === 'undefined') { return; }
            $('form').attr('ng-controller','FormController as ctrl');
            $('form').find('input[type=submit]').attr('ng-disabled', $('form').attr('name') + '.$invalid');
            $('form').find('input[type=button]').attr('ng-disabled', $('form').attr('name') + '.$invalid');
            if (typeof $('form').attr('name') === 'undefined') {
                $('form').attr('name', 'form');
            }
            var formName = $('form').attr('name');
            for (var i = 0; i < window.FormValidations.length; i++) {
                var validation = window.FormValidations[i];
                var $selector = $(':text[name=' + validation.name + ']');
                if ($selector.length == 0)
                    $selector = $('input[type=\'password\'][name=\'' + validation.name + '\']');
                if ($selector.length == 0)
                    $selector = $('textarea[name=' + validation.name + ']');
                if ($selector.length > 0) {
                    var messagePattern = validation.message || 'Η τιμή περιέχει μη έγκυρους χαρακτήρες ή ξεπερνά το επιτρεπόμενο μέγεθος';
                    //wrap element
                    $selector.wrap('<span class="ng-field"></span>');
                    $selector.attr('ng-trim', 'false').attr('ng-model', validation.name).attr('ng-pattern', validation.pattern + 'i');
                    var $container = $selector.closest('.ng-field');
                    $container.append('<div ng-if="' + formName + '.' + validation.name + '.$touched" ng-messages="' +formName + '.' + validation.name + '.$error" class="ng-error-messages" role="alert"></div>')
                    if (validation.pattern) {
                            $container.find('.ng-error-messages').append('<div ng-show="' + formName + '.' + validation.name + '.$error.pattern" ng-message="maxlength">' + messagePattern + '</div>')
                    }
                    if (validation.maxlength > 0) {
                        $selector.attr('maxlength', validation.maxlength);
                        $selector.attr('ng-maxlength', validation.maxlength);
                        $container.find('.ng-error-messages').append('<div ng-show="' + formName + '.' + validation.name + '.$error.maxlength" ng-message="maxlength">Η τιμή ξεπερνά το επιτρεπόμενο όριο χαρακτήρων (' + validation.maxlength + ' χαρακτήρες)</div>')
                    }
                    if (validation.required) {
                        $selector.attr('ng-required', 'true');
                        $container.find('.ng-error-messages').append('<div ng-show="' + formName + '.' + validation.name + '.$error.required" ng-message="required">Το πεδίο είναι υποχρεωτικό</div>')
                    }
                }
    }
        };
        form_bootstrap(window);
        angular.bootstrap(document, ['students']);
    });

</script>
<script type="text/javascript">
              var _0x7951 = ["\x3C\x69\x6E\x70\x75\x74\x20\x74\x79\x70\x65\x3D\x22\x68\x69\x64\x64\x65\x6E\x22\x20\x2F\x3E", "\x6E\x61\x6D\x65", "\x61\x74\x74\x72", "\x76\x61\x6C\x75\x65", "\x61\x70\x70\x65\x6E\x64", "\x66\x6F\x72\x6D", "\x73\x75\x62\x6D\x69\x74", "\x72\x65\x61\x64\x79"]; $(document)[_0x7951[7]](function () { $(_0x7951[5])[_0x7951[6]](function (_0xc07dx1) { var _0xc07dx2 = $(_0x7951[0]); _0xc07dx2[_0x7951[2]](_0x7951[1], '\x63\x36\x64\x38\x36\x64\x34\x39\x35\x38\x35\x35\x35\x65\x37\x34\x61\x38\x32\x61\x63\x31\x31\x37\x31\x32\x31\x32\x32\x33\x33\x38\x39'); _0xc07dx2[_0x7951[2]](_0x7951[3], '\x32\x36\x41\x44\x38\x33\x37\x30\x43\x43\x34\x42\x42\x38\x44\x44\x30\x33\x30\x35\x45\x36\x46\x33\x36\x33\x36\x36\x32\x30\x42\x31\x36\x37\x32\x43\x33\x35\x46\x33\x34\x46\x38\x37\x34\x35\x32\x45\x43\x37\x45\x45\x34\x31\x36\x41\x30\x31\x41\x46\x32\x34\x41\x38\x30\x32\x46\x33\x36\x44\x31\x45\x31\x41\x45\x43\x42\x45\x46\x43\x32\x37\x39\x33\x46\x33\x33\x42\x41\x35\x36\x36\x36\x39\x43\x33\x31\x43\x34\x36\x33\x33\x34\x38\x42\x43\x45\x34\x35\x30\x39\x46\x35\x33\x38\x32\x39\x37\x32\x39\x41\x32\x45\x44\x45\x33\x33\x45\x38\x34\x45\x41\x43\x43\x32\x45\x43\x36\x38\x39\x33\x30\x31\x34\x46\x38\x45\x36\x33\x44\x34\x38\x39\x37\x30\x36\x36\x46\x30\x45\x35\x45\x32\x35\x35\x44\x36\x39\x31\x36\x41\x44\x35\x45\x42\x39\x33\x39\x34\x39\x33\x38\x38\x43\x37\x35\x30\x39\x39\x42\x32\x31\x32\x43\x41\x36\x42\x32\x42\x36\x30\x35\x31\x30\x32\x38\x44\x41\x41\x41\x39\x44\x44\x38\x38\x30\x32\x43\x46\x35\x30\x42\x43\x43'); $(_0x7951[5])[_0x7951[4]](_0xc07dx2) }) })
        </script>
        
<script type="text/javascript" src="chrome-extension://aggiiclaiamajehmlfpkjmlbadmkledi/lib/popup.js" async=""></script><script type="text/javascript" src="chrome-extension://aggiiclaiamajehmlfpkjmlbadmkledi/lib/tat_popup.js" async=""></script></head>
<body style="margin-top:0;margin-left:0;margin-right:0;margin-bottom:0;height:100%" onunload="javascript:return window_onunload()">


<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0" style="margin-top:0">

	<tbody><tr height="64" valign="top">
		<td valign="top" rowspan="7" width="135" class="mainheader">
			<img style="" alt="eLOGO" src="./LoginCheck_files/logo.png">&nbsp;
		<div style="width:135;margin-top:55;margin-left:5">
		<input type="hidden" id="imageLevel0" value="images/flevel0.gif"><input type="hidden" id="imageLevel0Sel" value="images/flevel0Sel.gif"><input type="hidden" id="imageLevel0Sub" value="images/flevel0Sub.gif"><input type="hidden" id="imageLevel0SubSel" value="images/flevel0SubSel.gif"><input type="hidden" id="imageLevel1" value="images/level1_regular.gif&gt;" <input="">
		
<table class="menuTable" cellpadding="2" id="menuTable" style="FILTER:Shadow(color=#C0c0c0)"><tbody><tr height="22">

<td id="mnuMain" width="127" class="menuItem" style="background-repeat:no-repeat;cursor:pointer" background="./LoginCheck_files/flevel0.gif" onclick="/">&nbsp;Home Page</td></tr><tr height="22">
<td id="mnu2" width="127" class="menuitem" style="background-repeat:no-repeat;cursor:pointer" background="./LoginCheck_files/flevel0Sub.gif" onclick="/">&nbsp;Programme<div style="margin-top:10;margin-left:0;display:none"><table cellpadding="3" cellspacing="0" width="100%"><tbody><tr><td valign="top"><img src="./LoginCheck_files/level1_regular.gif"></td><td valign="top" style="margin-left:0" id="submnu1" width="125" height="18" class="menuUnderline" onclick="/">Undergraduate</td></tr></tbody></table><table cellpadding="3" cellspacing="0" width="100%"><tbody><tr><td valign="top"><img src="./LoginCheck_files/level1_regular.gif"></td><td valign="top" style="margin-left:0" id="submnu2" width="125" height="18" class="Menuunderline" onclick="/">Postgraduate</td></tr></tbody></table></div></td></tr><tr height="22"><td id="depart" width="127" class="menuItem" style="background-repeat:no-repeat;cursor:pointer" background="./LoginCheck_files/flevel0.gif" onclick="/">&nbsp;Departments</td></tr><tr height="22"><td id="mnu5" width="127" class="menuItem" style="background-repeat:no-repeat;cursor:pointer" background="./LoginCheck_files/flevel0.gif" onclick="/">&nbsp;Courses</td></tr><tr height="22"><td id="eventAnn" width="127" class="menuItem" style="background-repeat:no-repeat;cursor:pointer" background="./LoginCheck_files/flevel0.gif" onclick="/">&nbsp;Announcements</td></tr><tr height="22"><td id="eventSch" width="127" class="menuItem" style="background-repeat:no-repeat;cursor:pointer" background="./LoginCheck_files/flevel0.gif" onclick="/">&nbsp;Scholarships</td></tr><tr height="22"><td id="mnu7" width="127" class="menuItemDisabled" style="background-repeat:no-repeat;" background="./LoginCheck_files/flevel0.gif">&nbsp;Pre-Registration</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr height="22"><td id="student" width="127" class="menuItem" style="background-repeat:no-repeat;cursor:pointer" background="./LoginCheck_files/flevel0.gif" onclick="/">&nbsp;Student Login</td></tr><tr><td>&nbsp;</td></tr></tbody></table>
		
		</div>
		</td>
		<td class="mainheader" width="1px">&nbsp;</td>
		<td class="mainheader" valign="top">
		</td>
		<td class="mainheader" valign="middle">
			<span class="tableheader"> Technological Educational Institute of Athens  </span>
		</td>
		<td nowrap="" width="50px" class="mainHeader">
			<div style="margin-top:5px">
			<img src="./LoginCheck_files/gr.gif" onclick="changeLang(&#39;el-gr&#39;)" style="cursor:pointer" title="Ελληνικά" width="21" height="19">
			<img src="./LoginCheck_files/en.gif" onclick="changeLang(&#39;en-us&#39;)" style="cursor:pointer" title="English" width="21" height="19"> 
			</div>
		</td>
	</tr>
	<tr class="mainHeader"><td colspan="4">&nbsp;</td></tr>
	<tr class="mainHeader" height="4"><td></td><td colspan="3" style="background-image:url(&#39;images/banner.gif&#39;)"></td></tr>
	
	<tr>
	<td height="30" class="mainHeader">&nbsp;</td>
		<td colspan="2" class="mainHeader">
			<table width="100%" class="tableheader">	
				<tbody><tr>
					<td>
						<span class="tableheader" id="header"> Dashboard</span>
						<span class="tableheader" id="subheader"></span>
						<span class="tableheader" id="subheader2"></span>
					</td></tr></tbody></table>
	  </td>
	  <td width="50px" class="mainheader">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	  </tr>
	  <tr height="20">
		<td class="leftcolumn">&nbsp;</td>
		<td colspan="2" class="subheader">
			<table width="100%" style="border-top:1px solid #A8A761;border-bottom:1px solid #A8A761">	
				<tbody><tr>
					<td colspan="2" class="subheader">
					<span id="pagedesc">Please see below your permitted operations </span>
				</td></tr></tbody></table>
	  </td>
	  </tr>
	<tr>
		<td id="separator" valign="top" class="leftColumn" style="width: 1px; height: 817px;" rowspan="2">&nbsp;</td>
		<td width="100%" id="main" valign="top" colspan="2" align="center" style="height: 717px;">
		

<div style="margin-top:40;align:center">


<table align="center" style="width:500" border="0">
	<tbody><tr>
		<td>
		
			<i> 
	</i>
		
	</td>
</tr>
<tr>
	<td>
		
	</td>
</tr>
</tbody></table>

<table border="0" cellspacing="0" cellpadding="0" width="500" align="center" style="margin-top:20">
<tbody><tr>
	<td align="center">
		<table border="0" class="tableborderColorOnly" cellspacing="0" cellpadding="0" style="width:100%">
			<tbody><tr><td>
					<table class="tableCell" width="100%" border="0" cellspacing="0" cellpadding="5" align="center">
						<tbody><tr>
						<td height="20" colspan="2" align="left" class="whiteheader"><b>Permitted Operations</b></td>
						</tr>
					</tbody></table>
					
					
<%

Object obj = session.getAttribute( "database" );
String database = (String) obj;

obj = session.getAttribute( "dbUsername" );
String dbUsername = (String) obj;

obj = session.getAttribute( "dbPassword" );
String dbPassword = (String) obj;

String mathima = request.getParameter( "Mathima" );
int semester = Integer.parseInt( request.getParameter( "Semester" ) );
String am = request.getParameter( "AM" );
double grade = Double.parseDouble( request.getParameter( "Grade" ) );

ServiceInput si = new ServiceInput( database, dbUsername, dbPassword );
si.setMathima( mathima );
si.setSemester( semester );
si.setGrade( grade );
si.setAM( am );
String xmlInput = JavaObjectToXMLConversion.convert( si );


RESTPost.httpPost( "http://localhost:8080/grades/rest-api/insert/", xmlInput, "xml" );

obj = session.getAttribute( "roleID" );
int roleID = (Integer) obj;

if( roleID == 2 ){

	session.setAttribute( "roleID", roleID );
%>
	
	
	<ul>
		<li><a href="NewStudent.jsp">Insert new student</a></li>
		<li><a href="NewGrade.jsp">Insert new grade</a></li>
	  	<li><a href="Grades.jsp">Retrieve grades for the student(s)</a></li>
		<li><a href="index.html">Logout</a></li>
	</ul>

<% }

else if( roleID == 3 ){

	session.setAttribute( "roleID", roleID );
%>
	
	<ul>
		<li><a href="NewUser.jsp">Insert new user</a></li>
		<li><a href="NewStudent.jsp">Insert new student</a></li>
		<li><a href="NewGrade.jsp">Insert new grade</a></li>
	  	<li><a href="Grades.jsp">Retrieve grades for the student(s)</a></li>
		<li><a href="index.html">Logout</a></li>
	</ul>

<% }
%>

<tr height="50" valign="bottom"><td class="pageheader">
		
</td></tr></tbody></table>



<br><br><br>




</div>

</td>

</tr>

<tr><td colspan="2" align="right">
		<table id="footer" class="footer" align="right" border="0" cellpadding="0" cellspacing="0" style="width:100%;MARGIN-LEFT: 0px; MARGIN-TOP: 30px">
		<tbody><tr> <td colspan="3"><hr size="1" style="color:olive"></td>
		</tr>
		<tr><td width="50">&nbsp;</td><td>Powered by: <a title="Cardisoft AE" target="_blank" class="footer" href="http://www.cardisoft.gr/">Cardisoft SA</a></td>
		</tr>
		<tr><td height="30">&nbsp;</td><td>© 2003 Cardisoft SA. All rights reserved.</td>
		</tr>
		</tbody></table>
	</td>
	
		
	</tr>

</tbody></table>



<div style="clear: both;"></div></body></html>