
<div id="machineheading" style="top: 0; height:5%; font-family: verdana, arial, sans-serif;font-size: 17px;font-weight: bold;">${product.category.name}</div>
          <br><br>
          <div id="machineheading" style="top: 0; height:5%; font-family: verdana, arial, sans-serif;font-size: 14px;font-weight: bold;">${product.name}</div>
          <div id="description" style="text-align: left;">${product.description}</div>
          
          <div style="text-align: center;">
              <br>
          
          <g:if test="${ tableDataList.size()==0}">
          </g:if>
          <g:else>
          	
          <g:set var="numberOfCol" value="${product.productSpecTables[0].numberOfCol}"></g:set>
          <g:set var="numberOfRows" value="${product.productSpecTables[0].numberOfRows}"></g:set>
          	
          	<table style="width: 100%; border: solid;">
          		<g:each var="row" in="${0..(numberOfRows-1)}">
	          		<tr>
	          			<g:each var="column" in="${0..(numberOfCol-1)}">
	          				<td class="productTD">${tableDataList[ (row*numberOfCol + column)] }</td>
	                	</g:each>
	            	</tr>
            	</g:each>
          	</table>
          	
          </g:else>
          	<div>
          		<sec:ifAnyGranted roles="${com.liason.auth.Role.ROLE_ADMIN}">
		          	<br><br>
		           		<g:form method="post" name="deleteProduct" url="[action:'deleteProduct',controller:'dashboard']">
		           			<input type="hidden" name="productId" value="${product.id}" />
		           			<input type="image" src="${resource(dir: 'images/dashboard', file: 'deleteProduct.png')}" alt="Submit" width="64" height="48" onclick="if( confirm('Are you sure you want to Delete this Product ?')==false) return false;" />
		           		</g:form>
		          	<br><br><br>
	          	</sec:ifAnyGranted>
          	</div>
          </div>