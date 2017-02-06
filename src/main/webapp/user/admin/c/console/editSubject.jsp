<%--
  User: liao
  Date: 16-12-24
  Time: 下午1:35
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <jsp:include page="common/style.jsp"/>

</head>
<body>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Modern</a>
        </div>
        <!-- /.navbar-header -->
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-comments-o"></i><span class="badge">4</span></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-menu-header">
                        <strong>Messages</strong>
                        <div class="progress thin">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                <span class="sr-only">40% Complete (success)</span>
                            </div>
                        </div>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/static/images/1.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                            <span class="label label-info">NEW</span>
                        </a>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/static/images/2.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                            <span class="label label-info">NEW</span>
                        </a>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/static/images/3.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                        </a>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/static/images/4.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                        </a>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/static/images/5.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                        </a>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/static/images/pic1.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                        </a>
                    </li>
                    <li class="dropdown-menu-footer text-center">
                        <a href="#">View all messages</a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="${pageContext.request.contextPath}/static/images/1.png"><span class="badge">9</span></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-menu-header text-center">
                        <strong>Account</strong>
                    </li>
                    <li class="m_2"><a href="#"><i class="fa fa-bell-o"></i> Updates <span class="label label-info">42</span></a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-envelope-o"></i> Messages <span class="label label-success">42</span></a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-tasks"></i> Tasks <span class="label label-danger">42</span></a></li>
                    <li><a href="#"><i class="fa fa-comments"></i> Comments <span class="label label-warning">42</span></a></li>
                    <li class="dropdown-menu-header text-center">
                        <strong>Settings</strong>
                    </li>
                    <li class="m_2"><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-wrench"></i> Settings</a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-usd"></i> Payments <span class="label label-default">42</span></a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-file"></i> Projects <span class="label label-primary">42</span></a></li>
                    <li class="divider"></li>
                    <li class="m_2"><a href="#"><i class="fa fa-shield"></i> Lock Profile</a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-lock"></i> Logout</a></li>
                </ul>
            </li>
        </ul>
        <form class="navbar-form navbar-right">
            <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
        </form>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="index.html"><i class="fa fa-dashboard fa-fw nav_icon"></i>新建新闻</a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">lala</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-laptop nav_icon"></i>管理新闻<span class="fa arrow"></span></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-indent nav_icon"></i>今日打卡<span class="fa arrow"></span></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-envelope nav_icon"></i>擂台挑战<span class="fa arrow"></span></a>
                    </li>
                    <li>
                        <a href="widgets.html"><i class="fa fa-flask nav_icon"></i>答题闯关</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-check-square-o nav_icon"></i>题库管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="forms.html">添加题库</a>
                            </li>
                            <li>
                                <a href="validation.html">修改题库</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table nav_icon"></i>用户管理<span class="fa arrow"></span></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>Css<span class="fa arrow"></span></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="page-wrapper">
        <form id="editAnswer">
        <div class="main">
            <div class="panel panel-style panel-default">
                <div class="panel-heading">
                    <h3>设置关卡</h3>
                </div>
                <div class="panel-body">

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="levelName">关卡名称：</label>
                            <div class="form-group col-sm-10">
                                <input type="text" class="form-control" id="levelName" name="name" placeholder="请输入关卡名称">
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="file" name="file" id="file" class="btn btn-table select-test-btn">选择题库</input>
                        </div>

                </div>
            </div>
            <div class="panel panel-style panel-default">
                <div class="panel-heading">
                    <h3>选择题答案</h3>
                </div>
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>题号</th>
                            <th>答案</th>
                            <th>A</th>
                            <th>B</th>
                            <th>C</th>
                            <th>D</th>

                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>
                               <span>
                                    <input type="text" id="answer1" name="answer1" readonly="true">
                               </span>
                            </td>
                            <td>
                                <input type="checkbox" id="select1" value="A">
                            </td>
                            <td>
                                <input type="checkbox" id="select2" value="B">
                            </td>
                            <td>
                                <input type="checkbox" id="select3" value="C">
                            </td>
                            <td>
                                <input type="checkbox" id="select4" value="D">
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>
                               <span>
                                    <input type="text" id="answer2" name="answer2" readonly="true">
                               </span>
                            </td>
                            <td>
                                <input type="checkbox" id="select5" value="A">
                            </td>
                            <td>
                                <input type="checkbox" id="select6" value="B">
                            </td>
                            <td>
                                <input type="checkbox" id="select7" value="C">
                            </td>
                            <td>
                                <input type="checkbox" id="select8" value="D">
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>
                               <span>
                                    <input type="text" id="answer3" name="answer3" readonly="true">
                               </span>
                            </td>
                            <td>
                                <input type="checkbox" id="select9" value="A">
                            </td>
                            <td>
                                <input type="checkbox" id="select10" value="B">
                            </td>
                            <td>
                                <input type="checkbox" id="select11" value="C">
                            </td>
                            <td>
                                <input type="checkbox" id="select12" value="D">
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>
                               <span>
                                    <input type="text" id="answer4" name="answer4" readonly="true">
                               </span>
                            </td>
                            <td>
                                <input type="checkbox" id="select13" value="A">
                            </td>
                            <td>
                                <input type="checkbox" id="select14" value="B">
                            </td>
                            <td>
                                <input type="checkbox" id="select15" value="C">
                            </td>
                            <td>
                                <input type="checkbox" id="select16" value="D">
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>
                               <span>
                                    <input type="text" id="answer5" name="answer5" readonly="true">
                               </span>
                            </td>
                            <td>
                                <input type="checkbox" id="select17" value="A">
                            </td>
                            <td>
                                <input type="checkbox" id="select18" value="B">
                            </td>
                            <td>
                                <input type="checkbox" id="select19" value="C">
                            </td>
                            <td>
                                <input type="checkbox" id="select20" value="D">
                            </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>
                               <span>
                                    <input type="text" id="answer6" name="answer6" readonly="true">
                               </span>
                            </td>
                            <td>
                                <input type="checkbox" id="select21" value="A">
                            </td>
                            <td>
                                <input type="checkbox" id="select22" value="B">
                            </td>
                            <td>
                                <input type="checkbox" id="select23" value="C">
                            </td>
                            <td>
                                <input type="checkbox" id="select24" value="D">
                            </td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>
                               <span>
                                    <input type="text" id="answer7" name="answer7" readonly="true">
                               </span>
                            </td>
                            <td>
                                <input type="checkbox" id="select25" value="A">
                            </td>
                            <td>
                                <input type="checkbox" id="select26" value="B">
                            </td>
                            <td>
                                <input type="checkbox" id="select27" value="C">
                            </td>
                            <td>
                                <input type="checkbox" id="select28" value="D">
                            </td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>
                               <span>
                                    <input type="text" id="answer8" name="answer8" readonly="true">
                               </span>
                            </td>
                            <td>
                                <input type="checkbox" id="select29" value="A">
                            </td>
                            <td>
                                <input type="checkbox" id="select30" value="B">
                            </td>
                            <td>
                                <input type="checkbox" id="select31" value="C">
                            </td>
                            <td>
                                <input type="checkbox" id="select32" value="D">
                            </td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>
                               <span>
                                    <input type="text" id="answer9" name="answer9" readonly="true">
                               </span>
                            </td>
                            <td>
                                <input type="checkbox" id="select33" value="A">
                            </td>
                            <td>
                                <input type="checkbox" id="select34" value="B">
                            </td>
                            <td>
                                <input type="checkbox" id="select35" value="C">
                            </td>
                            <td>
                                <input type="checkbox" id="select36" value="D">
                            </td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>
                               <span>
                                    <input type="text" id="answer10" name="answer10" readonly="true">
                               </span>
                            </td>
                            <td>
                                <input type="checkbox" id="select37" value="A">
                            </td>
                            <td>
                                <input type="checkbox" id="select38" value="B">
                            </td>
                            <td>
                                <input type="checkbox" id="select39" value="C">
                            </td>
                            <td>
                                <input type="checkbox" id="select40" value="D">
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="panel panel-style panel-default">
                <div class="panel-heading">
                    <h3>填空题答案</h3>
                </div>
                <div class="panel-body">
                    <form class="form form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-sm-2">1</label>
                            <div class="form-group col-sm-10">
                                <input type="text" name="blank1" id="blank1" class="form-control" placeholder="请用空格隔开每个答案">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">2</label>
                            <div class="form-group col-sm-10">
                                <input type="text" name="blank2" id="blank2" class="form-control" placeholder="请用空格隔开每个答案">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">3</label>
                            <div class="form-group col-sm-10">
                                <input type="text" name="blank3" id="blank3" class="form-control" placeholder="请用空格隔开每个答案">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">4</label>
                            <div class="form-group col-sm-10">
                                <input type="text" name="blank4" id="blank4" class="form-control" placeholder="请用空格隔开每个答案">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">5</label>
                            <div class="form-group col-sm-10">
                                <input type="text" name="blank5" id="blank5" class="form-control" placeholder="请用空格隔开每个答案">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">6</label>
                            <div class="form-group col-sm-10">
                                <input type="text" name="blank6" id="blank6" class="form-control" placeholder="请用空格隔开每个答案">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">7</label>
                            <div class="form-group col-sm-10">
                                <input type="text" name="blank7" id="blank7" class="form-control" placeholder="请用空格隔开每个答案">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">8</label>
                            <div class="form-group col-sm-10">
                                <input type="text" name="blank8" id="blank8" class="form-control" placeholder="请用空格隔开每个答案">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">9</label>
                            <div class="form-group col-sm-10">
                                <input type="text" name="blank9" id="blank9" class="form-control" placeholder="请用空格隔开每个答案">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">10</label>
                            <div class="form-group col-sm-10">
                                <input type="text" name="blank10" id="blank10" class="form-control" placeholder="请用空格隔开每个答案">
                            </div>
                        </div>
                    </form>

                </div>
            </div>
            <div class="form-group">
                <button type="button" class="btn btn-table submit-btn" onclick="submitAnswer()">提交</button>
            </div>
        </div>
        </form>
    </div>
