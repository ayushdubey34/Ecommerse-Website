
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
        <%@include file = "components/common_css_js.jsp" %>
    </head>
    <body>
        <!-- Background image -->
        <div class="container-fluid">
            <div
                class="bg-image"
                style="
                background-image: url('https://mdbootstrap.com/img/Photos/Others/images/76.jpg');
                height: 120vh;
                "
                >
                <%@include file = "components/navbar.jsp" %>
                <div class="mask" style="background-color: rgba(0, 0, 0, 0.6);">
                </div>
                <div class="row mt-2 my-10">
                    <div class="col-md-6 offset-md-3">
                        <div class="card">
                            <%@include file  = "components/message.jsp" %>
                            <div class="card-body px-5">
                                <div>
                                    <img src="img/pic2.jpg" style="max-width: 150px" class="img-fluid mx-5" alt="alt"/>   
                                </div>
                                

                                <h2 class="text-center my-3">Sign up here</h2>

                                <form action="RegisterServelet" method="post">
                                    <div class="form-group">
                                        <label for="name">User Name</label>
                                        <input name="user_name" type="text" class="form-control" id="name"  placeholder="Enter user name">

                                    </div>
                                    <div class="form-group">
                                        <label for="email">User Email</label>
                                        <input name="user_email" type="email" class="form-control" id="email"  placeholder="Enter user email">

                                    </div>
                                    <div class="form-group">
                                        <label for="password">User Password</label>
                                        <input name="user_password" type="password" class="form-control" id="password"  placeholder="Enter user password">

                                    </div>
                                    <div class="form-group">
                                        <label for="phone">User Phone</label>
                                        <input name="user_phone" type="number" class="form-control" id="phone"  placeholder="Enter phone number">

                                    </div>
                                    <div class="form-group">
                                        <label for="address">User Address</label>
                                        <textarea name="user_address" style="height: 100px" class="form-control" placeholder="Enter your address"></textarea>

                                    </div>

                                    <div class="container text-center">
                                        <button class="btn btn-outline-success">Register</button>
                                        <button class="btn btn-outline-warning">Reset</button>
                                    </div>


                                </form>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Background image -->

    </body>
</html>
