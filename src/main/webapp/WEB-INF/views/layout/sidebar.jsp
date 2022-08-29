<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	

<aside class="main-sidebar">

	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">

		<!-- Sidebar Menu -->
		<ul class="sidebar-menu">
			<li class="header">***************</li>
			<li class="header">MAIN NAVIGATION</li>
            
            <!-- Optionally, you can add icons to the links -->
            <li id="menuInfocast"><a href="https://infocast.smart.com.ph/broadcast-home"><i class="fa fa-comments"></i><span>Infocast</span></a></li>
			<li id="menuClient"><a href="${pageContext.request.contextPath}/client"><i class="fa fa-user"></i> <span>Community Management</span></a></li>
			<li id="menuQueue"><a href="${pageContext.request.contextPath}/queue"><i class="fa fa-paste"></i> <span>Queuing Management</span></a></li>
			<li id="menuSocial"><a href="${pageContext.request.contextPath}/socialmedia"><i class="fa fa-spinner"></i> <span>Social Media</span></a></li>
			<li id="menuSetting"><a href="${pageContext.request.contextPath}/setting"><i class="fa fa-link"></i> <span>Company Settings</span></a></li>
			</ul><!-- /.sidebar-menu -->
	</section>
	<!-- /.sidebar -->

	<c:if test="${not empty eventMessage}">
		<div id="flash-attribute-success-message" class="alert alert-info alert-dismissable">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
		<h5><i class="icon fa fa-bell"></i><fmt:message key="${eventMessage}" /></h5>
		</div>
	</c:if>  		
		
		
</aside>