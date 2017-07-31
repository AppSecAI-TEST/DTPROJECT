<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
    </head>
    <body>
        <h3>Welcome, Enter The Product Details</h3>
        <form:form method="POST" action="saveProduct" modelAttribute="product">
             <table>
                <tr>
                    <td><form:label path="name">Product Name</form:label></td>
                    <td><form:input path="name"/></td>
                </tr>
		<tr>
                    <td><form:label path="description">Product Description</form:label></td>
                    <td><form:input path="description"/></td>
                </tr>
		<tr>
                    <td><form:label path="price">Product Price</form:label></td>
                    <td><form:input path="price"/></td>
                </tr>

                <tr>
                    <td><form:label path="instock">Stock</form:label></td>
                    <td><form:input path="instock"/></td>
                </tr> 
          <tr>
						<td><form:label class="btn btn-default btn-block" path="supplier_id">Supplier</form:label></td>
								
							
						<td><form:select path="supplier_id" class="form-control"
								required="true">
								<c:forEach items="${supplierList}" var="supplier">
									<form:option class="form-control" value="${supplier.id}">${supplier.supplierName}</form:option>
								</c:forEach>
							</form:select></td>
					</tr>
					<tr>
						<td><form:label class="btn btn-default btn-block" path="category_id">Category</form:label></td>
						<td><form:select class="form-control" path="category_id"
								required="true">
								<c:forEach items="${categoryList}" var="category">
									<form:option class="form-control" value="${category.id}">${category.categoryName}</form:option>
								</c:forEach>
							</form:select></td>
					</tr>
     <tr>
  <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
     
    </body>
</html>