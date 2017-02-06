<%--
  User: liao
  Date: 16-12-28
  Time: 下午2:43
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Home</title>
    <jsp:include page="common/style.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-datetimepicker.css">

</head>
<body>
<div id="wrapper">
    <!-- Navigation -->
    <jsp:include page="common/leftNav.jsp"/>

    <div id="page-wrapper">
        <div class="main">
            <div class="panel panel-style panel-default">
                <div class="panel-heading">
                    <h3>添加用户</h3>
                </div>
                <div class="panel-body">
                    <form method="post" class="form form-horizontal">
                        <div class="form-group">
                            <label for="userName" class="col-xs-3 col-md-2  col-lg-1 control-label">姓名：</label>
                            <div class=" col-xs-9 col-md-10 col-lg-11 ">
                                <input type="text" id="userName" name="userName" class="form-control" placeholder="请输入姓名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="number" class="col-xs-3 col-md-2  col-lg-1 control-label">学号：</label>
                            <div class=" col-xs-9 col-md-10 col-lg-11 ">
                                <input type="text" id="number" name="number" class="form-control" placeholder="请输入学号">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-xs-3 col-md-2  col-lg-1">性别：</label>
                            <div class=" col-xs-9 col-md-10 col-lg-11 ">
                                女： <input type="radio" name="sex" id="girl" value="girl">
                                男： <input type="radio" name="sex" id="boy" value="boy">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="control-label col-xs-3 col-md-2  col-lg-1">出生年月</label>
                            <div class="timePicker col-xs-9 col-md-10 col-lg-11 " data-date-format="yyyy-mm-dd" data-link-format="yyyy-mm-dd">
                                <input class="form-control" id="birth" name="birth" type="text" placeholder="YYYY-MM-DD" readonly="">
                                <!--<input type="text" id="birthday"class="form-control datainp indate input-style" placeholder="请输入姓名">-->
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="political" class="control-label col-xs-3 col-md-2  col-lg-1">政治面貌：</label>
                            <div class=" col-xs-9 col-md-10 col-lg-11 ">
                                <!--<input type="text" id="status"class="form-control" placeholder="请输入政治面貌">-->
                                <select name="political" id="political" class="form-control">
                                    <option value="0">中共党员</option>
                                    <option value="1">中共预备党员</option>
                                    <option value="2">共青团员</option>
                                    <option value="3">群众</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nation" class="control-label col-xs-3 col-md-2  col-lg-1">民族：</label>
                            <div class=" col-xs-9 col-md-10 col-lg-11 ">
                                <select name="nation" id="nation" class="form-control">
                                    <option value="汉族">汉族</option>
                                    <option value="蒙古族">蒙古族</option>
                                    <option value="回族">回族</option>
                                    <option value="藏族">藏族</option>
                                    <option value="维吾尔族">维吾尔族</option>
                                    <option value="苗族">苗族</option>
                                    <option value="彝族">彝族</option>
                                    <option value="壮族">壮族</option>
                                    <option value="布依族">布依族</option>
                                    <option value="朝鲜族">朝鲜族</option>
                                    <option value="满族">满族</option>
                                    <option value="侗族">侗族</option>
                                    <option value="瑶族">瑶族</option>
                                    <option value="白族">白族</option>
                                    <option value="土家族">土家族</option>
                                    <option value="哈尼族">哈尼族</option>
                                    <option value="哈萨克族">哈萨克族</option>
                                    <option value="傣族">傣族</option>
                                    <option value="黎族">黎族</option>
                                    <option value="傈僳族">傈僳族</option>
                                    <option value="佤族">佤族</option>
                                    <option value="畲族">畲族</option>
                                    <option value="高山族">高山族</option>
                                    <option value="拉祜族">拉祜族</option>
                                    <option value="水族">水族</option>
                                    <option value="东乡族">东乡族</option>
                                    <option value="纳西族">纳西族</option>
                                    <option value="景颇族">景颇族</option>
                                    <option value="柯尔克孜族">柯尔克孜族</option>
                                    <option value="土族">土族</option>
                                    <option value="达斡尔族">达斡尔族</option>
                                    <option value="仫佬族">仫佬族</option>
                                    <option value="羌族">羌族</option>
                                    <option value="布朗族">布朗族</option>
                                    <option value="撒拉族">撒拉族</option>
                                    <option value="毛南族">毛南族</option>
                                    <option value="仡佬族">仡佬族</option>
                                    <option value="锡伯族">锡伯族</option>
                                    <option value="阿昌族">阿昌族</option>
                                    <option value="普米族">普米族</option>
                                    <option value="塔吉克族">塔吉克族</option>
                                    <option value="怒族">怒族</option>
                                    <option value="乌孜别克族">乌孜别克族</option>
                                    <option value="俄罗斯族">俄罗斯族</option>
                                    <option value="鄂温克族">鄂温克族</option>
                                    <option value="德昂族">德昂族</option>
                                    <option value="保安族">保安族</option>
                                    <option value="裕固族">裕固族</option>
                                    <option value="京族">京族</option>
                                    <option value="塔塔尔族">塔塔尔族</option>
                                    <option value="独龙族">独龙族</option>
                                    <option value="鄂伦春族">鄂伦春族</option>
                                    <option value="赫哲族">赫哲族</option>
                                    <option value="门巴族">门巴族</option>
                                    <option value="珞巴族">珞巴族</option>
                                    <option value="基诺族">基诺族</option>
                                </select>
                                    <%--<input type="text" id="nation"class="form-control" placeholder="请输入民族">--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="place" class="control-label col-xs-3 col-md-2  col-lg-1">籍贯：</label>
                            <div class=" col-xs-9 col-md-10 col-lg-11 ">
                                <input type="text" id="place" name="place" class="form-control" placeholder="请输入籍贯">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="major" class="control-label col-xs-3 col-md-2  col-lg-1">班级：</label>
                            <div class="col-xs-3">
                                <select class="form-control" name="major" id="major" onchange="func1(this)">
                                    <option value="-1">--专业--</option>
                                </select>
                            </div>
                            <div class="col-xs-3">
                                <select class="form-control" name="grade" id="grade" onchange="func2(this)">
                                    <option value="-1">--年级--</option>
                                </select>
                            </div>
                            <div class="col-xs-3">
                                <select class="form-control" name="testClass" id="testClass">
                                    <option value="-1">--班级--</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="button" onclick="submitUser()" class="btn btn-table submit-btn">添加</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="common/js.jsp"/>
