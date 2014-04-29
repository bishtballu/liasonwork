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
                <g:render template="headerLinks"></g:render>
            </div>
            <div style="height: 10px;"></div>
            
            
            
            <!--header-->

      <!-- LOGIN BOX -->
      <div id="main-body" class="box css inner" style="width: 1000px;padding-top: 30px;padding-bottom: 30px;">
      <div id="main-body" class="box css"><div class="inner">

        <div class="title first-step">
          <h2><b>Welcome Back!</b></h2>
        </div>

        <div class="title second-step extra hidden">
          <h2></h2>
          
        </div>

          <form class="fancy-label" action="#" method="post">
            <div class="step first-step">
                  <p class="text">
                      <span>
                          <input type="email" value="" name="email" id="email" placeholder="Email" />
                      </span>
                  </p>
                  <p class="text">
                      <span>
                          <input type="password" value="" name="password" id="password" placeholder="Password" />
                      </span>
                  </p>
            </div>

            <input type="hidden" name="redirect" value="" />
            <input type="hidden" name="invite_code" value="" />
            <input type="hidden" name="account_invite" value="" />

            <p class="submit">
              <button class="button blue" type="submit"><span>Sign in to your account</span></button>
            </p>

            <p class="remember">
                <label><input type="checkbox" name="remember" value="true" checked="checked" /> Remember me</label>
            </p>

            
  
        <input type="hidden" name="io_blackbox" id="io_blackbox"/>

          </form>

      </div></div>
      <!-- FOOTER -->
      <div id="footer" class="box css">
          
            <a href="../web/register.html">Don't have an account? <span>Sign up</span></a>
          
      </div><!-- END FOOTER -->
      <div id="footer_spacer"></div>

        <div id="bottom">
          <ul>
              <li class="first"><a href="#">Forgot your password?</a></li>
              <li><a href="#">Privacy Policy</a></li>
              <li><a href="#">Contact</a></li>
              <li class="last"><a href="#">&copy; Liason Work</a></li>
          </ul>
      </div>
    </div>
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
\