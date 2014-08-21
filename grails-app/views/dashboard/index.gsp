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

<body id="login" style="overflow-x: hidden;">
 
  <div id="wrap" style="padding-left: 14%;text-align: center; width:  74%" class="contact">
    <div id="main-body" class="box css" style="width: 100%;height: 134px;">
		<g:render template="headerLinks"></g:render>
    </div>
    <div id="logoutLink">
	            	<sec:ifLoggedIn>
						Logged in as <sec:username/> (<g:link controller='logout'>Logout</g:link>)
					</sec:ifLoggedIn>
				</div>
    <article id="main" style="float:left;">
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
        
    </footer>
    
    
    
    
    <marquee id="mar" behavior="scroll" scrolldelay="1" scrollamount="7" onmouseover="this.stop()" onmouseout="this.start()" bgcolor="#800000" style="border: 1px solid;padding-top:0px;vertical-align: middle;height:132px;">
        <strong>
			<span>
				<input type="image" onclick="return validate()" value="submit" src="images/indexPageMarque/extruderDashboard.jpg">
			</span>
			
			<span>
				<input type="image" onclick="return validate()" value="submit" src="images/indexPageMarque/forgingDashboard.jpg">
			</span>
			
			<span>
				<input type="image" onclick="return validate()" value="submit" src="images/indexPageMarque/latheHomepage.jpg">
			</span>
			
			<span>
				<input type="image" onclick="return validate()" value="submit" src="images/indexPageMarque/moldingDashboard.jpg">
			</span>
			
			<span>
				<input type="image" onclick="return validate()" value="submit" src="images/indexPageMarque/plannerHomepage.jpg">
			</span>
			
			<span>
				<input type="image" onclick="return validate()" value="submit" src="images/indexPageMarque/pressHomepage.jpg">
			</span>
			
			<span>
				<input type="image" onclick="return validate()" value="submit" src="images/indexPageMarque/surfaceGrinderHompage.jpg">
			</span>
			
			</div>
			
		</span>
		</strong>
		
    </marquee>
	<div style="width:100%;">
	<table style="border:solid;width:100%;">
	
	<td style="border: 1px solid;">
		<div style="font-family: Arial, Helvetica, sans-serif;font-size: 18px;color: #FFFFFF;height: 30;background-repeat: no-repeat;background-color: #730f0d;">About Drawing Service Corporation</div>
		<div style="text-align:justify;font-size: 12px;font-family: Helvetica;padding:10px;">
			Formed in the year of 2014, Drawing service has continuously played a leading role in the development
			of the machine tool industry, which is the backbone for industrial growth of India. This national cause has been the 
			guiding force behind Drawing Service and its membership.
			Drawing Service Corporation is deeply committed to support its membership to increase competitiveness, enhance efficiency,
			improve productivity, and ensure growth and prosperity. It does so with the aim to assist the membership to become cost
			effective, technology driven, and ever responsive to customers changing needs. At the same time, Drawing Service has supported
			the user industries with better and more modern technology of machine tools to provide them with competitive manufacturing
			solutions.
            Drawing Service is today recognized as the sole voice of the Indian machine tool industry – it is the face of the industry to
			the government, to its members, suppliers and users. Its membership of around 475 constitutes a major part of this
			strategic sector in the country.
		</div>
		
	</td>
	
	</table>
	</div>
	
	
    <div id="footer_spacer"></div>

            <g:render template="footerlinks"></g:render>
        </div>
    
</div>
</body>
</html>