</div>

<jsp:include page="common/js.jsp"/>
<script src="${pageContext.request.contextPath}/static/js/angular.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
<script src="${pageContext.request.contextPath}/static/js/editAnswer.js"></script>

<script type="text/javascript">
    function submitAnswer(){
        var name=$.trim($("#levelName").val());
        var answer1=$("#answer1").val();
        var answer2=$("#answer2").val();
        var answer3=$("#answer3").val();
        var answer4=$("#answer4").val();
        var answer5=$("#answer5").val();
        var answer6=$("#answer6").val();
        var answer7=$("#answer7").val();
        var answer8=$("#answer8").val();
        var answer9=$("#answer9").val();
        var answer10=$("#answer10").val()

        var blank1=$.trim($("#blank1").val());
        var blank2=$.trim($("#blank2").val());
        var blank3=$.trim($("#blank3").val());
        var blank4=$.trim($("#blank4").val());
        var blank5=$.trim($("#blank5").val());
        var blank6=$.trim($("#blank6").val());
        var blank7=$.trim($("#blank7").val());
        var blank8=$.trim($("#blank8").val());
        var blank9=$.trim($("#blank9").val());
        var blank10=$.trim($("#blank10").val());



        if(name==null||name==''){
            sweetAlert("请输入关卡名称！");
        }else if(answer1==null||answer1==''
                ||answer2==null||answer2==''
                ||answer3==null||answer3==''
                ||answer4==null||answer4==''
                ||answer5==null||answer5==''
                ||answer6==null||answer6==''
                ||answer7==null||answer7==''
                ||answer8==null||answer8==''
                ||answer9==null||answer9==''
                ||answer10==null||answer10==''){
            sweetAlert("请检查选择题答案是否填写完整！");
        }else if(blank1==null||blank1==''||blank2==null||blank2==''
                ||blank3==null||blank3==''
                ||blank4==null||blank4==''
                ||blank5==null||blank5==''
                ||blank6==null||blank6==''
                ||blank7==null||blank7==''
                ||blank8==null||blank8==''
                ||blank9==null||blank9==''
                ||blank10==null||blank10==''){
            sweetAlert("请检查选择题答案是否填写完整！");
        }else {
            document.getElementById("blank1").value=blank1;
            document.getElementById("blank2").value=blank2;
            document.getElementById("blank3").value=blank3;
            document.getElementById("blank4").value=blank4;
            document.getElementById("blank5").value=blank5;
            document.getElementById("blank6").value=blank6;
            document.getElementById("blank7").value=blank7;
            document.getElementById("blank8").value=blank8;
            document.getElementById("blank9").value=blank9;
            document.getElementById("blank10").value=blank10;
            var form=new FormData($("#editAnswer")[0]);
            swal({title: "确定发布吗?",
                        text: "",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        cancelButtonText:"取消",
                        confirmButtonText: "确定",
                        closeOnConfirm: false },
                    function(){
                        $.ajax({
                            url:"${pageContext.request.contextPath}/user/admin/c/saveSubject",
                            type:"POST",
                            data:form,
                            contentType:false,
                            processData:false,
                            dataType:"json",
                            success:function (result) {
                                if(result.success){
                                    swal({
                                                title:"提交成功！",
                                                text:"",
                                                type:"success"},
                                            function(isConfirm){
                                                window.location.reload();
                                            }
                                    );
                                }else{
                                    swal({
                                        title:"发布失败！误操作或者网络断开！",
                                        text:"",
                                        type:"error"}
                                    );
                                }
                            },

                        });
                    });
        }


        }

</script>
</body>
</html>
