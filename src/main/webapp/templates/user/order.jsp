<%@ page contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
    <section>
        <div class="container mt-5 p-5">
            <form action="/user/save-order" method="post" id="orders" novalidate>
                <div class="row">

                    <div class="col-md-6">
                        <div class="mb-3 row">
                            <p class="text-center fs-4">Billing Address</p>
                            <hr>
                            <div class="col p-1">
                                <label>First Name</label> 
                                <input type="text" name="firstName" required class="form-control mt-1">
                            </div>
                            <div class="col p-1">
                                <label>Last Name</label> 
                                <input type="text" name="lastName" required class="form-control mt-1">
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <div class="col p-1">
                                <label>Email</label> 
                                <input type="email" name="email" required class="form-control col">
                            </div>
                            <div class="col p-1">
                                <label>Mobile Number</label> 
                                <input type="text" name="mobileNo" required class="form-control col ms-2">
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <div class="col p-1">
                                <label>Address</label> 
                                <input type="text" name="address" required class="form-control col">
                            </div>
                            <div class="col p-1">
                                <label>City</label> 
                                <input type="text" name="city" required class="form-control col ms-2">
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <div class="col p-1">
                                <label>State</label> 
                                <input type="text" name="state" required class="form-control col">
                            </div>
                            <div class="col p-1">
                                <label>Pincode</label> 
                                <input type="number" name="pincode" required class="form-control col ms-2">
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <p class="text-center fs-4">Payment Type</p>
                        <hr>
                        <div class="card">
                            <div class="card-body">
                                <table class="table table-borderless">
                                    <tbody>
                                        <tr>
                                            <td>Total price</td>
                                            <td>:</td>
                                            <td>&#8377; ${orderPrice}</td>
                                        </tr>
                                        <tr>
                                            <td>Delivery Fee</td>
                                            <td>:</td>
                                            <td>&#8377; 250</td>
                                        </tr>
                                        <tr>
                                            <td>Tax</td>
                                            <td>:</td>
                                            <td>&#8377; 100</td>
                                        </tr>
                                        <tr class="border-top">
                                            <td>Total Price</td>
                                            <td>:</td>
                                            <td>&#8377; ${totalOrderPrice}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="card shadow p-3 mb-5 mt-2 bg-body-tertiary rounded">
                            <div class="card-body">
                                <div class="mb-3">
                                    <label class="form-label">Select Payment Type</label> 
                                    <select required name="paymentType" class="form-control">
                                        <option value="">--select--</option>
                                        <option value="COD">Cash On Delivery</option>
                                        <option value="ONLINE">Online Payment</option>
                                    </select>
                                </div>

                                <button class="btn bg-primary text-white col-md-12">Place Order</button>
                            </div>
                        </div>
                    </div>

                </div>
            </form>
        </div>
    </section>
</body>
</html>
