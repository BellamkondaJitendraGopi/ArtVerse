<!DOCTYPE html>
<html lang="en">
<%@ include file="/WEB-INF/views/base/layout.jsp" %>
<head>
    <meta charset="ISO-8859-1">
    <title>Home</title>
</head>
<body>
    <section>
        <!-- Start Slider -->
        <div id="carouselExample" class="carousel slide">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/ecom1.png" class="d-block w-100" alt="..." height="350px">
                </div>
                <div class="carousel-item">
                    <img src="img/ecom3.jpg" class="d-block w-100" alt="..." height="350px">
                </div>
                <div class="carousel-item">
                    <img src="img/ecom2.jpg" class="d-block w-100" alt="..." height="350px">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!-- End Slider -->

        <!-- Start Category Module -->
        <div class="container">
            <div class="row">
                <p class="text-center fs-4">Category</p>
                <%
                    if (category != null) {
                        for (Category c : category) {
                %>
                <div class="col-md-2">
                    <div class="card rounded-circle shadow-sm p-3 mb-5 bg-body-tertiary rounded">
                        <div class="card-body text-center">
                            <img src="img/category_img/<%= c.getImageName() %>" width="65%" height="140px"><br>
                            <a href="/products?category=<%= c.getName() %>" class="text-decoration-none"><%= c.getName() %></a>
                        </div>
                    </div>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>
        <!-- End Category Module -->

        <!-- Start Latest Product Module -->
        <div class="container-fluid bg-light p-3">
            <div class="row">
                <p class="text-center fs-4">Latest Product</p>
                <%
                    if (products != null) {
                        for (Product p : products) {
                %>
                <div class="col-md-3">
                    <div class="card shadow-sm p-3 mb-5 bg-body-tertiary rounded">
                        <div class="card-body text-center">
                            <img alt="" src="img/product_img/<%= p.getImage() %>" class="" width="65%" height="140px">
                            <p class="text-center">
                                <a href="/product/<%= p.getId() %>" class="text-decoration-none"><%= p.getTitle() %></a>
                            </p>
                        </div>
                    </div>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>
        <!-- End Latest Product Module -->
    </section>
</body>
</html>
