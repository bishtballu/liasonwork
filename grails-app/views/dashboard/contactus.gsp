<!DOCTYPE html>
<html>
    <head>
        <title>Contact Us</title>
<meta name="layout" content="dashboardlayout" />
    </head>
    <body id="login" style="overflow-x: hidden;">

        <div id="wrap" style="padding-left: 14%;text-align: center; width:  74%" class="contact">

            <!-- Header -->
             <div id="main-body" class="box css" style="width: 100%;height: 134px;">
               <g:render template="headerLinks"></g:render>
            </div>
            <div id="logoutLink">
	            	<sec:ifLoggedIn>
						Logged in as <sec:username/> (<g:link controller='logout'>Logout</g:link>)
					</sec:ifLoggedIn>
				</div>
            <div style="height: 10px;"></div>
            
            
            
            <!--header-->

            <!-- LOGIN BOX -->
            <div id="main-body" class="css" ><div class="inner">



                    <form class="" action="#" method="post">
                        <div class="step first-step alignCenter">
                            <table class="tablecontact">
                                <tr >
                                    <td  style="text-align: center;padding-top: 10px;">
                                        <img alt="some text" src="${resource(dir: 'images/dashboard/', file: 'toplogo.jpg')}" /><br><br><br>
                                    </td>
                                </tr>
                                <tr>
                                    <td  id="contactheader" >
                                        Contact Us

                                    </td>
                                </tr>
                                <tr>
                                    <td class="addresstagg">
                                        <br>
                                        <br>
                                        Drawining Service Corporation & Liasion Work,<br>
                                        118/1, Gali Number - 2nd <br>
                                        2nd Floor, Govind Puri, Kalkaji, <br>
                                        Delhi -11009.<br>
                                        Email - <a href="mailto:info@drawingservice.in" target="_blank">info@drawingservice.in</a><br>
                                        Phone - +91-8860-217-730

                                    </td> 
                                </tr>
                                <tr>
                                    <td class="socialnetwork">
                                        <p>
                                            <a href="#" title="facebook" target="_blank"></a>
                                            <a href="#" title="follow" target="_blank"></a>
                                            <a href="#" title="youtube" target="_blank"></a>
                                            <a href="#" title="LinkedIn" target="_blank"></a>
                                            <a href="#" title="google+" target="_blank"></a>
                                        </p>

                                    </td>
                                </tr>
                                <tr>
                                    <td >
                                        <br><br><br>

                                    </td>
                                </tr>
                                <tr>
                                    <td id="contactheader" >
                                        Still Have Query? Write To us

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br>

                                    </td>
                                </tr>
                                <tr style="padding-top: 10px;">

                                    
                                    <td class="tablecolumn" style="width: 80%;padding-left: 30%;padding-right: 30%;">
                                        <p class="text" >
                                            <span>
                                                <input class="contacttab" style="padding-left: 10%; background-image: url(${resource(dir: 'images/dashboard/', file: 'name.png')});" type="text" value="" name="name" id="name" placeholder="Name" />
                                            </span>
                                        </p>
                                        <br>
                                        <p class="text" >
                                            <span>
                                                <input class="contacttab" style="padding-left: 10%; background-image: url(${resource(dir: 'images/dashboard/', file: 'phone.png')});" type="text" value="" name="mobile" id="companyname" placeholder="Mobile Number" />
                                            </span>
                                        </p>
                                        <br>
                                        <p class="text" >
                                            <span>
                                                <input class="contacttab" style="padding-left: 10%; background-image: url(${resource(dir: 'images/dashboard/', file: 'email.png')});" type="text" value="" name="email" id="companyname" placeholder="Email" />
                                            </span>
                                        </p>
                                        <br>
                                        <p class="text" >
                                            <span>
                                                <input class="contacttab" style="padding-left: 10%; background-image: url(${resource(dir: 'images/dashboard/', file: 'website.png')});" type="text" value="" name="website" id="website" placeholder="Website" />
                                            </span>
                                        </p>
                                        <br>
                                        <p class="text" >
                                            <span>
                                                <textarea name="textarea" class="contacttab" style="width: 88%;padding-left: 10%; background-image: url(${resource(dir: 'images/dashboard/', file: 'comments.png')});" id="comments" cols="4" rows="8" placeholder="Comments" ></textarea>
                                            </span>
                                        </p>
                                        <p class="submit" style="text-align: center;">
                                            <button type="submit"  class="button blue medium"><span>Submit</span></button>
                                        </p>

                                    </td>
                                    
                                </tr>
                                <tr >
                                    <td  style="vertical-align: top;text-align:center;">
                                      <!--  <iframe width="930" height="500" frameborder="1" scrolling="no" style="position: inherit;margin-left: 10px;border: 1px solid #000;" src="https://www.google.co.in/maps?t=m&amp;q=Drawing+Service+Corporation+%26+Liasion+Work&amp;cid=0x6ee9fd4fff2a84c0&amp;ie=UTF8&amp;ll=28.53356,77.262039&amp;spn=0,0&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="https://www.google.co.in/maps?t=m&amp;q=Drawing+Service+Corporation+%26+Liasion+Work&amp;cid=0x6ee9fd4fff2a84c0&amp;ie=UTF8&amp;ll=28.53356,77.262039&amp;spn=0,0&amp;iwloc=A&amp;source=embed" style="color:#0000FF;text-align:left">View Us On Larger Map</a></small> -->
										<iframe width="930" height="500" frameborder="1" scrolling="no" style="position: inherit;margin-left: 10px;border: 1px solid #000;" marginheight="0" marginwidth="0" src="https://www.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=drawing+service+corporation+and+liasion+work&amp;aq=&amp;sll=27.141237,80.883382&amp;sspn=5.356304,9.459229&amp;ie=UTF8&amp;hq=drawing+service+corporation+and+liasion+work&amp;hnear=&amp;ll=28.531599,77.262318&amp;spn=0.082619,0.1478&amp;t=m&amp;z=13&amp;iwloc=A&amp;cid=7992197533770876096&amp;output=embed"></iframe><br /><small><a href="https://www.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=drawing+service+corporation+and+liasion+work&amp;aq=&amp;sll=27.141237,80.883382&amp;sspn=5.356304,9.459229&amp;ie=UTF8&amp;hq=drawing+service+corporation+and+liasion+work&amp;hnear=&amp;ll=28.531599,77.262318&amp;spn=0.082619,0.1478&amp;t=m&amp;z=13&amp;iwloc=A&amp;cid=7992197533770876096" style="color:#0000FF;text-align:left">View Larger Map</a></small>
                                    </td>
                                </tr>

                            </table>
                        </div>

                    </form>

                </div></div>
            <!-- FOOTER -->

            <div id="footer_spacer"></div>

            <div id="bottom">
                <ul>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Contact</a></li>
                    <li class="last"><a href="#">&copy; Liason Work</a></li>
                </ul>
            </div>
        </div>
        <!-- footer analytics go here -->

        <noscript>
        <div class="no-js-view">
            <div class="position">
                <div class="icon"></div>
                <div class="well">
                    <h1>No love for Javascript?</h1>
                    <p>We require your browser to have Javascript enabled. <a href="http://enable-javascript.com" target="_blank" class="arrow">Learn more</a></p>
                </div>
                <div class="footer">
                    <p>&copy; Liasion Work</p>
                </div>
            </div>
        </div>
        </noscript>

    </body>

</html>
