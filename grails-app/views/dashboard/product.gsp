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
            <div id="logoutLink">
	            	<sec:ifLoggedIn>
						Logged in as <sec:username/> (<g:link controller='logout'>Logout</g:link>)
					</sec:ifLoggedIn>
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
                                    <td style="vertical-align: top;padding-top: 10px;">

                                        <div id="content">
                                            <ul id="supermenu">
                                            	<g:each in="${categoryList}" var="category" status="count">
                                                	<li><a href="#">${category.name}</a>
                                                    	<ul>
                                                    		<g:each in="${parentProductList[count]}" var="product">
                                                        		<li><a href="javascript:showProductData('${product.id}')"><font size="2" color="blue">${product.name}</font></a></li>
                                                        	</g:each>
                                                    	</ul>
                                                	</li>
                                                </g:each>
                                            </ul>

                                        </div>

                                    </td>
                                    	<td style="width: 10px;vertical-align: top;"></td>
                                    	
                                    	<td id="productData" style="padding: 0 0 0 0px; "></td>
                                    	
                                    	<td style="width: 10px;"></td>
                                    	
										<td id="productImageTemp" style="padding-top: 10px; vertical-align: top;"></td>
                                </tr>
                                

                            </table>
                            <div id="loading" class="none" style="display: none;">
				      			<span class="spinnerPos"></span>
				      		</div>
                        </div>

                    </form>

                </div></div>
            <!-- FOOTER -->

            <div id="footer_spacer"></div>

            <g:render template="footerlinks"></g:render>
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
        showProductData("${parentProductList[0][0].id}");
    });

	function showProductData(productId)
	{
		var productDataUrl="${createLink(controller:'dashboard', action:'showSingleProduct')}";
		$.post( productDataUrl , { productId: productId })
		  .done(function( data ) {
		   		$("#productData").html(data);
		});

		var productImageUrl="${createLink(controller:'dashboard', action:'productImageTemplate')}";
		$.post( productImageUrl , { productId: productId })
		  .done(function( data ) {
		   		$("#productImageTemp").html(data);
		});
	}

	function bindAjaxCall()
	{
		 $("#loadingAjax").bind("ajaxSend", function() {
		        $(this).fadeIn();
		    }).bind("ajaxComplete", function() {
		        $(this).fadeOut();
		    });
	}
    
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
