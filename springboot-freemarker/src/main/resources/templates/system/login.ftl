<!DOCTYPE html>

<html lang="zh-CN">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title></title>
		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.css" />
	
	</head>

	<body class="login-layout light-login">${base}
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green"></i>
									<span class="red">ACE</span>
									<span class="white" id="id-text2">Application</span>
								</h1>
								<h4 class="blue" id="id-company-text">&copy; Company Name</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												Please Enter Your Information
											</h4>

											<div class="space-6"></div>

											<form action="login" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control username" placeholder="Username" name="username"/>
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control password" placeholder="Password" name="password"/>
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<div class="space"></div>
													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" id="rememberMe"/>
															<span class="lbl"> Remember Me</span>
														</label>

														<button type="button" id="login" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110">Login</span>
														</button>
													</div>

													<div class="space-4"></div>
													 <div class="error"><span>+</span></div>
												</fieldset>
											</form>
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->
							</div><!-- /.position-relative -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
		//登录操作
	    $('#login').click(function(){
	        var username = $('.username').val();
	        var password = $('.password').val();
	        if(username == '') {
	            $('.error').fadeOut('fast', function(){
	                $('.error').css('top', '27px').show();
	            });
	            $('.error').fadeIn('fast', function(){
	                $('.username').focus();
	            });
	            return false;
	        }
	        if(password == '') {
	            $('.error').fadeOut('fast', function(){
	                $('.error').css('top', '96px').show();
	            });
	            $(this).find('.error').fadeIn('fast', function(){
	                $('.password').focus();
	            });
	            return false;
	        }
	        var	data = {password:password,username:username,rememberMe:$("#rememberMe").is(':checked')};
	        
	        $.ajax({
	        	url:"/login",
	        	data:data,
	        	type:"post",
	        	dataType:"json",
	        	beforeSend:function(){
	        		alert('开始登录，请注意后台控制台。');
	        	},
	        	success:function(result){
		    		if(result && result.status != 200){
		    			alert(result.message);
		    			$('.password').val('');
		    			return;
		    		}else{
		    			alert('登录成功！');
		    			setTimeout(function(){
		    				//登录返回
			    			window.location.href= "main";
		    			},1000)
		    		}
	        	},
	        	error:function(e){
	        		console.log(e,e.message);
	        		alert('请看后台Java控制台，是否报错，确定已经配置数据库和Redis');
	        	}
	        });
	    });
			
			
		
		</script>
	</body>
</html>
