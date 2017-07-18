<!DOCTYPE html>

<html lang="zh-CN">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title></title>
<meta name="description" content="User login page" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="aceadmin/assets/css/bootstrap.css" />
<link rel="stylesheet"
	href="aceadmin/components/font-awesome/css/font-awesome.css" />

<!-- text fonts -->
<link rel="stylesheet" href="aceadmin/assets/css/ace-fonts.css" />

<!-- ace styles -->
<link rel="stylesheet" href="aceadmin/assets/css/ace.css" />
<link rel="stylesheet" href="aceadmin/assets/css/ace-rtl.css" />

<!-- 项目自定义css -->
<link rel="stylesheet" href="css/main.css" />
</head>

<body class="login-layout light-login">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="ace-icon fa fa-leaf green"></i> <span class="red">ACE</span>
								<span class="white" id="id-text2">Application</span>
							</h1>
							<h4 class="blue" id="id-company-text">&copy; Company Name</h4>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<i class="ace-icon fa fa-coffee green"></i> Please Enter Your
											Information
										</h4>

										<div class="space-6"></div>
										<form name="form" action="/login" method="POST">
											<div class="form-group">
												<#if msg??>
												<p class="error-msg">${msg}</p>
												</#if> <label for="username">账号</label> <input type="text"
													class="form-control" name="username" value=""
													placeholder="账号" />
											</div>
											<div class="form-group">
												<label for="password">密码</label> <input type="password"
													class="form-control" name="password" placeholder="密码" />
											</div>
											<input type="submit" id="login" value="Login"
												class="btn btn-primary" />
										</form>
									</div>
									<!-- /.widget-body -->
								</div>
								<!-- /.login-box -->
							</div>
							<!-- /.position-relative -->
						</div>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.main-content -->
		</div>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<script src="aceadmin/components/jquery/dist/jquery.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		
	</script>
</body>
</html>
