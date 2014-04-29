<!DOCTYPE html>
<html>
    <head>
        <title>Product Detail</title>

       <meta name="layout" content="dashboardlayout" /> 
    </head>
    <body id="login" style="overflow-x: hidden;">

        <div id="wrap" style="padding-left: 14%;text-align: center; width:  74%" class="contact">

            <!-- Header -->
            <div id="main-body" class="box css" style="width: 100%;height: 134px;">
                <g:render template="headerLinks"></g:render>
            </div>
            <div style="height: 10px;">
                
            </div>
            <!-- LOGIN BOX -->
            <div id="main-body" class="css" ><div class="inner">



                    <form class="" action="#" method="post" style="padding-top: 14px;">
                        <div class="step first-step alignCenter">
                            <table class="tablecontact">
                                <tr>
                                    <td colspan="5" id="contactheader" >
                                        Product List

                                    </td>
                                </tr>
                                <tr>
                                    <td >

                                        <div id="content">
                                            <ul id="supermenu">
                                                <li><a href="#">Item 1</a></li>
                                                <li><a href="#">Item 2</a>
                                                    <ul>
                                                        <li><a href="index.jsp?id=param1">Subitem 2a</a></li>
                                                        <li><a href="index.jsp?id=param2">Subitem 2b</a></li>
                                                        <li><a href="index.jsp?id=param3">Subitem 2c</a></li>
                                                        <li><a href="index.jsp?id=param4">Subitem 2d</a></li>
                                                        <li><a href="index.jsp?id=param5">Subitem 2e</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Item 3</a></li>
                                                <li><a href="#">Item 4</a></li>
                                                <li><a href="#">Item 5</a>
                                                    <ul>
                                                        <li><a href="index.jsp?id=5a#ex1">Subitem 5a</a></li>
                                                        <li><a href="index.jsp?id=5b#ex1">Subitem 5b</a></li>
                                                        <li><a href="index.jsp?id=5c#ex1">Subitem 5c</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Item 6</a></li>
                                                <li><a href="#">Item 7</a>
                                                    <ul>
                                                        <li><a href="index.jsp?id=7a#ex1">Subitem 7a</a></li>
                                                        <li><a href="index.jsp?id=7b#ex1">Subitem 7b</a></li>
                                                        <li><a href="index.jsp?id=7c#ex1">Subitem 7c</a></li>
                                                        <li><a href="index.jsp?id=7d#ex1">Subitem 7d</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Item 8</a>
                                                    <ul>
                                                        <li><a href="index.jsp?id=8a#ex1">Subitem 8a</a></li>
                                                        <li><a href="index.jsp?id=8b#ex1">Subitem 8b</a></li>
                                                        <li><a href="index.jsp?id=8c#ex1">Subitem 8c</a></li>
                                                        <li><a href="index.jsp?id=8d#ex1">Subitem 8d</a></li>
                                                        <li><a href="index.jsp?id=8e#ex1">Subitem 8e</a></li>
                                                        <li><a href="index.jsp?id=8f#ex1">Subitem 8f</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Item 9</a>
                                                    <ul>
                                                        <li><a href="index.jsp?id=9a#ex1">Subitem 9a</a></li>
                                                        <li><a href="index.jsp?id=9b#ex1">Subitem 9b</a></li>
                                                        <li><a href="index.jsp?id=9c#ex1">Subitem 9c</a></li>
                                                        <li><a href="index.jsp?id=9d#ex1">Subitem 9d</a></li>
                                                        <li><a href="index.jsp?id=9e#ex1">Subitem 9e</a></li>
                                                    </ul>
                                                </li>
                                            </ul>

                                        </div>




                                    </td>
                                    <td style="width: 10px;"></td>
                                    <g:render template="productdetail"></g:render>
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
                    <p>Stripe requires your browser to have Javascript enabled. <a href="http://enable-javascript.com" target="_blank" class="arrow">Learn more</a></p>
                </div>
                <div class="footer">
                    <p>&copy; Stripe</p>
                </div>
            </div>
        </div>
        </noscript>
<script type="text/javascript">
    $(document).ready(function() {
        // Setup HoverAccordion for Example 1
        $('#supermenu').hoverAccordion();
    });
</script>
<style media="screen" type="text/css">
    /* Styles for Example #1 */
    #headerdiv{
        height: 200px;
    }
    #supermenu {
        margin: 0;
        padding: 0;
        width: 200px;
        list-style-type: none;
        line-height: 120%;
    }

    #supermenu .closed {
        background-image: url(${resource(dir: 'images/dashboard/', file: 'ha-down.gif')});
    }

    #supermenu .closed, #supermenu .opened {
        padding-right: 10px;
        background-position: 98% 50%;
        background-repeat: no-repeat;
    }

    #supermenu .header {
        background-color: #7B7B7B;
    }

    #supermenu .opened {
        background-image: url(${resource(dir: 'images/dashboard/', file: 'ha-up.gif')});
    }

    #supermenu a {
        display: block;
        font-weight: bold;
        text-decoration: none;
    }

    #supermenu a.hover {
        border-top: 1px solid #5F5F5F;
        border-bottom: 1px solid #7B7B7B;
        background-color: #7B7B7B;
        color: #FFFFFF;
    }

    #supermenu ul {

        margin: 0;
        padding: 0;
        overflow: hidden;
    }

    #supermenu li {
        margin: 0;
        padding: 0;
        list-style-type: none;
        background-color: #848484;
        color: #FFFFFF;
    }

    #supermenu li a {
        padding: 2px 10px 2px 4px;
        border-top: 1px solid #9A9A9A;
        border-left: 1px solid #9A9A9A;
        border-right: 1px solid #696969;
        border-bottom: 1px solid #757575;
        background-color: #848484;
        color: #FFFFFF;
    }

    #supermenu li.active a, #supermenu li li.active a {
        border-top: 1px solid #5F5F5F;
        border-bottom: 1px solid #7B7B7B;
        border-left: 1px solid #757575;
        border-right: 1px solid #9A9A9A;
        background-color: #404040;
        color: #FFFFFF;
    }

    #supermenu li.active li a, #supermenu li li a {
        padding: 2px 4px 2px 8px;
        border-top: 1px solid #696969;
        border-left: 1px solid #696969;
        border-right: 1px solid #8A8A8A;
        border-bottom: 1px solid #7B7B7B;
        background-color: #757575;
        color: #FFFFFF;
    }
    .productTD{
        border: 1px solid black;
    }

</style>
        
    </body>

</html>
