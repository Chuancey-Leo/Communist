<%--
  User: liao
  Date: 16-12-23
  Time: 上午11:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.html">Modern</a>
    </div>
    <!-- /.navbar-header -->
    <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-comments-o"></i><span class="badge">4</span></a>
            <ul class="dropdown-menu">
                <li class="dropdown-menu-header">
                    <strong>Messages</strong>
                    <div class="progress thin">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                            <span class="sr-only">40% Complete (success)</span>
                        </div>
                    </div>
                </li>
                <li class="avatar">
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/images/1.png" alt=""/>
                        <div>New message</div>
                        <small>1 minute ago</small>
                        <span class="label label-info">NEW</span>
                    </a>
                </li>
                <li class="avatar">
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/images/2.png" alt=""/>
                        <div>New message</div>
                        <small>1 minute ago</small>
                        <span class="label label-info">NEW</span>
                    </a>
                </li>
                <li class="avatar">
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/images/3.png" alt=""/>
                        <div>New message</div>
                        <small>1 minute ago</small>
                    </a>
                </li>
                <li class="avatar">
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/images/4.png" alt=""/>
                        <div>New message</div>
                        <small>1 minute ago</small>
                    </a>
                </li>
                <li class="avatar">
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/images/5.png" alt=""/>
                        <div>New message</div>
                        <small>1 minute ago</small>
                    </a>
                </li>
                <li class="avatar">
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/images/pic1.png" alt=""/>
                        <div>New message</div>
                        <small>1 minute ago</small>
                    </a>
                </li>
                <li class="dropdown-menu-footer text-center">
                    <a href="#">View all messages</a>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="${pageContext.request.contextPath}/static/images/1.png"><span class="badge">9</span></a>
            <ul class="dropdown-menu">
                <li class="dropdown-menu-header text-center">
                    <strong>Account</strong>
                </li>
                <li class="m_2"><a href="#"><i class="fa fa-bell-o"></i> Updates <span class="label label-info">42</span></a></li>
                <li class="m_2"><a href="#"><i class="fa fa-envelope-o"></i> Messages <span class="label label-success">42</span></a></li>
                <li class="m_2"><a href="#"><i class="fa fa-tasks"></i> Tasks <span class="label label-danger">42</span></a></li>
                <li><a href="#"><i class="fa fa-comments"></i> Comments <span class="label label-warning">42</span></a></li>
                <li class="dropdown-menu-header text-center">
                    <strong>Settings</strong>
                </li>
                <li class="m_2"><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                <li class="m_2"><a href="#"><i class="fa fa-wrench"></i> Settings</a></li>
                <li class="m_2"><a href="#"><i class="fa fa-usd"></i> Payments <span class="label label-default">42</span></a></li>
                <li class="m_2"><a href="#"><i class="fa fa-file"></i> Projects <span class="label label-primary">42</span></a></li>
                <li class="divider"></li>
                <li class="m_2"><a href="#"><i class="fa fa-shield"></i> Lock Profile</a></li>
                <li class="m_2"><a href="#"><i class="fa fa-lock"></i> Logout</a></li>
            </ul>
        </li>
    </ul>
    <form class="navbar-form navbar-right">
        <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
    </form>
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="${pageContext.request.contextPath}/user/admin/c/editNews"><i class="fa fa-dashboard fa-fw nav_icon"></i>新建新闻</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/user/admin/c/manageNews"><i class="fa fa-dashboard fa-fw nav_icon"></i>管理新闻</a>
                </li>
                <%--<li>
                    <a href="${pageContext.request.contextPath}/user/admin/c/managePass"><i class="fa fa-indent nav_icon"></i>今日打卡<span class="fa arrow"></span></a>
                </li>--%>
                <li>
                    <a href="#"><i class="fa fa-envelope nav_icon"></i>擂台挑战<span class="fa arrow"></span></a>
                </li>
                <li>
                    <a href="widgets.html"><i class="fa fa-flask nav_icon"></i>答题闯关</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-check-square-o nav_icon"></i>题库管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${pageContext.request.contextPath}/user/admin/c/importQuestions">导入题库</a>
                        </li>
                        <li>
                            <a href="validation.html">修改题目</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/user/admin/c/manageUsers"><i class="fa fa-table nav_icon"></i>用户管理<span class="fa arrow"></span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>Css<span class="fa arrow"></span></a>
                </li>
            </ul>
        </div>
    </div>
</nav>
