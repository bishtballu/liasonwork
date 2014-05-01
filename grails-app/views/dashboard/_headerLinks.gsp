<table width=100%" id="headertable">
	<tr style="float:left"><td><div id="logo"><img src="${resource(dir: 'images/dashboard/', file: 'logo.png')}" alt="some_text" width="200px" height="90px"></div></td></tr>
	<tr><td>
	<nav id="mainnav">
        <ul>
            <li><a href="${createLink(action:'index', controller:'dashboard')}">Home</a></li>
            <li><a href="${createLink(action:'product', controller:'dashboard')}" class="thispage">Product</a></li>
            <li><a href="${createLink(action:'contactus', controller:'dashboard')}">Contact Us</a></li>
            <sec:ifLoggedIn>
				<li><a href="${createLink(action:'addproduct', controller:'product')}">Add Product</a></li>
			</sec:ifLoggedIn>
			<sec:ifNotLoggedIn>
				<li><a href="${createLink(action:'auth', controller:'login')}">Login</a></li>
			</sec:ifNotLoggedIn>
        </ul>
    </nav>
	
	</td></tr>
	</table>