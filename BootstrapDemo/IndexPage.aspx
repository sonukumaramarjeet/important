<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IndexPage.aspx.cs" Inherits="IndexPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home page </title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-2.1.3.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <style type="text/css">
        .body
        {
           float:left;
        }
        .top
        {
            display:inline;
            float:left;
            width:100%;
            height:100px;
            margin-left:10px;
            margin-right:50px;
        }
        .left
        {
            display:block;
            width:20%;
            height:718px;
            margin-left:10px;
            float:left;
            
        }
        .right
        {
            display:block;
            width:20%;
            height:718px;
            margin-right:10px;
            float:right;
          
        }
        .center
        {   
            display:inline;
            width:60%;
            height:718px;
            float:left;
            
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#linklogin").click(function () {
                $("#LoginModal").modal('show');
                $("#inputEmail").focus();
            });
            $("#btnlogin").click(function () {
                var email = $("#inputEmail").val();
                var pwd = $("#inputPassword").val();
                $("#inputEmail").val("");
                $("#inputPassword").val("");
                $("#LoginModal").modal('hide');
                alert("Email :" + email + " Pwd : " + pwd);
            });

            $("#linkreg").click(function () {
                $("#RegModel").modal('show');
            });
        });
    </script>
    
</head>
<body>
     <!-- Top Div---------------------- -->
    <div class="top">
    <div class="text-center">
    <h1>Project Home page Title</h1>
    </div>
    
   <nav role="navigation" class="navbar navbar-default"> 
    <div id="navbarCollapse" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Messages</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a id="linkreg" href="Javascript:;"><span class="glyphicon glyphicon-pencil"></span> Register</a></li>
            <li><a id="linklogin" href="javascript:;"> <span class="glyphicon glyphicon-lock"></span> Login</a></li>
        </ul>
    </div>
</nav>

<!-- Login Dialog Box -->
<div id="LoginModal" class="modal fade">
    <div class="modal-dialog" style="padding: 30px;">
        <div class="modal-content">
            <div class="modal-header text-center">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <span class="modal-title"><h2>Login To your Account</h2></span>
            </div>

            <div class="modal-body">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                        <input type="email" class="form-control" id="inputEmail" placeholder="Email" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="sr-only" for="inputPassword">Password</label>
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        <input type="password" class="form-control" id="inputPassword" placeholder="Password" />
                    </div>
                </div>
                <div class="checkbox">
                    <label><input type="checkbox" />Remember me</label>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button id="btnlogin" type="button" class="btn btn-primary">Login</button>
            </div>
        </div>
    </div>
</div>
<!-- Login Dialog Box End-->

<!-- Registration Dialog Box -->
<div id="RegModel" class="modal fade">
    <div class="modal-dialog" style="padding: 30px;">
        <dv class="modal-content">
            <div class="modal-header text-center">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
               <h2> <span class="modal-title">Enter Your Information  </span></h2>
            </div>
            <div class="modal-body">
            <div class="form-group">
               <div class="input-group">
               <input type="text" id="txtfname" placeholder="First Name" />
               </div>
            </div>
            <div class="form-group">
               <div class="input-group">
               <input type="text" id="txtlname" placeholder="Last Name" />
               </div>
            </div>
            <div class="form-group">
               <div class="input-group">
               <input type="text" id="txtaddress1" placeholder="Address Line1" />
               </div>
            </div>
            <div class="form-group">
               <div class="input-group">
               <input type="text" id="txtaddress2" placeholder="Address Line2" />
               </div>
            </div>
           <div class="form-group">
               <div class="input-group">
               <input type="number" id="txtpin" placeholder="Zip Code" />
               </div>
            </div>
            <div class="form-group">
               <div class="input-group">
               <input type="number" id="txtmobno" placeholder="Mobile NO" />
               </div>
            </div>

            <div class="form-group">
            <div class="input-group">
             <input type="email" class="form-control" id="Email1" placeholder="Email" />
             </div>
             </div>
              <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        <input type="password" class="form-control" id="Password1" placeholder="Password" />
                    </div>
                    </div>

                <div class="checkbox">
                    <label><input type="checkbox" />Remember me</label>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button id="Button1" type="button" data-dismiss="modal" class="btn btn-primary">Login</button>
            </div>
        </div>
    </div>
</div>

<!-- End Registration Dialog Box -->
</div>


<!---- End of Top Div  -->

    <!-- Left Div  -->
    <div class="left">
    dsfd
    </div>
    <!-- End of left Div  -->
    <div class="center">
    sdfd
    </div>
     <div class="ritht">
    sdfdf
    </div>
</body>
</html>
