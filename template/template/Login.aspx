﻿<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="template.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
<div class="container">    
    <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
        <div class="panel panel-info" >
            <div class="panel-heading">
                <div class="panel-title">Sign In</div>
                <%--<div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="index.php?action=forgetPassword" class="btn btn-default">Forgot password?</a></div>--%>
            </div>     
            <div style="padding-top:30px" class="panel-body" >
                <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>            
             
                <form id="loginform" class="form-horizontal" role="form" action="DBS/siginAction.php" method="post" >
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input required id="login-username" type="text" class="form-control" name="username" value="" placeholder="username or email">                                        
                        </div>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input required id="login-password" type="password" class="form-control" name="password" placeholder="password">
                        </div>
                        <div class="input-group">
                            <div class="checkbox">
                                <label>
                                    <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                </label>
                            </div>
                        </div>
                        <div style="margin-top:10px" class="form-group">
                            <!-- Button -->
                            <div class="col-sm-12 controls">
                                <input type="submit" id="btn-login" href="#" class="btn btn-success" value="Login" >
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12 control">
                                <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                    Don't have an account! 
                                    <a href="#" onClick="$('#loginbox').slideToggle(); $('#signupbox').slideToggle()">
                                    Sign Up Here
                                </a>
                                </div>
                            </div>
                        </div>    
                    </form>    
                </div>                     
            </div>  
        </div>
    <div id="signupbox" style="display:none; margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Sign Up</div>
                        <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" style="color:white" onclick="$('#signupbox').slideToggle(); $('#loginbox').slideToggle()">Sign In</a></div>
                    </div>  
                    <div class="panel-body" >
                        <form id="signupform" class="form-horizontal" role="form">

                            <div id="signupalert" style="display:none" class="alert alert-danger">
                                <p>Error:</p>
                                <span></span>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-md-3 control-label">Email</label>
                                <div class="col-md-9">
                                    <input type="text" required class="form-control" name="email" placeholder="Email Address">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="firstname" class="col-md-3 control-label">First Name</label>
                                <div class="col-md-9">
                                    <input type="text" required class="form-control" name="firstname" placeholder="First Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                <div class="col-md-9">
                                    <input type="text" required class="form-control" name="lastname" placeholder="Last Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-md-3 control-label">Password</label>
                                <div class="col-md-9">
                                    <input type="password" class="form-control" name="passwd" placeholder="Password">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="icode" class="col-md-3 control-label">Invitation Code</label>
                                <div class="col-md-9">
                                    <input type="text" required class="form-control" name="icode" placeholder="">
                                </div>
                            </div>

                            <div class="form-group">
                                <!-- Button -->                                        
                                <div class="col-md-offset-3 col-md-9">
                                    <input type="submit" id="btn-signup" class="btn btn-info" value="submit"/>
                                    <input type="reset" class="btn btn-warning" />
                                </div>
                            </div>

                            



                        </form>
                     </div>
                </div>




     </div> 
    </div>

</asp:Content>
