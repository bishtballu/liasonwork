<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <script>
            function createAccount() {
                alert("HELLO");
                return;
            }
        </script>
    <meta name="layout" content="dashboardlayout" />
    </head>

    <body id="login" class="register-page">

        
        <div id="wrap" style="padding-left: 14%;text-align: center; width:  74%" >

            <!-- Header -->
             <div id="main-body" class="box css" style="width: 100%;height: 134px;">
                <table width=100%" id="headertable">
                    <tr style="float:left"><td><div id="logo"><img src="${resource(dir: 'images/dashboard/', file: 'logo.png')}" alt="some_text"  height="90px"></div></td></tr>
                    <tr><td>
                            <nav id="mainnav">
                                <ul>
                                    <li><a href="#">Menu1</a></li>
                                    <li><a href="sightseeing.html" class="thispage">Menu2</a></li>
                                    <li><a href="#">Menu3</a></li>
                                    <li><a href="#">Menu4</a></li>
                                    <li><a href="#">Menu5</a></li>
                                </ul>
                            </nav>

                        </td></tr>
                </table>
            </div>
            <div style="height: 10px;"></div>
            
            
            
            <!--header-->
            
            <div id="main-body" class="box css inner" style="width: 1000px;padding-top: 30px;padding-bottom: 30px;">
            <div id="main-body" class="box css"><div class="inner">

                    <div class="title extra more">


                        <h2><b>Create your account.</b></h2>

                    </div>

                    <form method="POST" action="#">
                        <p class="text password-strength weakest">
                            <span>
                                <input type="text" value="" name="fullname" id="fullname" placeholder="Full Name" />

                            </span>
                        </p>

                        <p class="text">
                            <span>
                                <input type="email" value="" name="email" id="email" placeholder="Email" />
                            </span>
                        </p>
                        <p class="text password-strength weakest">
                            <span>
                                <input type="text" value="" name="address" id="address" placeholder="Company Address"  />

                            </span>
                        </p>
                        <p class="text password-strength weakest">
                            <span>
                                <input type="text" name="phonenumber" id="phone" placeholder="Phone Number"/>

                            </span>
                        </p>
                        <p class="text password-strength weakest">
                            <span>
                                <select class="selectBox">
                                    <option value="admin1">--Account Type--</option>
                                    <option value="admin1">Admin type One</option>
                                    <option value="admin2">Admin type Two</option>
                                    <option value="admin3">Admin Type Three</option>
                                </select>

                            </span>
                        </p>
                        <p class="text password-strength weakest">
                            <span>
                                <input type="password" value="" name="password" id="password" placeholder="Password" class="password-strength-input" />

                            </span>
                        </p>
                        <p class="text">
                            <span>

                                <input type="password" value="" name="confirm_password" id="confirm_password" placeholder="Confirm password" />
                            </span>
                        </p>


                        <div>
                            <p class="submit">
                                <button type="submit"  class="button blue medium"><span>Create your account</span></button>
                            </p>
                            <p class="remember" style="display:none">
                                <label><input type="checkbox" name="remember" checked="checked" /> Remember me</label>
                            </p>
                        </div>



                        <input type="hidden" name="io_blackbox" id="io_blackbox"/>

                    </form>

                </div></div> <!-- END CONTENT -->
        </div>
            <div class="below-box">
                <p>
                    Already have an account?

                    <a href="../web/signInPage.html">Sign in</a>.

                </p>
            </div>

            <div id="footer_spacer"></div>
            <div id="bottom">
                <ul>
                    <li class="first"><a href="#">Forgot your password?</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Contact</a></li>
                    <li class="last"><a href="/">&copy; Liasion Work</a></li>
                </ul>
            </div>
        </div>
        <!-- footer analytics go here -->


    </body>
</html>
