<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bootstrap Demo</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <%--<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>--%>
    <script src="js/jquery-2.1.3.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            var wid = 0;
            setInterval(function () {
                if (wid <= 100)
                    setwidth(wid);
                wid += 1;
            }, 1000);

            // search button coding  
            $("#btnsearch").click(function () {

             //var w = screen.availWidth;
             //alert(w);
                $("#myModal").modal('show');
            });

            $(".list-group-item").click(function () {
                var v = $(this).find(".badge").html();
                var count = parseInt(v) + 1;
                $(this).find(".badge").html(count.toString());
                //alert(v.toString());
            });

            $(".form-control").blur(function () {
                var v = $(this).val();
                if (v == "" || typeof (v) == "undefined") {
                    $(this).closest("div").addClass("has-error");
                    $(this).next().html("Error occured");
                    return false;
                }
                else {
                    $(this).closest(".form-group").addClass("has-success");
                    return false;
                }
            });

            $("a").click(function () {
                $(".nav").find("li").removeClass("active");
                $(this).closest("li").addClass("active");
            });




        });

        function setwidth(pvalue)
        {
            $(".progress-bar").css({ "width": +pvalue + "%" });
            $("#prgbar").html(pvalue + " % completed");
        }
    </script>
</head>
<body>
    <h1>First Bootstrap Example </h1> 
    <div style="margin-left:10px">

    <!--     form1---------------- -->
  <div class="progress progress-striped active">
  <div id="prgbar" class="progress-bar progress-bar-success">
  </div>
  </div>

  <div class="alert alert-warning">
    <a href="#" class="close" data-dismiss="alert">&times;</a>
    <strong>Warning!</strong> There was a problem with your network connection.
</div>
<br />
    </div>  
<!--     form2---------------- -->
<div class="hide" style="width:350px; padding:10px; margin:10px">
  <form class="form-horizontal">
    <div id="first" class="form-group">
        <label class="col-xs-2 control-label" for="inputSuccess">Username</label>
        <div class="col-xs-10">
            <input type="text" id="inputSuccess" class="form-control" placeholder="Input with success">
            <span class="help-block">Username is available</span>
        </div>
    </div>

    <div class="form-group has-feedback">
        <label class="col-xs-2 control-label" for="inputWarning">Password</label>
        <div class="col-xs-10">
            <input type="password" id="inputWarning" class="form-control" placeholder="Input with warning">
            <span class="help-block">Password strength: Weak</span>
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-2 control-label" for="inputError">Email</label>
        <div class="col-xs-10">
            <input type="email" id="inputError" class="form-control" placeholder="Input with error">
            <span class="help-block">Please enter a valid email address</span>
        </div>
    </div>
    <div class="input-group">
    <input type="submit" id="btnvalidate" class="btn btn-primary" value="Validate" />
    </div>
</form>
</div>

<!-------------------------------->                               
    <div class="list-group" style="width:250px">
    <a href="javascript:;" class="list-group-item active">
        <span class="glyphicon glyphicon-camera"></span> Pictures <span class="badge">25</span>
    </a>
    <a href="#" class="list-group-item">
        <span class="glyphicon glyphicon-file"></span> Documents <span class="badge">145</span>
    </a>
    <a href="#" class="list-group-item">
        <span class="glyphicon glyphicon-music"></span> Music <span class="badge">50</span>
    </a>
    <a href="#" class="list-group-item">
        <span class="glyphicon glyphicon-film"></span> Videos <span class="badge">8</span>
    </a>
</div>


<table class="table">
    <thead>
        <tr >
            <th>Row</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
        </tr>
    </thead>
    <tbody>
        <tr class="active">
            <td>1</td>
            <td>John</td>
            <td>Carter</td>
            <td>johncarter@mail.com</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Peter</td>
            <td>Parker</td>
            <td>peterparker@mail.com</td>
        </tr>
        <tr>
            <td>3</td>
            <td>John</td>
            <td>Rambo</td>
            <td>johnrambo@mail.com</td>
        </tr>
    </tbody>
</table>
<div>
<br />
<!--Model popup  -->
<div id="myModal" class="modal fade">
    <div class="modal-dialog" style="padding:30px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Login to Your Account</h4>
            </div>
            <div class="modal-body">
      <div class="form-group">
         <div class="input-group">
         <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
         <input type="email" class="form-control" id="inputEmail" placeholder="Email"/>
         </div>
      </div>
      <div class="form-group">
         <label class="sr-only" for="inputPassword">Password</label>
         <div class="input-group">
         <span class="input-group-addon"> <span class="glyphicon glyphicon-lock"></span></span>
         <input type="password" class="form-control" id="inputPassword" placeholder="Password"/>
         </div>
      </div>
    <div class="checkbox">
        <label><input type="checkbox"> Remember me</label>
    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Login</button>
            </div>
        </div>
    </div>
</div>

<!-- -->

<button type="submit" id="btnsearch" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span> Search</button>                       
<hr />
</div>
    
</body>
</html>
