<#macro layout>
<!DOCTYPE html>
<html lang="en">
<head><#include "headerConfig.ftl">
</head>

<body class="no-skin">

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>
   		 <div class="page-content">
   			 <#nested>
   		 </div>
	</div>
	<!-- #.footerConfig -->
	<#include "footerConfig.ftl">
	<!-- /.footerConfig -->
</body>
</html>

</#macro>
