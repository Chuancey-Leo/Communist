<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  User: liao
  Date: 16-12-23
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
                        $.post("${pageContext.request.contextPath}/user/admin/c/deleteUser",{id:id},function(result){
                            if(result.success){
                                swal({
                                            title:"删除完成",
                                            text:"此用户已被删除",
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
                    <h3 class="userManage-h3">用户管理</h3>
                    <button onclick="window.location.href='${pageContext.request.contextPath}/user/admin/c/addUser'" class="btn btn-default addUser-btn">添加用户</button>
                </div>
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>学号</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>出生年月</th>
                            <th>籍贯</th>
                            <th>民族</th>
                            <th>政治面貌</th>
                            <th>班级</th>
                            <th>编辑</th>
                            <th>删除</th>
                        </tr>
                        </thead>
                        <tbody class="">
                        <c:forEach var="user" items="${userList}">
                            <tr>
                                <td>${user.number}</td>
                                <td>${user.userName}</td>
                                <td>女</td>
                                <td>2016.12</td>
                                <td>四川南充</td>
                                <td>汉族</td>
                                <td>中共党员</td>
                                <td>计算机1401</td>
                                <td>
                                    <button class="btn btn-success">编辑</button>
                                </td>
                                <td>
                                    <button onclick="deleteData(${user.id})" class="btn btn-danger">删除</button>
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