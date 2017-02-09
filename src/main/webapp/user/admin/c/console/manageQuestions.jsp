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
                                    <td>${question.key}</td>
                                    <td>
                                        <fmt:formatDate value="${question.releaseDate }" type="date" pattern="yyyy-MM-dd HH:mm"/>
                                    </td>
                                    <td>
                                        <button class="btn btn-table" onclick="deleteData(${question.id})"><i class="fa fa-trash-o"></i></button>
                                    </td>
                                    <td>
                                        <button class="btn btn-table" data-toggle="modal" data-target="#myModal" onclick="test(${question.id})"><i class="fa fa-edit"></i></button>
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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">修改</h4>
            </div>
            <div class="modal-body"><input id="title" type="text"/></div>

            <div class="modal-body"><input name="option" type="radio" sel>A.<input id="option1" type="text" value=""></div>
            <div class="modal-body"><input name="option" type="radio">B.<input id="option2" type="text"></div>
            <div class="modal-body"><input name="option" type="radio">C.<input id="option3" type="text"></div>
            <div class="modal-body"><input name="option" type="radio">D.<input id="option4" type="text"></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<jsp:include page="common/js.jsp"/>
<script type="text/javascript">
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
    function test(id){
        $.post("${pageContext.request.contextPath}/user/admin/c/question/findById",{id:id    },function(result){
            if(result.success){
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