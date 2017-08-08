<#-- 引入布局指令的命名空间 --> <#import "../layout/mainContainerLayout.ftl" as
mainContainerLayout> <#-- 调用布局指令 --> <@mainContainerLayout.layout>
<div id="user-profile-3" class="user-profile row">
    <div class="col-sm-offset-1 col-sm-10">

        <form class="form-horizontal" id="form">
            <div class="tabbable">
                <ul class="nav nav-tabs padding-16">
                    <li class="active"><a data-toggle="tab" href="#edit-basic"
                                          aria-expanded="true"> <i
                            class="green ace-icon fa fa-pencil-square-o bigger-125"></i>
                        基本信息
                    </a></li>
                    <!--
                                        <li class=""><a data-toggle="tab" href="#edit-settings"
                                            aria-expanded="false"> <i
                                                class="purple ace-icon fa fa-cog bigger-125"></i> 设置
                                        </a></li>

                                        <li class=""><a data-toggle="tab" href="#edit-file"
                                            aria-expanded="false"> <i
                                                class="blue ace-icon fa fa-key bigger-125"></i> 资料
                                        </a></li> -->
                </ul>

                <div class="tab-content profile-edit-tab-content">
                    <div id="edit-basic" class="tab-pane active">
                        <h4 class="header blue bolder smaller">基本信息</h4>

                        <div class="row">
                            <!--预留头像  -->
                            <!-- <div class="col-xs-12 col-sm-4">
                                <label class="ace-file-input ace-file-multiple"><input
                                    type="file"><span
                                    class="ace-file-container hide-placeholder selected"><span
                                        class="ace-file-name large" data-title="logo.png"><img
                                            class="middle"
                                            style="background-image: url(&quot;data:image/png;base64,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&quot;); width: 150px; height: 150px;"
                                            src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVQImWNgYGBgAAAABQABh6FO1AAAAABJRU5ErkJggg=="><i
                                            class=" ace-icon fa fa-picture-o file-image"></i></span></span><a
                                    class="remove" href="#"><i class=" ace-icon fa fa-times"></i></a></label>
                            </div> -->

                            <div class="vspace-12-sm"></div>

                            <div class="col-xs-12 col-sm-8">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label no-padding-right"
                                           for="name">姓名</label>

                                    <div class="col-sm-8">
                                        <input class="input-small" type="text" id="name"
                                               placeholder="Name" value="${(info.name)! }">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <hr>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="birthday">生日</label>

                            <div class="col-sm-9">
                                <div class="input-medium">
                                    <div class="input-group">
                                        <input class="input-medium date-picker" id="birthday"
                                               value="${(info.birthday?string('yyyy-MM-dd'))!}"
                                               type="text" data-date-format="yyyy-mm-dd"
                                               placeholder="yyyy-mm-dd"> <span
                                            class="input-group-addon"> <i
                                            class="ace-icon fa fa-calendar"></i>
										</span>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Gender</label>

                            <div class="col-sm-9">
                                <label class="inline"> <input name="gender"
                                                              <#if (!info??||info.gender==0)!true>checked="checked"</#if>
                                                              type="radio" class="ace" value=0> <span
                                        class="lbl middle">
										男</span>
                                </label> &nbsp; &nbsp; &nbsp; <label class="inline"> <input
                                <#if (info??&&info.gender==1)!false>checked="checked"</#if>
                                name="gender" type="radio" class="ace" value=1> <span
                                    class="lbl middle"> 女</span>
                            </label>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="identity">身份证</label>

                            <div class="col-sm-9">
                                <input class="input-large" type="text" id="identity" value="${(info.identity)! }"
                                       value="Alex">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="graduateSchool">毕业院校</label>

                            <div class="col-sm-9">
                                <input class="input-large" type="text" id="graduateSchool"
                                       value="${(info.graduateSchool)! }"
                                       value="Alex">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="education">学历</label>

                            <div class="col-sm-9">
                                <input class="input-medium" type="text" id="education" value="${(info.education)! }"
                                       value="Alex">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="major">专业</label>

                            <div class="col-sm-9">
                                <input class="input-medium" type="text" id="major" value="${(info.major)! }"
                                       value="Alex">
                            </div>
                        </div>


                        <h4 class="header blue bolder smaller">联系方式</h4>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="mobile">手机</label>

                            <div class="col-sm-9">
								<span class="input-icon input-icon-right"> <input
                                        class="input-medium input-mask-mobile" type="text" value="${(info.mobile)! }"
                                        id="mobile"> <i
                                        class="ace-icon fa fa-mobile fa-flip-horizontal"></i>
								</span>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="address">家庭住址</label>

                            <div class="col-sm-9">
                                <input class="input-large" type="text" id="address" value="${(info.address)! }"
                                       value="Alex">
                            </div>
                        </div>


                        <h4 class="header blue bolder smaller">人事信息</h4>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="department">部门</label>
                            <div class="col-sm-9">
                                <input class="input-large" type="text" id="department" value="${(info.department)! }"
                                       value="Alex">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="position">职位</label>
                            <div class="col-sm-9">
                                <input class="input-large" type="text" id="position" value="${(info.position)! }"
                                       value="Alex">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="salary">薪资</label>
                            <div class="col-sm-9">
                                <input class="input-smal" type="text" id="salary"
                                       value="${(info.salary?string(',###.00'))!} ">
                                <a href="#modal-table" role="button" class="green" data-toggle="modal">薪资详情</a>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="employmentDate">入职日期</label>

                            <div class="col-sm-9">
                                <div class="input-medium">
                                    <div class="input-group">
                                        <input class="input-medium date-picker" id="employmentDate"
                                               value="${(info.employmentDate?string('yyyy-MM-dd'))!}"
                                               type="text" data-date-format="yyyy-mm-dd"
                                               placeholder="yyyy-mm-dd"> <span
                                            class="input-group-addon"> <i
                                            class="ace-icon fa fa-calendar"></i>
										</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="separationDate">离职日期</label>

                            <div class="col-sm-9">
                                <div class="input-medium">
                                    <div class="input-group">
                                        <input class="input-medium date-picker" id="separationDate"
                                               value="${(info.separationDate?string('yyyy-MM-dd'))!}"
                                               type="text" data-date-format="yyyy-mm-dd"
                                               placeholder="yyyy-mm-dd"> <span
                                            class="input-group-addon"> <i
                                            class="ace-icon fa fa-calendar"></i>
											</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="regularDate">转正日期</label>

                            <div class="col-sm-9">
                                <div class="input-medium">
                                    <div class="input-group">
                                        <input class="input-medium date-picker" id="regularDate"
                                               value="${(info.regularDate?string('yyyy-MM-dd'))!}"
                                               type="text" data-date-format="yyyy-mm-dd"
                                               placeholder="yyyy-mm-dd"> <span
                                            class="input-group-addon"> <i
                                            class="ace-icon fa fa-calendar"></i>
											</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="ontractStartDate">合同开始于</label>

                            <div class="col-sm-9">
                                <div class="input-medium">
                                    <div class="input-group">
                                        <input class="input-medium date-picker" id="ontractStartDate"
                                               value="${(info.ontractStartDate?string('yyyy-MM-dd'))!}"
                                               type="text" data-date-format="yyyy-mm-dd"
                                               placeholder="yyyy-mm-dd"> <span
                                            class="input-group-addon"> <i
                                            class="ace-icon fa fa-calendar"></i>
											</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"
                                   for="ontractEndDate">合同结束于</label>

                            <div class="col-sm-9">
                                <div class="input-medium">
                                    <div class="input-group">
                                        <input class="input-medium date-picker" id="ontractEndDate"
                                               value="${(info.ontractEndDate?string('yyyy-MM-dd'))!}"
                                               type="text" data-date-format="yyyy-mm-dd"
                                               placeholder="yyyy-mm-dd"> <span
                                            class="input-group-addon"> <i
                                            class="ace-icon fa fa-calendar"></i>
											</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <#--hidden input -->
                        <input type="hidden" id="id" value="${(info.id)!}"/>
                    </div>

                    <!-- <div id="edit-settings" class="tab-pane">
                        <div class="space-10"></div>

                        <div>
                            <label class="inline"> <input type="checkbox"
                                name="form-field-checkbox" class="ace"> <span
                                class="lbl"> Make my profile public</span>
                            </label>
                        </div>

                        <div class="space-8"></div>

                        <div>
                            <label class="inline"> <input type="checkbox"
                                name="form-field-checkbox" class="ace"> <span
                                class="lbl"> Email me new updates</span>
                            </label>
                        </div>

                        <div class="space-8"></div>

                        <div>
                            <label> <input type="checkbox" name="form-field-checkbox"
                                class="ace"> <span class="lbl"> Keep a history of
                                    my conversations</span>
                            </label> <label> <span class="space-2 block"></span> for <input
                                type="text" class="input-mini" maxlength="3"> days
                            </label>
                        </div>
                    </div> -->

                    <!-- <div id="edit-file" class="tab-pane">
                        <ul class="ace-thumbnails">
                            <li><a href="#" data-rel="colorbox"> <img alt="150x150"
                                    src="../assets/images/gallery/thumb-1.jpg">
                                    <div class="text">
                                        <div class="inner">Sample Caption on Hover</div>
                                    </div>
                            </a>

                                <div class="tools tools-bottom">
                                    <a href="#"> <i class="ace-icon fa fa-link"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-paperclip"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-pencil"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-times red"></i>
                                    </a>
                                </div></li>

                            <li><a href="#" data-rel="colorbox"> <img alt="150x150"
                                    src="../assets/images/gallery/thumb-2.jpg">
                                    <div class="text">
                                        <div class="inner">Sample Caption on Hover</div>
                                    </div>
                            </a>

                                <div class="tools tools-bottom">
                                    <a href="#"> <i class="ace-icon fa fa-link"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-paperclip"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-pencil"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-times red"></i>
                                    </a>
                                </div></li>

                            <li><a href="#" data-rel="colorbox"> <img alt="150x150"
                                    src="../assets/images/gallery/thumb-3.jpg">
                                    <div class="text">
                                        <div class="inner">Sample Caption on Hover</div>
                                    </div>
                            </a>

                                <div class="tools tools-bottom">
                                    <a href="#"> <i class="ace-icon fa fa-link"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-paperclip"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-pencil"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-times red"></i>
                                    </a>
                                </div></li>

                            <li><a href="#" data-rel="colorbox"> <img alt="150x150"
                                    src="../assets/images/gallery/thumb-4.jpg">
                                    <div class="text">
                                        <div class="inner">Sample Caption on Hover</div>
                                    </div>
                            </a>

                                <div class="tools tools-bottom">
                                    <a href="#"> <i class="ace-icon fa fa-link"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-paperclip"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-pencil"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-times red"></i>
                                    </a>
                                </div></li>

                            <li><a href="#" data-rel="colorbox"> <img alt="150x150"
                                    src="../assets/images/gallery/thumb-5.jpg">
                                    <div class="text">
                                        <div class="inner">Sample Caption on Hover</div>
                                    </div>
                            </a>

                                <div class="tools tools-bottom">
                                    <a href="#"> <i class="ace-icon fa fa-link"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-paperclip"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-pencil"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-times red"></i>
                                    </a>
                                </div></li>

                            <li><a href="#" data-rel="colorbox"> <img alt="150x150"
                                    src="../assets/images/gallery/thumb-6.jpg">
                                    <div class="text">
                                        <div class="inner">Sample Caption on Hover</div>
                                    </div>
                            </a>

                                <div class="tools tools-bottom">
                                    <a href="#"> <i class="ace-icon fa fa-link"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-paperclip"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-pencil"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-times red"></i>
                                    </a>
                                </div></li>

                            <li><a href="#" data-rel="colorbox"> <img alt="150x150"
                                    src="../assets/images/gallery/thumb-1.jpg">
                                    <div class="text">
                                        <div class="inner">Sample Caption on Hover</div>
                                    </div>
                            </a>

                                <div class="tools tools-bottom">
                                    <a href="#"> <i class="ace-icon fa fa-link"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-paperclip"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-pencil"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-times red"></i>
                                    </a>
                                </div></li>

                            <li><a href="#" data-rel="colorbox"> <img alt="150x150"
                                    src="../assets/images/gallery/thumb-2.jpg">
                                    <div class="text">
                                        <div class="inner">Sample Caption on Hover</div>
                                    </div>
                            </a>

                                <div class="tools tools-bottom">
                                    <a href="#"> <i class="ace-icon fa fa-link"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-paperclip"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-pencil"></i>
                                    </a> <a href="#"> <i class="ace-icon fa fa-times red"></i>
                                    </a>
                                </div></li>
                        </ul>
                    </div> -->
                </div>
            </div>
            <div class="clearfix form-actions">
                <div class="col-md-offset-3 col-md-9">
                    <button class="btn btn-info" type="button" id="save">
                        <i class="ace-icon fa fa-check bigger-110"></i> 保存
                    </button>

                    &nbsp; &nbsp;
                    <button class="btn" type="reset" id="close">
                        <i class="ace-icon fa fa-undo bigger-110"></i> 关闭
                    </button>
                </div>
            </div>
            <!-- modal start-->
            <div id="modal-table" class="modal fade" tabindex="-1" style="display: none;">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header no-padding">
                            <div class="table-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    <span class="white">×</span>
                                </button>
                                调薪历史
                            </div>
                        </div>

                        <div class="modal-body no-padding">
                            <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                                <thead>
                                <tr>
                                    <th>员工姓名</th>
                                    <th>调薪日期</th>
                                    <th>薪资</th>
                                </tr>
                                </thead>

                                <tbody>
                                    <#if salaryHistories?? && (salaryHistories?size > 0) >
                                        <#list salaryHistories as history>
                                        <tr>
                                            <td>${(history.ename)!}</td>
                                            <td>${(history.enableDate?string('yyyy-MM-dd'))!}</td>
                                            <td>${(history.salary?string(',###.00'))!} </td>
                                        </tr>
                                        </#list>
                                    </#if>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div>
        </form>
    </div>
    <!-- /.span -->
