<#macro layout>
<!DOCTYPE html>
<html lang="en">
<head><#include "headerConfig.ftl">
</head>

<body class="no-skin">
	<!-- #section:basics/navbar.layout -->
	<#include "navbar.ftl">
	<!-- /section:basics/navbar.layout -->

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>

		<!-- #section:basics/sidebar -->
		<#include "sidebar.ftl">
		<!-- /section:basics/sidebar -->

		<div class="main-content">
			<div class="main-content-inner">
				<!-- #section:basics/content.breadcrumbs -->
				<#include "breadcrumbs.ftl">
				<!-- /section:basics/content.breadcrumbs -->

				<div class="page-content">
					<!-- #.ace-settings-container -->
					<#include "settingsContainer.ftl">
					<!-- /.ace-settings-container -->

					<!-- #.page-header -->
					<#include "pageHeader.ftl">
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<#nested>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<!-- #.footer -->
		<#include "footer.ftl">
		<!-- /.footer -->
	</div>
	<!-- /.main-container -->
	<!-- #.footerConfig -->
	<#include "footerConfig.ftl">
	<!-- /.footerConfig -->
</body>
</html>

</#macro>
