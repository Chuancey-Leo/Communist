<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%--
  User: liao
  Date: 16-12-23
  Time: 上午11:40
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <jsp:include page="common/style.jsp"/>

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
                        $.post("${pageContext.request.contextPath}/user/admin/c/deleteNews",{id:id},function(result){
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

    </script>
</head>
<body>
<div id="wrapper">
    <!-- Navigation -->
    <jsp:include page="common/leftNav.jsp"/>

    <div id="page-wrapper">
        <div class="main">
            <div class="panel panel-default panel-style">
                <div class="panel-heading">
                    <h3>新闻管理</h3>
                </div>
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>标题</th>
                            <th>作者</th>
                            <th>浏览次数</th>
                            <th>发表时间</th>
                            <th>删除</th>
                            <th>编辑</th>
                            <th>预览</th>
                        </tr>
                        </thead>
                        <tbody class="">
                        <c:forEach var="news" items="${listNews}">
                            <tr>
                                <td>${news.title}</td>
                                <td>
                                    ${news.author}
                                </td>
                                <td>
                                    ${news.clickHit}
                                </td>
                                <td>
                                    <fmt:formatDate value="${news.releaseDate }" type="date" pattern="yyyy-MM-dd HH:mm"/>
                                </td>
                                <td>
                                    <button class="btn btn-table" onclick="deleteData(${news.id})"><i class="fa fa-trash-o"></i></button>
                                </td>
                                <td>
                                    <button class="btn btn-table"><i class="fa fa-edit"></i></button>
                                </td>

                                <td>
                                    <button class="btn btn-table"><i class="fa fa-eye"></i></button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>

<jsp:include page="common/js.jsp"/>
</body>
</html>