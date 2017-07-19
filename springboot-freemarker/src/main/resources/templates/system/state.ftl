<#-- 引入布局指令的命名空间 -->
<#import "../layout/defaultLayout.ftl" as defaultLayout>
 
<#-- 调用布局指令 -->
<@defaultLayout.layout>

   <div class="alert alert-block alert-success">
		<button type="button" class="close" data-dismiss="alert">
			<i class="ace-icon fa fa-times"></i>
		</button>

		<i class="ace-icon fa fa-check green"></i>
			Welcome to
		<strong class="green">
			Ace
			<small>(v1.4)</small>
		</strong>,
		the lightweight, feature-rich and easy to use admin template.
	</div>
								
</@defaultLayout.layout>