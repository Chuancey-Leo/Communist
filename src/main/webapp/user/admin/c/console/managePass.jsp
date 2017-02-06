<%--
  User: liao
  Date: 17-1-2
  Time: 下午5:54
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
                    <h3>闯关排名</h3>
                </div>
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>排名</th>
                            <th>姓名</th>
                            <th>积分</th>
                            <th>当前关卡</th>
                            <th>最近闯关时间</th>
                            <th>删除</th>
                            <th>预览</th>
                        </tr>
                        </thead>
                        <tbody class="">
                        <tr>
                            <td>
                                <img src="${pageContext.request.contextPath}/static/images/top1.png" width="30px" alt="">
                            </td>

                            <td>胡丹</td>
                            <td>23</td>
                            <td>5-6</td>
                            <td>2016.12.23</td>
                            <td>
                                <button class="btn btn-table"><i class="fa fa-trash-o"></i></button>
                            </td>

                            <td>
                                <button class="btn btn-table"><i class="fa fa-eye"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td> <img src="${pageContext.request.contextPath}/static/images/top2.png" width="30px" alt=""></td>

                            <td>胡丹</td>
                            <td>23</td>
                            <td>5-6</td>
                            <td>2016.12.23</td>
                            <td>
                                <button class="btn btn-table"><i class="fa fa-trash-o"></i></button>
                            </td>

                            <td>
                                <button class="btn btn-table"><i class="fa fa-eye"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td> <img src="${pageContext.request.contextPath}/static/images/top3.png" width="30px" alt=""></td>

                            <td>胡丹</td>
                            <td>23</td>
                            <td>5-6</td>
                            <td>2016.12.23</td>
                            <td>
                                <button class="btn btn-table"><i class="fa fa-trash-o"></i></button>
                            </td>

                            <td>
                                <button class="btn btn-table"><i class="fa fa-eye"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>

                            <td>胡丹</td>
                            <td>23</td>
                            <td>5-6</td>
                            <td>2016.12.23</td>
                            <td>
                                <button class="btn btn-table"><i class="fa fa-trash-o"></i></button>
                            </td>

                            <td>
                                <button class="btn btn-table"><i class="fa fa-eye"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>1</td>

                            <td>胡丹</td>
                            <td>23</td>
                            <td>5-6</td>
                            <td>2016.12.23</td>
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
