<%--
  User: liao
  Date: 17-1-2
  Time: 下午4:51
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
                    <h3>导入题库</h3>
                </div>
                <div class="panel-body">
                    <form id="upload">
                        <input id="file" type="file" name="file">
                        <br>
                        <button type="button" onclick="submitFile()">submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="common/js.jsp"/>

<script type="text/javascript">
    function submitFile(){
        var file=$("#file").val();
        if(file==null || file==""){
            sweetAlert("文件不能为空");
            return false;
        }

        var form=new FormData($("#upload")[0]);
        $.ajax({
            url:"${pageContext.request.contextPath}/user/admin/c/saveQuestions",
            type:"POST",
            data:form,
            contentType:false,
            processData:false,
            dataType:"json",
            success:function (result) {
                if(result.success){
                    swal({
                                title:"导入成功！",
                                text:"",
                                type:"success"},
                            function(isConfirm){
                                window.location.reload();
                            }
                    );
                }else{
                    swal({
                        title:"导入失败！误操作或者网络断开！",
                        text:"",
                        type:"error"}
                    );
                }
            },

        });

    }
</script>

</body>
</html>
