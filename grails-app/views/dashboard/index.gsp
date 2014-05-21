<!doctype html>
<html>
<head>


<meta charset="utf-8">
<title>New Website</title>
<link href="${resource(dir: 'css/dashboard/', file: 'main.css')}" rel="stylesheet" type="text/css">
<!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.-->
<script>var __adobewebfontsappname__="dreamweaver"</script>
<script src="http://use.edgefonts.net/source-sans-pro:n6:default.js" type="text/javascript"></script>
<meta name="layout" content="dashboardlayout" />
</head>

<body >
 
 <div id="wrapper">
    <div id="top">
		<g:render template="headerLinks"></g:render>
    </div>
    <div id="logoutLink">
	            	<sec:ifLoggedIn>
						Logged in as <sec:username/> (<g:link controller='logout'>Logout</g:link>)
					</sec:ifLoggedIn>
				</div>
    <article id="main" >
     <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="900" height="350" align="middle">
     <param name="movie" value="static/My_Gallery123.swf"/>
	 <param name="play" value="true">
     <param name="quality" value="high"/>
     <param name="wmode" value="transparent"/>
     <param name="bgcolor" value="0"/>
     <param name="allowScriptAccess" value="always"/>
     <param name="allowFullScreen" value="false"/>
	 <param name="swfversion" value="9.0.45.0"/>
	 
  <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don¡¯t want users to see the prompt. -->
  <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->   
  <!--[if !IE]>-->
  <object type="application/x-shockwave-flash" data="static/My_Gallery123.swf" width="900" height="350" align="middle">
	<!--<![endif]-->
	  <param name="movie" value="static/My_Gallery123.swf"/>
	  <param name="play" value="true">
	  <param name="quality" value="high"/>
	  <param name="wmode" value="transparent"/>
	  <param name="bgcolor" value="0"/>
	  <param name="allowScriptAccess" value="always"/>
	  <param name="allowFullScreen" value="false"/>
	  <param name="swfversion" value="9.0.45.0"/>
	  
	<!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
	<div>
	  <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
	  <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
	</div>
	<!--[if !IE]>-->
  </object>
  <!--<![endif]-->
</object>
        
    </article>
    <aside id="sidebar">
      
    </aside>
    <footer>
        <p>© 2013 company</p>
    </footer>
</div>
</body>
</html>