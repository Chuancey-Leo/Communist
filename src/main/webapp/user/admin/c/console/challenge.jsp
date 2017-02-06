<%--
  User: liao
  Date: 17-1-2
  Time: 下午6:27
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
                    <!--<h3>PK结果展示</h3>-->
                    <div class="nav nav-tabs" id="myTab">
                        <a class="active" href="#completed"  data-toggle="tab">PK完成</a>
                        <a href="#going"  data-toggle="tab">PK进行时</a>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="pkresult-box fix tab-content"  id="myTabContent">
                        <ul class="tab-pane fade in active" id="completed">
                            <li class="fix new-pk">
                                <div class="pkuser1">
                                    <h3 class="text-center">挑战胜利</h3>
                                    <img src="${pageContext.request.contextPath}/static/images/4.jpeg" alt="">
                                    <!--<img src="images/success.png" class="rs-logo" alt="">-->
                                    <h4 class="text-center">计算机1401胡丹</h4>
                                </div>
                                <div class="pk-img">
                                    <p class="text-center">2016-12-28 20:00</p>
                                    <img src="${pageContext.request.contextPath}/static/images/pk.png" width="200px" alt="">

                                </div>
                                <div class="pkuser1">
                                    <h3 class="text-center">挑战失败</h3>
                                    <img src="${pageContext.request.contextPath}/static/images/6.jpg" width="100px" height="100px" alt="">
                                    <!--<img src="images/fail.png" class="rs-logo" alt="">-->
                                    <h4 class="text-center">计算机1401胡丹</h4>
                                </div>
                            </li>
                            <li class="fix">
                                <div class="pkuser1">
                                    <img src="${pageContext.request.contextPath}/static/images/4.jpeg" alt="">
                                    <!--<img src="images/success.png" class="rs-logo" alt="">-->
                                    <h4 class="text-center">计算机1401胡丹</h4>
                                </div>
                                <div class="pk-img">
                                    <p class="text-center">2016-12-28 20:00</p>
                                    <img src="${pageContext.request.contextPath}/static/images/pk.png" width="200px" alt="">

                                </div>
                                <div class="pkuser1">
                                    <img src="${pageContext.request.contextPath}/static/images/6.jpg" width="100px" height="100px" alt="">
                                    <!--<img src="images/fail.png" class="rs-logo" alt="">-->
                                    <h4 class="text-center">计算机1401胡丹</h4>
                                </div>
                            </li>
                            <li class="fix">
                                <div class="pkuser1">
                                    <img src="${pageContext.request.contextPath}/static/images/4.jpeg" alt="">
                                    <!--<img src="images/success.png" class="rs-logo" alt="">-->
                                    <h4 class="text-center">计算机1401胡丹</h4>
                                </div>
                                <div class="pk-img">
                                    <p class="text-center">2016-12-28 20:00</p>
                                    <img src="${pageContext.request.contextPath}/static/images/pk.png" width="200px" alt="">

                                </div>
                                <div class="pkuser1">
                                    <img src="${pageContext.request.contextPath}/static/images/6.jpg" width="100px" height="100px" alt="">
                                    <!--<img src="images/fail.png" class="rs-logo" alt="">-->
                                    <h4 class="text-center">计算机1401胡丹</h4>
                                </div>
                            </li>
                            <li class="fix">
                                <div class="pkuser1">
                                    <img src="${pageContext.request.contextPath}/static/images/4.jpeg" alt="">
                                    <!--<img src="images/success.png" class="rs-logo" alt="">-->
                                    <h4 class="text-center">计算机1401胡丹</h4>
                                </div>
                                <div class="pk-img">
                                    <p class="text-center">2016-12-28 20:00</p>
                                    <img src="${pageContext.request.contextPath}/static/images/pk.png" width="200px" alt="">

                                </div>
                                <div class="pkuser1">
                                    <img src="${pageContext.request.contextPath}/static/images/6.jpg" width="100px" height="100px" alt="">
                                    <!--<img src="images/fail.png" class="rs-logo" alt="">-->
                                    <h4 class="text-center">计算机1401胡丹</h4>
                                </div>
                            </li>
                        </ul>
                        <ul id="going"class="tab-pane fade">
                            <li class="fix new-pk">
                                <div class="pkuser1">
                                    <h3 class="text-center">发起挑战</h3>
                                    <img src="${pageContext.request.contextPath}/static/images/4.jpeg" alt="">
                                    <h4 class="text-center">xxxx</h4>
                                </div>
                                <div class="pk-img">
                                    <p class="text-center">2016-12-28 20:00</p>
                                    <img src="${pageContext.request.contextPath}/static/images/pk.png" width="200px" alt="">

                                </div>
                                <div class="pkuser1">
                                    <h3 class="text-center">接受挑战</h3>
                                    <img src="${pageContext.request.contextPath}/static/images/6.jpg" width="100px" height="100px" alt="">
                                    <h4 class="text-center">xxxx</h4>
                                </div>
                            </li>

                        </ul>
                    </div>
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
<script>
    $(function () {
        $('#myTab li:eq(0) a').tab('show');
    });
</script>
</body>
</html>
