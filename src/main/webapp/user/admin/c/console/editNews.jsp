<%--
  User: liao
  Date: 16-12-23
  Time: 上午9:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <jsp:include page="common/style.jsp"/>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/ueditor/ueditor.all.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/ueditor/lang/zh-cn/zh-cn.js"></script>


    <script type="text/javascript">
        function submitData(){
            var title=$("#newsTitle").val();
            var author=$("#newsAuthor").val();
            var content=UE.getEditor('editor').getContent();
            var contentNoTag=UE.getEditor('editor').getContentTxt();

            if(title==null || title==''){
                sweetAlert("请输入标题！");
            }else if(author==null || author==''){
                sweetAlert("请输入责任编辑人！");
            }else if(content==null || content==''){
                sweetAlert("请输入内容！");
            }else{
                swal({title: "确定发布吗?",
                            text: "",
                            type: "warning",
                            showCancelButton: true,
                            confirmButtonColor: "#DD6B55",
                            cancelButtonText:"取消",
                            confirmButtonText: "确定",
                            closeOnConfirm: false },
                        function(){
                            $.post("${pageContext.request.contextPath}/user/admin/c/saveNews",{'title':title,'author':author,'content':content,'contentNoTag':contentNoTag},function(result){
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
</head>
<body>
<div id="wrapper">
    <!-- Navigation -->
    <jsp:include page="common/leftNav.jsp"/>

    <div id="page-wrapper">
        <div class=" main">
            <div class="panel panel-default panel-style">
                <div class="panel-heading">
                    <h3> 编辑新闻</h3>
                </div>
                <div class="panel-body">
                    <form action="" method="post" class="form-horizontal">
                        <div class="form-group form-group-style">
                            <label for="newsTitle" class="col-sm-2 control-label">新闻标题</label>
                            <div class="col-sm-10">
                                <input type="text" id="newsTitle" class="form-control" required placeholder="请输入新闻标题">
                            </div>
                        </div>
                        <div class="form-group form-group-style">
                            <label for="newsAuthor" class="col-sm-2 control-label">责任编辑人</label>
                            <div class="col-sm-10">
                                <input type="text" id="newsAuthor" class="form-control" required placeholder="请输入编辑人姓名">
                            </div>
                        </div>
                        <div class="form-group  form-group-style news-editor">
                            <script id="editor" type="text/plain" style="width:100%;height:600px;"></script>
                        </div>
                        <div class="form-group form-group-style">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="button" onclick="submitData()" class="btn btn-default btn-lg submit-btn text-right">发布</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor',{
        autoHeightEnabled: true,
        autoFloatEnabled: true
    });
</script>

<jsp:include page="common/js.jsp"/>
</body>
</html>
