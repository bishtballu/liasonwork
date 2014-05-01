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
          <h2><b>Welcome Back!</b></h2>
          
          	<g:if test='${flash.message}'>
				<div class='login_message'>${flash.message}</div>
			</g:if>
        </div>
        <br><br>

        <div class="title second-step extra hidden">
          <h2></h2>
          
        </div>

			<form action='${postUrl}' method='POST' id='loginForm' class='cssform fancy-label' autocomplete='off'>
            <div class="step first-step">
                  <p class="text">
                      <span>
                          <input type='text' class='text_' name='j_username' id='username' placeholder="username"/>
                      </span>
                  </p>
                  <br>
                  <p class="text">
                      <span>
                          <input type='password' class='text_' name='j_password' id='password' placeholder="password"/>
                      </span>
                  </p>
                  <br>
                  	<p id="remember_me_holder">
					<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
					<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
			</p>
            </div>
            
            <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
			<br>
          </form>
<br><br>

      </div></div>
      <!-- FOOTER -->
      <br><br>
      <div id="footer" class="box css">
          
            <a href="#">Don't have an account? <span>Sign up</span></a>
            <br><br>
             <g:render template="../dashboard/footerlinks"></g:render>

    </div>
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

  </body>

</html>