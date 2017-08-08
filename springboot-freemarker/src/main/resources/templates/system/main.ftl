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
            <div class="row">
                <div class="col-sm-5">
                    <div class="widget-box transparent">
                        <div class="widget-header widget-header-flat">
                            <h4 class="widget-title lighter">
                                <i class="ace-icon fa fa-star orange"></i>
                               人资数据
                            </h4>

                            <div class="widget-toolbar">
                                <a href="#" data-action="collapse">
                                    <i class="ace-icon fa fa-chevron-up"></i>
                                </a>
                            </div>
                        </div>

                        <div class="widget-body" style="display: block;">
                            <div class="widget-main no-padding">
                                <table class="table table-bordered table-striped">
                                    <thead class="thin-border-bottom">
                                    <tr>
                                        <th>
                                            <i class="ace-icon fa fa-caret-right blue"></i>名称
                                        </th>

                                        <th>
                                            <i class="ace-icon fa fa-caret-right blue"></i>比率
                                        </th>

                                        <th class="hidden-480">
                                            <i class="ace-icon fa fa-caret-right blue"></i>状态
                                        </th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <tr>
                                        <td>入职率</td>

                                        <td>
                                            <b class="blue">89.23%</b>
                                        </td>

                                        <td class="hidden-480">
                                            <span class="label label-info arrowed-right arrowed-in">正常</span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>离职率</td>

                                        <td>
                                            <b class="blue">11.12%</b>
                                        </td>

                                        <td class="hidden-480">
                                            <span class="label label-success arrowed-in arrowed-in-right">低</span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>流失率</td>

                                        <td>
                                            <b class="blue">12.22%</b>
                                        </td>

                                        <td class="hidden-480">
                                            <span class="label label-danger arrowed">高</span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>流动率</td>

                                        <td>
                                            <b class="blue">33.45%</b>
                                        </td>

                                        <td class="hidden-480">
                                            <span class="label label-info arrowed-right arrowed-in">正常</span>
                                        </td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div><!-- /.widget-main -->
                        </div><!-- /.widget-body -->
                    </div><!-- /.widget-box -->
                </div><!-- /.col -->

                <div class="col-sm-7">
                    <div class="widget-box transparent">
                        <div class="widget-header widget-header-flat">
                            <h4 class="widget-title lighter">
                                <i class="ace-icon fa fa-signal"></i>
                                部门业绩
                            </h4>

                            <div class="widget-toolbar">
                                <a href="#" data-action="collapse">
                                    <i class="ace-icon fa fa-chevron-up"></i>
                                </a>
                            </div>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main padding-4">
                                <div id="sales-charts"
                                     style="width: 100%; height: 220px; padding: 0px; position: relative;">
                                    <canvas class="flot-base" width="1594" height="440"
                                            style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 797px; height: 220px;"></canvas>
                                    <div class="flot-text"
                                         style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);">
                                        <div class="flot-x-axis flot-x1-axis xAxis x1Axis"
                                             style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 27px; text-align: center;">
                                                0.0
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 88px; text-align: center;">
                                                0.5
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 149px; text-align: center;">
                                                1.0
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 210px; text-align: center;">
                                                1.5
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 271px; text-align: center;">
                                                2.0
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 331px; text-align: center;">
                                                2.5
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 392px; text-align: center;">
                                                3.0
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 453px; text-align: center;">
                                                3.5
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 514px; text-align: center;">
                                                4.0
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 575px; text-align: center;">
                                                4.5
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 636px; text-align: center;">
                                                5.0
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 697px; text-align: center;">
                                                5.5
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; max-width: 56px; top: 203px; left: 758px; text-align: center;">
                                                6.0
                                            </div>
                                        </div>
                                        <div class="flot-y-axis flot-y1-axis yAxis y1Axis"
                                             style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; top: 190px; left: 1px; text-align: right;">
                                                -2.000
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; top: 166px; left: 1px; text-align: right;">
                                                -1.500
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; top: 143px; left: 1px; text-align: right;">
                                                -1.000
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; top: 119px; left: 1px; text-align: right;">
                                                -0.500
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; top: 95px; left: 5px; text-align: right;">
                                                0.000
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; top: 71px; left: 5px; text-align: right;">
                                                0.500
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; top: 48px; left: 5px; text-align: right;">
                                                1.000
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; top: 24px; left: 5px; text-align: right;">
                                                1.500
                                            </div>
                                            <div class="flot-tick-label tickLabel"
                                                 style="position: absolute; top: 0px; left: 5px; text-align: right;">
                                                2.000
                                            </div>
                                        </div>
                                    </div>
                                    <canvas class="flot-overlay" width="1594" height="440"
                                            style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 797px; height: 220px;"></canvas>
                                    <div class="legend">
                                        <div style="position: absolute; width: 57px; height: 66px; top: 13px; right: 13px; background-color: rgb(255, 255, 255); opacity: 0.85;"></div>
                                        <table style="position:absolute;top:13px;right:13px;;font-size:smaller;color:#545454">
                                            <tbody>
                                            <tr>
                                                <td class="legendColorBox">
                                                    <div style="border:1px solid #ccc;padding:1px">
                                                        <div style="width:4px;height:0;border:5px solid rgb(237,194,64);overflow:hidden"></div>
                                                    </div>
                                                </td>
                                                <td class="legendLabel">轻工</td>
                                            </tr>
                                            <tr>
                                                <td class="legendColorBox">
                                                    <div style="border:1px solid #ccc;padding:1px">
                                                        <div style="width:4px;height:0;border:5px solid rgb(175,216,248);overflow:hidden"></div>
                                                    </div>
                                                </td>
                                                <td class="legendLabel">建材</td>
                                            </tr>
                                            <tr>
                                                <td class="legendColorBox">
                                                    <div style="border:1px solid #ccc;padding:1px">
                                                        <div style="width:4px;height:0;border:5px solid rgb(203,75,75);overflow:hidden"></div>
                                                    </div>
                                                </td>
                                                <td class="legendLabel">其他</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div><!-- /.widget-main -->
                        </div><!-- /.widget-body -->
                    </div><!-- /.widget-box -->
                </div><!-- /.col -->
            </div>
        </div>
    </div>
</div>
</@defaultLayout.layout>