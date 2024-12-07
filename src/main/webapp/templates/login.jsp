<!DOCTYPE html>
<html lang="en">
<%@ include file="/WEB-INF/views/base/layout.jsp" %>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
</head>
<body>
    <section>
        <div class="container mt-5 p-5">
            <div class="row">
                <div class="col-md-6 p-5">
                    <img alt="" src="img/artverse.jpg" width="100%" height="400px">
                </div>
                <div class="col-md-6 mt-3 p-5">
                    <div class="card shadow p-3 mb-5 bg-body-tertiary rounded">
                        <div class="card-header">
                            <p class="fs-4 text-center">Login</p>
                            <% if (request.getParameter("error") != null) { %>
                                <div class="alert alert-danger text-center">
                                    <% 
                                        Object lastException = session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION");
                                        if (lastException != null) { 
                                            String errorMessage = ((Exception) lastException).getMessage();
                                            out.print(errorMessage); 
                                        }
                                    %>
                                </div>
                            <% } %>

                            <% if (request.getParameter("logout") != null) { %>
                                <div class="alert alert-success">
                                    Logout Successfully
                                </div>
                            <% } %>
                        </div>
                        <div class="card-body">
                            <form action="/login" method="post">
                                <div class="mb-3">
                                    <label class="form-label">Email</label>
                                    <input required class="form-control" name="username" type="email">
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Password</label>
                                    <input required class="form-control" name="password" type="password">
                                </div>
                                <button type="submit" class="btn bg-primary text-white col-md-12">Login</button>
                            </form>
                        </div>

                        <div class="card-footer text-center">
                            <a href="/forgot-password" class="text-decoration-none">Forgot Password</a><br>
                            Don't have an account? <a href="/register" class="text-decoration-none">Create one</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
