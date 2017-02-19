<%--
  User: liao
  Date: 16-12-23
  Time: 上午11:40
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <jsp:include page="common/style.jsp"/>

</head>
<body>
<div id="wrapper">
    <!-- Navigation -->
    <jsp:include page="common/leftNav.jsp"/>

    <div id="page-wrapper">
        <div class="main">
            <div class="panel panel-default panel-style">
                <div class="panel-heading">
                    <h3><a href="${pageContext.request.contextPath}/user/admin/c/manageQue/single">单选题管理</a></h3><h3><a href="${pageContext.request.contextPath}/user/admin/c/manageQue/multiple">多选题管理</a></h3>
                </div>
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>题目</th>
                            <th>答案</th>
                            <th>发表时间</th>
                            <th>删除</th>
                            <th>修改</th>
                            <th>预览</th>
                        </tr>
                        </thead>
                        <tbody class="">
                            <c:forEach var="question" items="${questions}">
                                <tr>
                                    <td><c:out value="${question.title}" escapeXml="true"/></td>
                                    <td>${question.optionKey}</td>
                                    <td>
                                        <fmt:formatDate value="${question.releaseDate }" type="date" pattern="yyyy-MM-dd HH:mm"/>
                                    </td>
                                    <td>
                                        <button class="btn btn-table" onclick="deleteData(${question.id})"><i class="fa fa-trash-o"></i></button>
                                    </td>
                                    <td>
                                        <button class="btn btn-table" data-toggle="modal" data-target="#myModal" onclick="getQuestion(${question.id})"><i class="fa fa-edit"></i></button>
                                    </td>

                                    <td>
                                        <button class="btn btn-table"><i class="fa fa-eye"></i></button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <nav>
                        <ul class="pagination pageIndex">
                            <li><a href="#">&laquo;</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- 模态框（Modal） -->
<form method="post" action="" onsubmit="return check_form()">
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">修改</h4>
                </div>

                <div class="modal-body"><input id="questionId" type="hidden"><input id="title" type="text"/></div>

                <div class="modal-body"><input name="option" type="radio" value="1">A.<input id="option1" type="text"></div>
                <div class="modal-body"><input name="option" type="radio" value="2">B.<input id="option2" type="text"></div>
                <div class="modal-body"><input name="option" type="radio" value="3">C.<input id="option3" type="text"></div>
                <div class="modal-body"><input name="option" type="radio" value="4">D.<input id="option4" type="text"></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="submit" class="btn btn-primary">提交更改</button><span id="tip"> </span>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</form>
<jsp:include page="common/js.jsp"/>
<script type="text/javascript">

        // 提交表单
        function check_form() {
            /*var user_id = $.trim($('#user_id').val());
            var act     = $.trim($('#act').val());*/
            var id=$("#questionId").val();
            var title=$("#title").val();
            var optionKey=$('input:radio[name="option"]').val();
            var option1=$("#option1").val();
            var option2=$("#option2").val();
            var option3=$("#option3").val();
            var option4=$("#option4").val();

            //var form_data = $('#form_data').serialize();

            // 异步提交数据到action/add_action.php页面
            $.ajax(
                    {
                        url: "${pageContext.request.contextPath}/user/admin/c/updateQuestion",
                        data: {"id":id,"title":title,"optionKey":optionKey,"option1":option1,"option2":option2,"option3":option3,"option4":option4},
                        type: "post",
                        beforeSend:function()
                        {
                            $("#tip").html("<span style='color:blue'>正在处理...</span>");
                            return true;
                        },
                        success:function(data) {
                            alert("success");
                            window.location.reload();
                        },
                        error:function()
                        {
                            alert('请求出错');
                        },
                        complete:function()
                        {
                            $('#acting_tips').hide();
                        }
                    });

            return false;
        }

    function deleteData(id){
        swal({title: "确定删除吗?",
                    text: "此数据将无法恢复!",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    cancelButtonText:"取消",
                    confirmButtonText: "确定",
                    closeOnConfirm: false },
                function(){
                    $.post("${pageContext.request.contextPath}/user/admin/c/question/delete",{id:id},function(result){
                        if(result.success){
                            swal({
                                        title:"删除完成",
                                        text:"此新闻已被删除",
                                        type:"success"},
                                    function(isConfirm){
                                        window.location.reload();
                                    }
                            );
                        }else{
                            swal("删除失败!", "未被删除","error");
                        }
                    },"json");
                });
    }
    function getQuestion(id){
        $.post("${pageContext.request.contextPath}/user/admin/c/question/findById",{id:id    },function(result){
            if(result.success){
                $("#questionId").val(id);
                $("#title").val(result.title);
                $("#option1").val(result.option1);
                $("#option2").val(result.option2);
                $("#option3").val(result.option3);
                $("#option4").val(result.option4);
            }else {
                swal("删除失败!", "未被删除","error");
            }
        },"json");
    }
</script>

</body>
</html>