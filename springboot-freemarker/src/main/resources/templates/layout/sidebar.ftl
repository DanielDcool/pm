<div id="sidebar"
     class="sidebar                  responsive                    ace-save-state">
    <script type="text/javascript">
        try {
            ace.settings.loadState('sidebar')
        } catch (e) {
        }
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <i class="ace-icon fa fa-signal"></i>
            </button>

            <button class="btn btn-info">
                <i class="ace-icon fa fa-pencil"></i>
            </button>

            <!-- #section:basics/sidebar.layout.shortcuts -->
            <button class="btn btn-warning">
                <i class="ace-icon fa fa-users"></i>
            </button>

            <button class="btn btn-danger">
                <i class="ace-icon fa fa-cogs"></i>
            </button>

            <!-- /section:basics/sidebar.layout.shortcuts -->
        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span> <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
        </div>
    </div>
    <!-- /.sidebar-shortcuts -->

    <ul class="nav nav-list">
        <li><a class="dropdown-toggle" href="javascript:addTabs({id:'1,title: '1',close: true,url:''})"> <i
                class="menu-icon fa "></i> <span class="menu-text">员工管理 </span><b
                class="fa fa-angle-down arrow"></b></a>
            <ul class="submenu" style="display: block;" id="nav1">
                <li><a href="javascript:addTabs({id:'2',title: '员工信息',close: true,url: '/pm/employeesPage'})"> <i
                        class="menu-icon fa "></i> <span class="menu-text">员工信息 </span></a></li>
            </ul>
        </li>
        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-desktop"></i>
                <span class="menu-text">系统管理</span>
                <b class="arrow fa fa-angle-down"></b>
            </a><b class="arrow"></b>

            <ul class="submenu">
                <li class="">
                    <a href="#">
                        <i class="menu-icon fa fa-caret-right"></i>员工信息导入
                        <b class="arrow"></b>
                    </a>
                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
    </ul>
    <!-- /.nav-list -->

    <!-- #section:basics/sidebar.layout.minimize -->
    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i id="sidebar-toggle-icon"
           class="ace-icon fa fa-angle-double-left ace-save-state"
           data-icon1="ace-icon fa fa-angle-double-left"
           data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
    <!-- /section:basics/sidebar.layout.minimize -->
</div>