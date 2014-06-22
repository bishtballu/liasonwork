<table width=100%" id="headertable">
	<tr style="float:left"><td><div id="logo"><img src="${resource(dir: 'images/dashboard/', file: 'logo.png')}" alt="some_text" width="200px" height="90px"></div></td></tr>
	<tr><td>
	<div id="mainnav" class="headerClass">
        <ul>
            <li><a href="${createLink(action:'index', controller:'dashboard')}" id="index" >Home</a></li>
            <li><a href="${createLink(action:'product', controller:'dashboard')}" id="product" >Product</a></li>
            <li><a href="${createLink(action:'contactus', controller:'dashboard')}" id="contactus" >Contact Us</a></li>
			<li><a href="${createLink(action:'addproduct', controller:'product')}" id="addproduct" >
				<sec:ifLoggedIn>Add Product</sec:ifLoggedIn>
				<sec:ifNotLoggedIn>Login</sec:ifNotLoggedIn>
			</a></li>
			<li><a href="${createLink(action:'services', controller:'dashboard')}" id="services" >Services</a></li>
        </ul>
    </div>
	
	</td></tr>
	</table>