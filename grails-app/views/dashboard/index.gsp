<!doctype html>
<html>
<head>

<meta name="google-site-verification" content="H5cgO-SzLUvIUAud0-ocJtPtMPj5hv99VJ-RXUGddOE" />
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
     <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"  width="900" height="350" id="tech" align="middle" quality="high" allowFullScreen="true" wmode="transparent" allowScriptAccess="always">
    <param name="movie" value="static/myalbum.swf?xml_path=static/slides.xml" />
    <param name="quality" value="high" />
    <param name="allowFullScreen" value="true" />
    <param name="wmode" value="transparent" />
    <param name="allowScriptAccess" value="always" />
    <embed src="static/myalbum.swf?xml_path=static/slides.xml" width="900" height="350" quality="high" allowFullScreen="true" wmode="transparent" allowScriptAccess="always" name="tech" align="middle" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
  </object>
        
    </article>
    <aside id="sidebar">
      
    </aside>
    <footer>
        <p>© 2014 company</p>
    </footer>
</div>
</body>
</html>