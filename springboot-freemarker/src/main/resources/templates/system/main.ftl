<#-- 引入布局指令的命名空间 -->
<#import "../layout/defaultLayout.ftl" as defaultLayout>
 
<#-- 调用布局指令 -->
<@defaultLayout.layout>
<div class="col-xs-12" style="padding-left: 0px;padding-right: 0px;">
						<ul class="nav nav-tabs" role="tablist">
							<li class="active"><a href="#Index" role="tab"
								data-toggle="tab">首页</a></li>
						</ul>
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="Index">
								欢迎使用EasyAdmin
								
								${employeeInfoList }
							</div>
						</div>
					</div>			
</@defaultLayout.layout>