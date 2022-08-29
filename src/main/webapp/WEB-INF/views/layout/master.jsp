<!DOCTYPE html>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:importAttribute name="javascripts"/>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><tiles:insertAttribute name="title" /></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    
    <link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/common/css/navbar.css" />
	<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/resources/css/masterpage.css" />	
	<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/resources/js/masterpage.js"></script>
    
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.servletContext.contextPath}/externals/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.servletContext.contextPath}/externals/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Ionicons -->
    <!-- <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">  -->
    <link href="${pageContext.servletContext.contextPath}/externals/ionicons/css/ionicons.min.css" rel="stylesheet" type="text/css">

	<!-- DataTable Bootstrap & Responsive -->
	<link href="${pageContext.servletContext.contextPath}/externals/datatables/datatables.min.css" rel="stylesheet" type="text/css">
     
     <!-- Datepicker Bootstrap & Responsive -->    
	<link href="${pageContext.servletContext.contextPath}/externals/datepicker/jquery.ui.all.css" rel="stylesheet" type="text/css">
     
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/externals/adminlte-2.3.0/dist/css/AdminLTE.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect.
    -->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/externals/adminlte-2.3.0/dist/css/skins/skin-default.css">

	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/styles/main.css">
	<!-- Local Web Fonts - Source Sans Pro -->
	<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/styles/fonts.css">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="${pageContext.servletContext.contextPath}/externals/html5shiv/dist/html5shiv.min.js"></script>
        <script src="${pageContext.servletContext.contextPath}/externals/respond/dest/respond.min.js"></script>
    <![endif]-->
  </head>
  <!--
  BODY TAG OPTIONS:
  =================
  Apply one or more of the following classes to get the
  desired effect
  |---------------------------------------------------------|
  | SKINS         | skin-blue                               |
  |               | skin-black                              |
  |               | skin-purple                             |
  |               | skin-yellow                             |
  |               | skin-red                                |
  |               | skin-green                              |
  |               | skin-default - user defined themes      |
  |---------------------------------------------------------|
  |LAYOUT OPTIONS | fixed                                   |
  |               | layout-boxed                            |
  |               | layout-top-nav                          |
  |               | sidebar-collapse                        |
  |               | sidebar-mini                            |
  |---------------------------------------------------------|
  -->
  <body class="hold-transition skin-default">

  <%@include file="/WEB-INF/views/includes/navbar.jsp" %>
 
    <div class="wrapper">

      <!-- Main Header -->
		<tiles:insertAttribute name="header" />
		
      <!-- Left side column. contains the logo and sidebar -->
		<tiles:insertAttribute name="sidebar" />

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            <tiles:insertAttribute name="title" />
            <small><tiles:insertAttribute name="description" /></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">

			<tiles:insertAttribute name="body" />          

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

      <!-- Main Footer -->
		<tiles:insertAttribute name="footer" />

    </div><!-- ./wrapper -->

    <!-- REQUIRED JS SCRIPTS -->

    <!-- jQuery -->
    <script src="${pageContext.servletContext.contextPath}/externals/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.servletContext.contextPath}/externals/bootstrap/dist/js/bootstrap.min.js"></script>	
    <!-- DataTable Core, Bootstrap & Responsive -->
    <script src="${pageContext.servletContext.contextPath}/externals/datatables/datatables.min.js"></script>
     <!-- Datepicker Core, Bootstrap & Responsive -->
    <script src="${pageContext.servletContext.contextPath}/externals/datepicker/bootstrap-datepicker.js"></script>
    <!-- Datepicker Core, Bootstrap & Responsive -->
    <script src="${pageContext.servletContext.contextPath}/externals/datepicker/jquery-ui.js"></script>
    
    <!-- AdminLTE App -->
    <script src="${pageContext.servletContext.contextPath}/externals/adminlte-2.3.0/dist/js/app.js"></script>

    <!-- Internal Global Javascript -->
    <script src="${pageContext.servletContext.contextPath}/javascripts/global.js"></script>	

    <!-- JQuery Validator -->    
    <script src="${pageContext.servletContext.contextPath}/externals/jquery-validation/jquery.validate.min.js"></script>

    <!-- JQuery - jquery-i18n-properties  -->    
    <%-- <script src="${pageContext.servletContext.contextPath}/externals/jquery-i18n/jquery.i18n.properties.js"></script> --%>
	
    <!-- Bootbox.js -->
    <script src="${pageContext.servletContext.contextPath}/externals/bootbox/bootbox.min.js"></script>


    <!-- Optionally, you can add Slimscroll and FastClick plugins.
         Both of these plugins are recommended to enhance the
         user experience. Slimscroll is required when using the
         fixed layout. -->
                  
    <!-- Slim Scroll -->
    <script src="${pageContext.servletContext.contextPath}/externals/slimScroll/jquery.slimscroll.min.js"></script>

	<script type="text/javascript">
	    var _contextPath = "${pageContext.request.contextPath}";
	    $("#flash-attribute-success-message").fadeOut(15000);
	</script>  
         
    <!-- scripts -->
    <c:forEach var="script" items="${javascripts}">
        <script src="<c:url value="${script}"/>"></script>
    </c:forEach>
    <!-- end scripts -->             
                  
  </body>
</html>