</div>
<script type="text/javascript">

    function disableEditor() {
        $('input').attr("readonly", "readonly");
        $('#save').hide();
    }
    function rmoney(s)
    {
        return parseFloat(s.replace(/[^\d\.-]/g, ""));
    }
    $(function ($) {
        if ('${oper}' == 'view') {
            disableEditor();
        } else {

            $('.date-picker').datepicker({
                autoclose: true,
                todayHighlight: true
            })
                    .next().on(ace.click_event, function () {
                $(this).prev().focus();
            });

        }
        $('#close').on(ace.click_event, function () {
            window.close();
        })
        $('#save').on(ace.click_event, function () {
            var id = $('#id').val();
            var name = $('#name').val();
            var birthday = $('#birthday').val();
            var gender = $('[name="gender"]:checked').val()
            var identity = $('#identity').val();
            var graduateSchool = $('#graduateSchool').val();
            var education = $('#education').val();
            var major = $('#major').val();
            var mobile = $('#mobile').val();
            var address = $('#address').val();
            var department = $('#department').val();
            var position = $('#position').val();
            var salary = rmoney($('#salary').val());
            var employmentDate = $('#employmentDate').val();
            var separationDate = $('#separationDate').val();
            var regularDate = $('#regularDate').val();
            var ontractStartDate = $('#ontractStartDate').val();
            var ontractEndDate = $('#ontractEndDate').val();
            /*alert(name);
            alert(birthday);
            alert(gender);
            alert(identity);
            alert(graduateSchool);
            alert(education);
            alert(major);
            alert(mobile);
            alert(address);
            alert(department);
            alert(position);
            alert(salary);
            alert(employmentDate);*/


            $.ajax({
                url: 'employee',
                type: "post",

                data: {
                    id: id,
                    name: name,
                    birthday: new Date(birthday.replace(/-/g, "/")),
                    gender: gender,
                    identity: identity,
                    graduateSchool: graduateSchool,
                    education: education,
                    major: major,
                    mobile: mobile,
                    address: address,
                    department: department,
                    position: position,
                    salary: salary,
                    employmentDate: new Date(employmentDate.replace(/-/g, "/")),
                    separationDate: new Date(separationDate.replace(/-/g, "/")),
                    regularDate: new Date(regularDate.replace(/-/g, "/")),
                    ontractStartDate: new Date(ontractStartDate.replace(/-/g, "/")),
                    ontractEndDate: new Date(ontractEndDate.replace(/-/g, "/"))
                },
                success: function (data) {
                    alert('操作成功！');
                    window.opener.$('#grid-table').jqGrid("setGridParam",
                            {url: "/pm/employees", page: 1, datatype: "json"}).trigger("reloadGrid");
                    // $(window.parent.document).find("#ddd").html("232");
                    window.close();
                },
                error: function () {
                    alert('error!');
                }
            })
        })
    });

</script>


</@mainContainerLayout.layout>
