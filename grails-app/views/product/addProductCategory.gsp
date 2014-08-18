<!DOCTYPE html>
<html>
  <head>
    <title>Login</title>

  <meta name="layout" content="dashboardlayout" />
  </head>
  <body id="login">

    <div id="login-background"><div class="inner"></div></div>

    <div id="wrap" style="padding-left: 14%;text-align: center; width:  74%" >

    <!-- Header -->
             <div id="main-body" class="box css" style="width: 100%;height: 134px;">
                <g:render template="../dashboard/headerLinks"></g:render>
            </div>
            <div style="height: 10px;"></div>
            
            
            
            <!--header-->

      <!-- LOGIN BOX -->
      <div id="main-body" class="box css inner" style="width: 1000px;padding-top: 30px;padding-bottom: 30px;">
      <div id="main-body" class="box css"><div class="inner">

        <div class="title first-step">
          <h2><b>Add New Category For Product</b></h2>
        </div>
        <br><br>
        <g:form method="post" class='cssform fancy-label' placeholder="category name" name="addCategory" url="[action:'addCategory',controller:'product']">
        	<g:textField  class='text_' name="categoryName"/>
        	<br><br>
        	<g:submitButton name="submit" onclick="if(!checkCategoryName())return false;"/>
        	<br><br>
        </g:form>

      </div></div>
      <!-- FOOTER -->
      <br><br>            
      	<g:render template="../dashboard/footerlinks"></g:render>

    <br><br>
      </div>
      <!-- footer analytics go here -->
  

  
    <noscript>
                <div class="no-js-view">
                        <div class="position">
                                <div class="icon"></div>
                                <div class="well">
                                        <h1>No love for Javascript?</h1>
                                        <p>Stripe requires your browser to have Javascript enabled. <a href="http://enable-javascript.com" target="_blank" class="arrow">Learn more</a></p>
                                </div>
                                <div class="footer">
                                        <p>&copy; Stripe</p>
                                </div>
                        </div>
                </div>
        </noscript>

<script>
	function checkCategoryName()
	{
		var categoryName=$("#categoryName").val();
		if(categoryName=="")
		{
			alert("Please Enter a name for the New Category");
			return false;
		}
		else
			return true;
	}
</script>

  </body>

</html>