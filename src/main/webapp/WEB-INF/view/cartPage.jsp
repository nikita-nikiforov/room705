<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="tempates/header.jsp"%>

<h2>My shopping cart</h2>
<c:if test="${cartForm.cartLines[0]==null}">
    <h2>Your cart is Empty</h2>
</c:if>
<c:if test="${cartForm.cartLines[0]!=null}">
    <c:forEach items="${cartForm.cartLines}" var="cartLineInfo" varStatus="varStatus" step="3">
        <div class="container">
        <div class="row">
        <div class="col-md-4">
            <div class="divProduct">
                <ul>
                    <li>Id: ${cartLineInfo.productInfo.productId}</li>
                    <li>Name: ${cartLineInfo.productInfo.productName}</li>
                    <li>Price:${cartLineInfo.productInfo.price}</li>
                    <li>Quantity: ${cartLineInfo.quantity}</li>
                    <li>Subtotal: ${cartLineInfo.amount}"</li>
                    <br>
                    <li><a href="${pageContext.request.contextPath}/removeFromCart?id=${cartLineInfo.productInfo.productId}">
                        Remove from cart</a></li>
                </ul>
            </div>
        </div>

        <c:choose>
            <c:when test="${cartForm.cartLines[varStatus.index+1] == null}">

            </c:when>
            <c:otherwise>
                <div class="col-md-4">
                    <div class="divProduct">
                        <ul>
                            <li>Id: ${cartForm.cartLines[varStatus.index+1].productInfo.productId}</li>
                            <li>Name: ${cartForm.cartLines[varStatus.index+1].productInfo.productName}</li>
                            <li>Price:${cartForm.cartLines[varStatus.index+1].productInfo.price}</li>
                            <li>Quantity: ${cartForm.cartLines[varStatus.index+1].quantity}</li>
                            <li>Subtotal: ${cartForm.cartLines[varStatus.index+1].amount}"</li>
                            <br>
                            <li><a href="${pageContext.request.contextPath}/removeFromCart?id=${cartForm.cartLines[varStatus.index+1].productInfo.productId}">
                                Remove from cart</a></li>
                        </ul>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>

        <c:choose>
            <c:when test="${cartForm.cartLines[varStatus.index+2] == null}">

            </c:when>
            <c:otherwise>
                <div class="col-md-4">
                    <div class="divProduct">
                        <ul>
                            <li>Id: ${cartForm.cartLines[varStatus.index+2].productInfo.productId}</li>
                            <li>Name: ${cartForm.cartLines[varStatus.index+2].productInfo.productName}</li>
                            <li>Price:${cartForm.cartLines[varStatus.index+2].productInfo.price}</li>
                            <li>Quantity: ${cartForm.cartLines[varStatus.index+2].quantity}</li>
                            <li>Subtotal: ${cartForm.cartLines[varStatus.index+2].amount}"</li>
                            <br>
                            <li><a href="${pageContext.request.contextPath}/removeFromCart?id=${cartForm.cartLines[varStatus.index+2].productInfo.productId}">
                                Remove from cart</a></li>
                        </ul>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>

    </c:forEach>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            Total quantity: ${cartForm.quantityTotal}
            Total cost: ${cartForm.amountTotal}
        </div>
    </div>
    <form method="POST"
          action="${pageContext.request.contextPath}/toUserForm">
        <input type="submit" value="Create order"></input>
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </form>


</div>
</c:if>

<br><br>
<%@include file="tempates/footer.jsp"%>