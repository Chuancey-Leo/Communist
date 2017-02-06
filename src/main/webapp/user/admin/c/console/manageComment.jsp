<%--
  Created by IntelliJ IDEA.
  User: liao
  Date: 17-1-2
  Time: 下午4:33
  To change this template use File | Settings | File Templates.
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
    <jsp:include page="common/leftNav.jsp"/>

    <div id="page-wrapper">
        <div class="main">
            <div class="panel panel-default panel-style">
                <div class="panel-heading">
                    <h3>评论管理</h3>
                </div>
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>话题</th>
                            <th>评论</th>
                            <th>评论人</th>
                            <th>评论时间</th>
                            <th>删除</th>
                            <th>预览</th>
                        </tr>
                        </thead>
                        <tbody class="">
                        <tr>
                            <td>1</td>
                            <td><a href="#">学习中共十八届六中全会</a></td>
                            <td><a href="#">从严治党</a></td>
                            <td>
                                胡丹
                            </td>
                            <td>
                                2016.12.23
                            </td>

                            <td>
                                <button class="btn btn-table"><i class="fa fa-trash-o"></i></button>
                            </td>


                            <td>
                                <button class="btn btn-table"><i class="fa fa-eye"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="#">学习中共十八届六中全会</a></td>
                            <td><a href="#">从严治党</a></td>
                            <td>
                                胡丹
                            </td>
                            <td>
                                2016.12.23
                            </td>

                            <td>
                                <button class="btn btn-table"><i class="fa fa-trash-o"></i></button>
                            </td>


                            <td>
                                <button class="btn btn-table"><i class="fa fa-eye"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="#">学习中共十八届六中全会</a></td>
                            <td><a href="#">从严治党</a></td>
                            <td>
                                胡丹
                            </td>
                            <td>
                                2016.12.23
                            </td>

                            <td>
                                <button class="btn btn-table"><i class="fa fa-trash-o"></i></button>
                            </td>


                            <td>
                                <button class="btn btn-table"><i class="fa fa-eye"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="#">学习中共十八届六中全会</a></td>
                            <td><a href="#">从严治党</a></td>
                            <td>
                                胡丹
                            </td>
                            <td>
                                2016.12.23
                            </td>

                            <td>
                                <button class="btn btn-table"><i class="fa fa-trash-o"></i></button>
                            </td>


                            <td>
                                <button class="btn btn-table"><i class="fa fa-eye"></i></button>
                            </td>
                        </tr>


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


<jsp:include page="common/js.jsp"/>
</body>
</html>