<script src="${pageContext.request.contextPath}/static/js/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
    $('#birth').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        format:"yyyy-mm-dd",
        forceParse: 0
    });
</script>
<script>
    var majors = ["计算机","计教", "物联网", "信管"]; //直接声明Array

    var grades = [
        ["2013", "2014", "2015","2016"],
        ["2013", "2014", "2015","2016"],
        ["2013", "2014", "2015","2016"],
        ["2013", "2014", "2015","2016"]
    ];
    var classes = [
        [
            ["1班", "2班", "3班"],
            ["1班", "2班", "3班","4班","5班"],
            ["1班", "2班", "3班","4班","5班","6班"],
            ["1班", "2班", "3班","4班"]
        ],
        [
            ["1班", "2班"],
            ["1班", "2班", "3班"],
            ["1班", "2班", "3班","4班","5班"],
            ["1班", "2班", "3班","4班"]
        ],
        [
            ["1班", "2班"],
            ["1班", "2班", "3班"],
            ["1班", "2班", "3班","4班"],
            ["1班", "2班", "3班","4班"]
        ],
        [
            ["1班"],
            ["1班", "2班", "3班"],
            ["1班", "2班", "3班","4班"],
            ["1班", "2班", "3班","4班"]
        ]
    ]
    var pIndex = -1;
    var majorEle = document.getElementById("major");
    var gradeEle = document.getElementById("grade");
    var classEle = document.getElementById("testClass");

    for (var i = 0; i < majors.length; i++) {
        //声明option.<option value="majors[i]">majors[i]</option>
        var op = new Option(majors[i], i);
        //添加
        majorEle.options.add(op);
    }
    function func1(obj) {
        if (obj.value == -1) {
            gradeEle.options.length = 0;
            classEle.options.length = 0;
        }
        //获取值
        var val = obj.value;
        pIndex = obj.value;

        var cs = grades[val];

        var as = classes[val][0];
        //先清空
        gradeEle.options.length = 0;
        classEle.options.length = 0;
        for (var i = 0; i < cs.length; i++) {
            var op = new Option(cs[i], i);
            gradeEle.options.add(op);
        }
        for (var i = 0; i < as.length; i++) {
            var op = new Option(as[i], i);
            classEle.options.add(op);
        }
    }
    function func2(obj) {
        var val = obj.selectedIndex;
        var as = classes[pIndex][val];
        classEle.options.length = 0;
        for (var i = 0; i < as.length; i++) {
            var op = new Option(as[i], i);
            classEle.options.add(op);
        }
    }

</script>
<script>
    var sex=2;
    var major,grade,testClass;
    $("#girl").change(function(){
        if($("#girl").prop("checked")){
            sex=0;
        }
    });
    $("#boy").change(function(){
        if($("#boy").prop("checked")){
            sex=1;
        }
    });
    $("#major").change(function(){
        if($("#major").prop("checked")){
            major=$("#major").val();
        }
    });
    $("#grade").change(function(){
        if($("#grade").prop("checked")){
            grade=$("#grade").val();
        }
    });
    $("#testClass").change(function(){
        if($("#testClass").prop("checked")){
            testClass=$("#testClass").val();
        }
    });
    function submitUser(){

        var userName=$.trim($("#userName").val());
        var number=$.trim($("#number").val());
        var birth=$("#birth").val();
        var political=$('#political option:selected').val();
        var nation=$('#nation option:selected').val();
        var place=$("#place").val();
        sweetAlert(major+grade+testClass);
        if(userName==null||userName==''){
            alert("用户名为空!");
        }else if(number==null||number==''){
            sweetAlert("学号为为空!");
        }else if(sex==2){
            sweetAlert("请选择性别！");
        }else if(birth==null||birth==''){
            sweetAlert("请选择出生年月!");
        }else if(political==null||political==''){
            sweetAlert("请选择政治面貌!");
        }else if(nation==null||nation==''){
            sweetAlert("请选择民族!");
        }else if(place==null||place==''){
            sweetAlert("请输入籍贯!");
        }else if((major+grade+testClass)=="-1-1-1"){
            sweetAlert("请选择专业信息!");
        }else{
            swal({title: "确定提交吗?",
                        text: "",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        cancelButtonText:"取消",
                        confirmButtonText: "确定",
                        closeOnConfirm: false },
                    function(){
                        $.post("${pageContext.request.contextPath}/user/admin/c/saveUser",
                                {'userName':userName,'number':number,
                                    'birth':birth,'political':political,
                                    'nation':nation,'place':place,
                                    'sex':sex
                                },function(result){
                                    if(result.success){
                                        swal({
                                                    title:"发布成功！",
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
                                },"json");
                    });
        }



    }
</script>
</body>
</html>