<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="Dream_Construction.Guest.login.loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<%--<h2 class="heading-section">Login #04</h2>--%>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(images/img-2.jpg);">
			      </div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Sign In</h3>
			      		</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
									</p>
								</div>
			      	</div>
							<%--<form action="#" class="signin-form">--%>
			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Username</label>
			      			<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Username" required Wrap="False"  Width="368px"></asp:TextBox>
			      		    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Required"></asp:RequiredFieldValidator>
			      		</div>
		            <div class="form-group mb-3">
		            	<label class="label" for="password">Password</label>
						<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Password" required></asp:TextBox>
		                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required"></asp:RequiredFieldValidator>
		            </div>
		            <div class="form-group">
						<asp:Button ID="Button1" runat="server" Text="Login" class="form-control btn btn-primary rounded submit px-3" OnClick="Button1_Click"/>
		            	
		            </div>
		            <div class="form-group d-md-flex">
		            	<div class="w-50 text-left">
			            	<label class="checkbox-wrap checkbox-primary mb-0">Remember Me
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="forgetpassword.aspx">Forgot Password</a>
									</div>
										
		            </div>
		          <%--</form>--%>
							<div class="w-20 text-md-right">
										<a href="../Guesthome.aspx">Not a Member? Register Here! Home</a>
									</div>
		          <%--<p class="text-center"> <a data-toggle="tab" href="../Guesthome.aspx">Home</a></p>--%>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
        </div>
    </form>
</body>
</html>
