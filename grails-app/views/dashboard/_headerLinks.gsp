<table width=100%" id="headertable">
	<tr style="float:left"><td>
		<div id="logo">
			<a href="${createLink(action:'index', controller:'dashboard')}"><img src="${resource(dir: 'images/dashboard/', file: 'logo1.png')}" alt="some_text" width="230px" height="90px"></a>
		</div>
	</td></tr>
	<tr><td>
	<div id="mainnav" class="headerClass">
        <ul>
            <li><a href="${createLink(action:'index', controller:'dashboard')}" id="index" >Home</a></li>
            <li><a href="${createLink(action:'product', controller:'dashboard')}" id="product" >Product</a></li>
            <li><a href="${createLink(action:'services', controller:'dashboard')}" id="services" >Services</a></li>
            <li><a href="${createLink(action:'contactus', controller:'dashboard')}" id="contactus" >Contact Us</a></li>
			<li><a href="${createLink(action:'addproduct', controller:'product')}" id="addproduct" >
				<sec:ifLoggedIn>Add Product</sec:ifLoggedIn>
				<sec:ifNotLoggedIn>Login</sec:ifNotLoggedIn>
			</a></li>
			<li><a href="${createLink(action:'aboutus', controller:'dashboard')}" id="aboutus" >About Us</a></li>
        </ul>
    </div>
	
	</td></tr>
	</table>