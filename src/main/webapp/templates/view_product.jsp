<!DOCTYPE html>
<html lang="en">
<%@ include file="/WEB-INF/views/base/layout.jsp" %>
<head>
    <meta charset="ISO-8859-1">
    <title>Product Details</title>
</head>
<body>
    <section>
        <div class="container card-sh" style="margin-top: 70px; margin-bottom: 100px">
            <div class="col-md-12 p-5">
                <div class="row">

                    <!-- Success Message -->
                    <c:if test="${not empty sessionScope.succMsg}">
                        <p class="text-success alert alert-success text-center" role="alert">${sessionScope.succMsg}</p>
                        <%
                            request.getSession().removeAttribute("succMsg");
                        %>
                    </c:if>

                    <!-- Error Message -->
                    <c:if test="${not empty sessionScope.errorMsg}">
                        <p class="text-danger text-center alert alert-danger">${sessionScope.errorMsg}</p>
                        <%
                            request.getSession().removeAttribute("errorMsg");
                        %>
                    </c:if>

                    <!-- Product Image Section -->
                    <div class="col-md-6 text-end">
                        <img alt="" src="${pageContext.request.contextPath}/img/product_img/${product.image}" width="300px" height="250px">
                    </div>

                    <!-- Product Details Section -->
                    <div class="col-md-6">
                        <p class="fs-3">${product.title}</p>
                        <p>
                            <span class="fw-bold">Description : </span><br>${product.description}
                        </p>
                        <p>
                            <span class="fw-bold"> Product Details: </span> <br> Status :
                            <c:choose>
                                <c:when test="${product.stock > 0}">
                                    <span class="badge bg-success">Available</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge bg-warning">Out of stock</span>
                                </c:otherwise>
                            </c:choose>
                            <br> Category: ${product.category}<br> Policy : 7 Days Replacement & Return
                        </p>
                        <p class="fs-5 fw-bold">
                            Price :&nbsp; &nbsp; &nbsp; &nbsp;<i class="fas fa-rupee-sign"></i>
                            ${product.discountPrice} <span class="fs-6 text-decoration-line-through text-secondary">${product.price}</span>
                            <span class="fs-6 text-success">${product.discount}% off</span>
                        </p>

                        <!-- Additional Features -->
                        <div class="row">
                            <div class="col-md-4 text-success text-center p-2">
                                <i class="fas fa-money-bill-wave fa-2x"></i>
                                <p>Cash On Delivery</p>
                            </div>
                            <div class="col-md-4 text-danger text-center p-2">
                                <i class="fas fa-undo-alt fa-2x"></i>
                                <p>Return Available</p>
                            </div>
                            <div class="col-md-4 text-primary text-center p-2">
                                <i class="fas fa-truck-moving fa-2x"></i>
                                <p>Shipping cost not added</p>
                            </div>
                        </div>

                        <!-- Add to Cart Section -->
                        <c:choose>
                            <c:when test="${product.stock > 0}">
                                <c:choose>
                                    <c:when test="${user == null}">
                                        <a href="/signin" class="btn btn-danger col-md-12">Add To Cart</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="${pageContext.request.contextPath}/user/addCart?pid=${product.id}&uid=${user.id}" class="btn btn-danger col-md-12">Add To Cart</a>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <a href="#" class="btn text-white btn-warning col-md-12">Out of Stock</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
