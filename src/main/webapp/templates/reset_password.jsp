<!DOCTYPE html>
<html lang="en">
<%@ include file="/WEB-INF/views/base/layout.jsp" %>
<head>
    <meta charset="ISO-8859-1">
    <title>Reset Password</title>
</head>
<body>
    <section>
        <div class="container mt-5 p-5">
            <div class="row">
                <!-- Image Section -->
                <div class="col-md-6 p-5">
                    <img alt="" src="${pageContext.request.contextPath}/img/ecom.png" width="100%" height="400px">
                </div>

                <!-- Reset Password Form -->
                <div class="col-md-6 mt-3 p-5">
                    <div class="card shadow p-3 mb-5 bg-body-tertiary rounded">
                        <div class="card-header">
                            <p class="fs-4 text-center">Reset Password</p>

                            <!-- Success Message -->
                            <c:if test="${not empty sessionScope.succMsg}">
                                <p class="text-success fw-bold text-center">${sessionScope.succMsg}</p>
                                <%
                                    request.getSession().removeAttribute("succMsg");
                                %>
                            </c:if>

                            <!-- Error Message -->
                            <c:if test="${not empty sessionScope.errorMsg}">
                                <p class="text-danger fw-bold text-center">${sessionScope.errorMsg}</p>
                                <%
                                    request.getSession().removeAttribute("errorMsg");
                                %>
                            </c:if>
                        </div>

                        <div class="card-body">
                            <!-- Reset Password Form -->
                            <form action="${pageContext.request.contextPath}/reset-password" method="post" id="resetPassword" novalidate>
                                <div class="mb-3">
                                    <label class="form-label">New Password</label>
                                    <input id="pass" class="form-control" name="password" type="password" required>
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Confirm Password</label>
                                    <input name="confirmPassword" class="form-control" type="password" required>
                                </div>

                                <!-- Hidden Token Field -->
                                <input type="hidden" value="${token}" name="token">

                                <button type="submit" class="btn bg-primary text-white col-md-12">Reset Password</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
