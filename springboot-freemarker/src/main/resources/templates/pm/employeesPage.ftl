<#-- 引入布局指令的命名空间 -->
<#import "../layout/mainContainerLayout.ftl" as mainContainerLayout>

<#-- 调用布局指令 -->
<@mainContainerLayout.layout>
<!--search form  -->
<form class="form-inline">
    <label class="control-label no-padding-right" for="form-field-1"> 编号 : </label>
    <input type="text" class="input-small" placeholder="编号" id="id">
    <label class="control-label no-padding-right" for="form-field-1"> 姓名 : </label>
    <input type="text" class="input-medium" placeholder="姓名" id="name">
    <label class="control-label no-padding-right" for="form-field-1"> 部门 : </label>
    <input type="text" class="input-large" placeholder="部门" id="department">
    <label class="control-label no-padding-right" for="form-field-1"> 职位 : </label>
    <input type="text" class="input-medium" placeholder="职位" id="position">
    <button type="button" class="btn btn-info btn-sm pull-right" id="searchForm">
        <span class="ace-icon fa fa-search icon-on-right bigger-110"></span>
        Search
    </button>
</form>
<div class="col-xs-12 widget-box widget-color-blue2">
    <table id="grid-table"></table>
    <div id="grid-pager"></div>
</div>
<script type="text/javascript">

    jQuery(function ($) {
        var grid_selector = "#grid-table";
        var pager_selector = "#grid-pager";

        $("#searchForm").click(function () {
            var id = $("#id").val();
            var name = $("#name").val();
            var position = $("#position").val();
            var department = $("#department").val();

            $(grid_selector).jqGrid("setGridParam",
                    {
                        url: "/pm/employees?id=" + id +
                        "&name=" + name +
                        "&position=" + position +
                        "&department=" + department, page: 1, datatype: "json"
                    }).trigger("reloadGrid");
        })

        var parent_column = $(grid_selector).closest('[class*="col-"]');
        //resize to fit page size
        $(window).on('resize.jqGrid', function () {
            $(grid_selector).jqGrid('setGridWidth', parent_column.width());
        })

        //resize on sidebar collapse/expand
        $(document).on('settings.ace.jqGrid', function (ev, event_name, collapsed) {
            if (event_name === 'sidebar_collapsed' || event_name === 'main_container_fixed') {
                //setTimeout is for webkit only to give time for DOM changes and then redraw!!!
                setTimeout(function () {
                    $(grid_selector).jqGrid('setGridWidth', parent_column.width());
                }, 20);
            }
        })

        //if your grid is inside another element, for example a tab pane, you should use its parent's width:
        /**
         $(window).on('resize.jqGrid', function () {
					var parent_width = $(grid_selector).closest('.tab-pane').width();
					$(grid_selector).jqGrid( 'setGridWidth', parent_width );
				})
         //and also set width when tab pane becomes visible
         $('#myTab a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
				  if($(e.target).attr('href') == '#mygrid') {
					var parent_width = $(grid_selector).closest('.tab-pane').width();
					$(grid_selector).jqGrid( 'setGridWidth', parent_width );
				  }
				})
         */





        jQuery(grid_selector).jqGrid({
            //direction: "rtl",

            //subgrid options
            //subGrid : true,
            //subGridModel: [{ name : ['No','Item Name','Qty'], width : [55,200,80] }],
            //datatype: "xml",
            /* subGridOptions : {
                plusicon : "ace-icon fa fa-plus center bigger-110 blue",
                minusicon  : "ace-icon fa fa-minus center bigger-110 blue",
                openicon : "ace-icon fa fa-chevron-right center orange"
            }, */
            //for this example we are using local data
            /* subGridRowExpanded: function (subgridDivId, rowId) {
                var subgridTableId = subgridDivId + "_t";
                $("#" + subgridDivId).html("<table id='" + subgridTableId + "'></table>");
                $("#" + subgridTableId).jqGrid({
                    datatype: 'local',
                    data: subgrid_data,
                    colNames: ['No','Item Name','Qty'],
                    colModel: [
                        { name: 'id', width: 50 },
                        { name: 'name', width: 150 },
                        { name: 'qty', width: 50 }
                    ]
                });
            }, */



            url: "/pm/employees",
            datatype: "json",
            height: 'auto',
            colNames: ['编号', '姓名', '部门', '职位', '入职日期', '转正日期', '目前薪资'],
            colModel: [
                /* {name:'myac',index:'', width:80, fixed:true, sortable:false, resize:false,
                    formatter:'actions',
                    formatoptions:{
                        keys:true,
                        delbutton: false,//disable delete button

                        delOptions:{recreateForm: true, beforeShowForm:beforeDeleteCallback},
                        //editformbutton:true, editOptions:{recreateForm: true, beforeShowForm:beforeEditCallback}
                    }
                }, */
                {name: 'id', index: 'id', width: 60, sorttype: "int",},
                {name: 'name', index: 'name', width: 90},
                {name: 'department', index: 'department', width: 150},
                {name: 'position', index: 'position', width: 70},
                {
                    name: 'employmentDate',
                    index: 'employmentDate',
                    width: 90,
                    sorttype: "date",
                    unformat: pickDate,
                    formatter: "date",
                    formatoptions: {srcformat: 'u', newformat: 'Y-m-d'}
                },
                {
                    name: 'regularDate',
                    index: 'regularDate',
                    width: 90,
                    sorttype: "date",
                    unformat: pickDate,
                    formatter: "date",
                    formatoptions: {srcformat: 'u', newformat: 'Y-m-d'}
                },
                {
                    name: 'salary',
                    index: 'salary',
                    width: 90,
                    formatter: 'currency',
                    formatoptions: {decimalSeparator: ".", thousandsSeparator: ",", decimalPlaces: 2, prefix: "¥ "}
                }
            ],

            viewrecords: true,
            rowNum: 10,
            rowList: [10, 20, 30],
            pager: pager_selector,
            altRows: true,
            //toppager: true,
            jsonReader: {root: "list", page: "page", total: "pages", records: "total", repeatitems: false},
            multiselect: true,
            //multikey: "ctrlKey",
            multiboxonly: true,

            loadComplete: function () {
                var table = this;
                setTimeout(function () {
                    styleCheckbox(table);

                    updateActionIcons(table);
                    updatePagerIcons(table);
                    enableTooltips(table);
                }, 0);
            },

            editurl: "delEmployee",
            caption: "员工信息"

            //,autowidth: true,


            /**
             ,
             grouping:true,
             groupingView : {
						 groupField : ['name'],
						 groupDataSorted : true,
						 plusicon : 'fa fa-chevron-down bigger-110',
						 minusicon : 'fa fa-chevron-up bigger-110'
					},
             caption: "Grouping"
             */

        });
        $(window).triggerHandler('resize.jqGrid');//trigger window resize to make the grid get the correct size


        //enable search/filter toolbar
        //jQuery(grid_selector).jqGrid('filterToolbar',{defaultSearch:true,stringResult:true})
        //jQuery(grid_selector).filterToolbar({});


        //switch element when editing inline
        function aceSwitch(cellvalue, options, cell) {
            setTimeout(function () {
                $(cell).find('input[type=checkbox]')
                        .addClass('ace ace-switch ace-switch-5')
                        .after('<span class="lbl"></span>');
            }, 0);
        }

        //enable datepicker
        function pickDate(cellvalue, options, cell) {
            setTimeout(function () {
                $(cell).find('input[type=text]')
                        .datepicker({format: 'yyyy-mm-dd', autoclose: true});
            }, 0);
        }


        //navButtons
        var jqnav = jQuery(grid_selector).jqGrid('navGrid', pager_selector,
                { 	//navbar options
                    edit: false,
                    editicon: 'ace-icon fa fa-pencil blue',
                    add: false,
                    addicon: 'ace-icon fa fa-plus-circle purple',
                    del: true,
                    delicon: 'ace-icon fa fa-trash-o red',
                    search: false,
                    searchicon: 'ace-icon fa fa-search orange',
                    refresh: true,
                    refreshicon: 'ace-icon fa fa-refresh green',
                    view: false,
                    viewicon: 'ace-icon fa fa-search-plus grey',
                },
                {},
                {},
                {
                    //delete record form
                    recreateForm: true,
                    beforeShowForm: function (e) {
                        var form = $(e[0]);
                        if (form.data('styled')) return false;

                        form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                        style_delete_form(form);

                        form.data('styled', true);
                    },
                    onClick: function (e) {
                        //alert(1);
                    }
                },
                {},
                {}
        )
        //自定義按鈕 編輯
        jqnav.navButtonAdd(pager_selector, {
            caption: "",
            title: "編輯",
            buttonicon: "ace-icon fa fa-pencil blue",
            onClickButton: function () {
                //多选获取
                var id = $(grid_selector).jqGrid('getGridParam', 'selrow');
                if (id == null || id == "") {
                    alert("请选择一条数据！")
                } else {
                    window.open('employee?oper=update&id=' + id, 'newwindow', 'height=600,width=1300,top=100,left=100,toolbar=no,menubar=no,scrollbars=no, resizable=yes,location=no, status=no');
                }
            },
            position: "first"
        })
        //新增
        jqnav.navButtonAdd(pager_selector, {
            caption: "",
            title: "新增",
            buttonicon: "ace-icon fa fa-plus-circle purple",
            onClickButton: function () {
                window.open('employee?oper=add', 'newwindow', 'height=600,width=1300,top=100,left=100,toolbar=no,menubar=no,scrollbars=no, resizable=yes,location=no, status=no');
            },
            position: "first"
        })
        //查看
        jqnav.navButtonAdd(pager_selector, {
            caption: "",
            title: "查看",
            buttonicon: "ace-icon fa fa-search-plus grey",
            onClickButton: function () {
                var id = $(grid_selector).jqGrid('getGridParam', 'selrow');
                if (id == null || id == "") {
                    alert("请选择一条数据！")
                } else {
                    window.open('employee?oper=view&id=' + id, 'newwindow', 'height=600,width=1300,top=100,left=100,toolbar=no,menubar=no,scrollbars=no, resizable=yes,location=no, status=no');
                }            },
            position: "first"
        })


        function style_edit_form(form) {

            //update buttons classes
            var buttons = form.next().find('.EditButton .fm-button');
            buttons.addClass('btn btn-sm').find('[class*="-icon"]').hide();//ui-icon, s-icon
            buttons.eq(0).addClass('btn-primary').prepend('<i class="ace-icon fa fa-check"></i>');
            buttons.eq(1).prepend('<i class="ace-icon fa fa-times"></i>')

            buttons = form.next().find('.navButton a');
            buttons.find('.ui-icon').hide();
            buttons.eq(0).append('<i class="ace-icon fa fa-chevron-left"></i>');
            buttons.eq(1).append('<i class="ace-icon fa fa-chevron-right"></i>');
        }

        function style_delete_form(form) {
            var buttons = form.next().find('.EditButton .fm-button');
            buttons.addClass('btn btn-sm btn-white btn-round').find('[class*="-icon"]').hide();//ui-icon, s-icon
            buttons.eq(0).addClass('btn-danger').prepend('<i class="ace-icon fa fa-trash-o"></i>');
            buttons.eq(1).addClass('btn-default').prepend('<i class="ace-icon fa fa-times"></i>')
        }

        function style_search_filters(form) {
            form.find('.delete-rule').val('X');
            form.find('.add-rule').addClass('btn btn-xs btn-primary');
            form.find('.add-group').addClass('btn btn-xs btn-success');
            form.find('.delete-group').addClass('btn btn-xs btn-danger');
        }

        function style_search_form(form) {
            var dialog = form.closest('.ui-jqdialog');
            var buttons = dialog.find('.EditTable')
            buttons.find('.EditButton a[id*="_reset"]').addClass('btn btn-sm btn-info').find('.ui-icon').attr('class', 'ace-icon fa fa-retweet');
            buttons.find('.EditButton a[id*="_query"]').addClass('btn btn-sm btn-inverse').find('.ui-icon').attr('class', 'ace-icon fa fa-comment-o');
            buttons.find('.EditButton a[id*="_search"]').addClass('btn btn-sm btn-purple').find('.ui-icon').attr('class', 'ace-icon fa fa-search');
        }

        function beforeDeleteCallback(e) {
            var form = $(e[0]);
            if (form.data('styled')) return false;

            form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
            style_delete_form(form);

            form.data('styled', true);
        }

        function beforeEditCallback(e) {
            var form = $(e[0]);
            form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
            style_edit_form(form);
        }


        //it causes some flicker when reloading or navigating grid
        //it may be possible to have some custom formatter to do this as the grid is being created to prevent this
        //or go back to default browser checkbox styles for the grid
        function styleCheckbox(table) {
            /**
             $(table).find('input:checkbox').addClass('ace')
             .wrap('<label />')
             .after('<span class="lbl align-top" />')


             $('.ui-jqgrid-labels th[id*="_cb"]:first-child')
             .find('input.cbox[type=checkbox]').addClass('ace')
             .wrap('<label />').after('<span class="lbl align-top" />');
             */
        }


        //unlike navButtons icons, action icons in rows seem to be hard-coded
        //you can change them like this in here if you want
        function updateActionIcons(table) {
            /**
             var replacement =
             {
                 'ui-ace-icon fa fa-pencil' : 'ace-icon fa fa-pencil blue',
                 'ui-ace-icon fa fa-trash-o' : 'ace-icon fa fa-trash-o red',
                 'ui-icon-disk' : 'ace-icon fa fa-check green',
                 'ui-icon-cancel' : 'ace-icon fa fa-times red'
             };
             $(table).find('.ui-pg-div span.ui-icon').each(function(){
						var icon = $(this);
						var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
						if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
					})
             */
        }

        //replace icons with FontAwesome icons like above
        function updatePagerIcons(table) {
            var replacement =
                    {
                        'ui-icon-seek-first': 'ace-icon fa fa-angle-double-left bigger-140',
                        'ui-icon-seek-prev': 'ace-icon fa fa-angle-left bigger-140',
                        'ui-icon-seek-next': 'ace-icon fa fa-angle-right bigger-140',
                        'ui-icon-seek-end': 'ace-icon fa fa-angle-double-right bigger-140'
                    };
            $('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function () {
                var icon = $(this);
                var $class = $.trim(icon.attr('class').replace('ui-icon', ''));

                if ($class in replacement) icon.attr('class', 'ui-icon ' + replacement[$class]);
            })
        }

        function enableTooltips(table) {
            $('.navtable .ui-pg-button').tooltip({container: 'body'});
            $(table).find('.ui-pg-div').tooltip({container: 'body'});
        }

        //var selr = jQuery(grid_selector).jqGrid('getGridParam','selrow');

        $(document).one('ajaxloadstart.page', function (e) {
            $.jgrid.gridDestroy(grid_selector);
            $('.ui-jqdialog').remove();
        });
    });


</script>
</@mainContainerLayout.layout>