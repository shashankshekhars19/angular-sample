<html>

<head>
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" /> 
	<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body{ margin: 0; padding: 0; background: #fafafa; }

h1,h2 {
  text-align: center;
}
.footer-bottom {
    background-color: teal;
    min-height: 15px;
    margin-top:10px;
    width: 100%;
    position: bottom
}
.copyright {
    color: #fff;
    line-height: 30px;
    min-height: 30px;
    padding: 7px 0;
}
.design {
    color: #fff;
    line-height: 30px;
    min-height: 30px;
    padding: 7px 0;
    text-align: right;
}
.design a {
    color: #fff;
}


#with-container-fluid{
  padding: 30px 0;
  width :60%;
  margin-left : 20%;
  margin-right: 20%
}


.by-me { text-align: center; }


#with-container-fluid {
  background: lightgreen;
}
</style>
</head>
<body>
<div class="page-header">
<h1>Your Application 
      
  </h1>
</div>
<div id="with-container-fluid">
		<h2>Login Here</h2>
		<div class="container-fluid">
			<form class="form-horizontal" method="post" action="LoginController">
				<div class="form-group">
					<label class="control-label col-sm-2 col-md-2  col-lg-4" for="name">Name:</label>
					<div class="col-sm-10 col-md-10  col-lg-4">
						<input type="text" name="name" class="form-control" id="name"
							placeholder="Enter name">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2 col-md-2  col-lg-4" for="pwd">Password:</label>
					<div class="col-sm-10 col-md-10  col-lg-4">
						<input type="password" name="password" class="form-control"
							id="pwd" placeholder="Enter password">
					</div>
				</div>
				<div class="form-group">
					<div
						class="col-sm-offset-2 col-sm-10 col-md-offset-2 col-md-10 col-lg-offset-4 col-lg-4">
						<button type="submit" class="btn btn-default">Submit</button>
					</div>
				</div>
			</form>
		</div>
	</div>

<div class="footer-bottom">

	<div class="container">

		<div class="row">

			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

				<div class="copyright">

					© 2016,

				</div>

			</div>

			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

				<div class="design">

					 <a href="#"> </a> |  <a target="_blank" href="#">Sample Screen </a>

				</div>

			</div>

		</div>

	</div>

</div>
</body>
</html>
