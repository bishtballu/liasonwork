<html>
    <head>
        <title>AddProduct</title>
        <meta name="layout" content="dashboardlayout" />
    </head>
    
    
    
    <body id="login" style="overflow-x: hidden;">

        
        
        <div id="wrap" style="padding-left: 14%;text-align: center; width:  74%" class="contact">

            <!-- Header -->
            <div id="main-body" class="box css" style="width: 100%;height: 134px;">
                <g:render template="../dashboard/headerLinks"></g:render>
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
                    <div class="step first-step alignCenter">
                    <sec:ifLoggedIn>
                    	<g:link url="[action:'addProductCategory',controller:'product']">Add Product Category</g:link>
                    </sec:ifLoggedIn>
                    	<g:form name="addProductForm" url="[action:'saveNewProduct',controller:'product']"  enctype="multipart/form-data">
                        <table class="tablecontact">
                            <tr>
                                <td colspan="3" id="contactheader" >
                                    ADD A NEW PRODUCT

                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 15px;"></td>
                            </tr>
                            <tr>
                                <td class="firsttablecol"></td>
                                <td class="tablecol">
                                    Name of the Product :
                                    
                                </td>
                                <td  class="tablecol">
                                    <input style="width: 250px;" type="text" name="productName" id="productName">                                    
                                </td>
                                
                            </tr>
                            <tr>
                                
                                <td colspan="3" style="height: 15px;"></td>
                            </tr>
                            <tr>
                                <td class="firsttablecol"></td>
                                <td class="tablecol">
                                     Category of Product :
                                    
                                </td>
                                <td  class="tablecol">
                                    <g:select id="categoryName" optionKey="id" optionValue="name" name="categoryName" from="${categoryList}" />
                                </td>
                                
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 15px;"></td>
                            </tr>
                            <tr>
                                <td class="firsttablecol"></td>
                                <td class="tablecol">
                                   Image For Product:
                                </td>
                                <td  class="tablecol">
                                    <input type="file" name="productImage" id="productImage" onchange="checkfile(this);"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 15px;"></td>
                            </tr>
                            <tr>
                                <td class="firsttablecol"></td>
                                <td class="tablecol">
                                  
                                    
                                </td>
                                <td  class="tablecol">
                                    <textarea id="productDesc" name="productDesc" rows="4" cols="45" placeholder="Product description"></textarea>
                                </td>
                                
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 15px;"></td>
                            </tr>
                            <tr>
                                <td class="firsttablecol"></td>
                                <td class="tablecol">
                                    Enter Table Detail :
                                </td>
                                <td  class="tablecol">
                            <lable>Rows : </lable><input onblur="valiationFun();" id="rowtable" style="width: 25px;" type="text" name="row">&nbsp;&nbsp;&nbsp;
                            <lable>Cols : </lable><input onblur="valiationFun();" id="coltable" style="width: 25px;" type="text" name="column">&nbsp;&nbsp;&nbsp;
                            <button id="creattablebutton" type="button" onclick="createTable();">Create Table</button><label style="color: red;" id="validation"></label>
                                    
                                </td>
                                
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 15px;"></td>
                            </tr>
                            <tr style="text-align: center;">
                                <td style="width: 100px;"></td>
                                <td colspan="2"  id="dynamictable"></td>
                                
                            </tr>
                           
                            <tr>
                                <td colspan="3" style="height: 15px;"></td>
                            </tr>
                           <tr>
                               <td class="firsttablecol"></td>
                                <td class="tablecol">
                                   
                                    
                                </td>
                                <td  class="tablecol">
                                    <button type="button" onclick="addProduct();">Add Product</button>
                                </td>
                               
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 15px;"></td>
                            </tr>
                        </table>
                        </g:form>
                    </div>



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
        
 


<script>
           var global = 0;
            function valiationFun()
            {
                if (isNaN($('#rowtable').val()) || isNaN($('#coltable').val())){
                    document.getElementById("validation").innerHTML = "&nbsp;&nbsp;invalid";
                    document.getElementById("creattablebutton").disabled = true;
                }
                else{
                    document.getElementById("validation").innerHTML = "";
                    document.getElementById("creattablebutton").disabled = false;
                }
                
                return;
            }
            
            function createTable()
            {
                if(global>0){
                   return; 
                }
                var row = document.getElementById("rowtable").value;
                var col = document.getElementById("coltable").value;
                
                if(isNaN(row) || isNaN(col) || row=="" || col == "")
                    return;
                
                $('#dynamictable').append('<table border=\"1\"></table><br>');
                
                var table  = $('#dynamictable').children();    
                for(var i = 0; i< row;i++)
                {
                    if(i==0){
                        var p = "<tr >";
                        for(var k=0;k<col;k++){
                                p = p+"<td >"+"<input name=\"R"+i+"C"+k+"\" id=\"R"+i+"C"+k+"\" style=\"color:red; background-color:yellow;\" type=\"text\"/></td>";
                        }
                        p = p+"</tr>";
                        table.append(p);
                    }
                    if(i<row-1)
                    {
	                    var result = "<tr>";
	                    for(var j = 0; j< col;j++){
	                        result = result + "<td >"+"<input name=\"R"+(i+1)+"C"+j+"\" id=\"R"+(i+1)+"C"+j+"\" type=\"text\"/>"+"</td>";
	                    }
	                    result = result + "</tr>"; 
	                    table.append(result);
	                    document.getElementById("creattablebutton").disabled = true;
	                    global++;
                    }
                }
            }

            function addProduct()
            {
                var validateFormMessage=validateProductForm();
                if(validateFormMessage=="")
                	$("#addProductForm").submit();
                else if(validateFormMessage=="productName")
                    alert("please enter name of the product");
                else alert("Please provide some product description");
            }

            function validateProductForm()
            {
                if($("#productName").val()=="")	return "productName";
                else if($("#productDesc").val()=="") return "productDesc";
                else return "";
            }

            function checkfile(sender) {
                var validExts = new Array(".png", ".jpg");
                var fileExt = sender.value;
                fileExt = fileExt.substring(fileExt.lastIndexOf('.'));
                if (validExts.indexOf(fileExt) < 0) {
                  alert("Invalid file selected, valid files are of " +
                           validExts.toString() + " types.");
                  return false;
                }
                else return true;
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
        background-image: url(images/ha-down.gif);
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
        background-image: url(images/ha-up.gif);
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
    .tablecol{
        width: 50%;
        text-align: left;
    }
    .firsttablecol{
        width: 10%;
        text-align: left;
    }

</style>
        
    </body>

</html>
