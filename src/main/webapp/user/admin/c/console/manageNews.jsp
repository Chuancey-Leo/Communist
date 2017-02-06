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
                    <h3>打卡学习</h3>
                </div>
                <div class="panel-body">
                    <div id="main" style="width: 100%;height:400px;"></div>
                </div>
            </div>
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
                                    <td><c:out value="${news.title}" escapeXml="true"/></td>
                                    <td>
                                        <c:out value=" ${news.author}" escapeXml="true"/>
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
                                        <button class="btn btn-table" onclick="window.location.href='${pageContext.request.contextPath}/user/admin/c/updateNews/${news.id}'"><i class="fa fa-edit"></i></button>
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


<jsp:include page="common/js.jsp"/>
<script src="${pageContext.request.contextPath}/static/js/echarts.js"></script>
<script>
    var myChart = echarts.init(document.getElementById('main'));
    var option = {
        title: {
            text: '最近打卡人数'
        },

        legend: {
            data:['最多打卡']
        },
        toolbox: {
            show: true,
            feature: {
                dataZoom: {
                    yAxisIndex: 'none'
                },
                dataView: {readOnly: false},
                magicType: {type: ['line', 'bar']},
                restore: {},
                saveAsImage: {}
            }
        },

        xAxis:  {
            type: 'category',
            boundaryGap: false,
            data: ['1-1','1-2','1-3','1-4','1-5','1-6','1-7']
        },
        yAxis: {
            type: 'value',
            axisLabel: {
                formatter: '{value} 人'
            }
        },
        series: [
            {
                name:'打卡人数',
                type:'line',
                smooth:true,
                data:[50, 32, 68, 13, 140, 90, 120],
                markPoint: {
                    data: [
                        {name:'今日打卡',xAxis:0,yAxis:50},
                        {name:'今日打卡',xAxis:1,yAxis:32},
                        {name:'今日打卡',xAxis:2,yAxis:68},
                        {name:'今日打卡',xAxis:3,yAxis:13},
                        {name:'今日打卡',xAxis:4,yAxis:140},
                        {name:'今日打卡',xAxis:5,yAxis:90},
                        {name:'今日打卡',xAxis:6,yAxis:120}
                    ]
                }



            }
        ]
    };
    myChart.setOption(option);
</script>
</body>
</html>