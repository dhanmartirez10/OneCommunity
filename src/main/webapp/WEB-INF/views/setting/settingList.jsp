<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

 <!-- Main Table -->
 
<div class="box box-success">
  
  <!-- FACEBOOK -->
  <div class="box-body">
    <div class="box-header with-border">
      <h3 class="box-title">Link/Unlink Facebook Account</h3>
      <h6>Allows Content-Providers to cross-post to Company's Facebook Page.</h6>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <div class="col-offset-sm-3 col-sm-12 pull-right">
          <form method="POST" action="${pageContext.request.contextPath}/settings/facebook">
          <button id="linkFacebookAccount" class="btn btn-link-facebook" type="submit">
            <i class="fa fa-facebook fa-2x"></i>&nbsp;Link Account</button>
          <p>Status: <span style="color: #aaa">Unlinked</span></p>
        </form>
    </div>
  </div>
 
   <!-- TWITTER -->
  <div class="box-body">
    <div class="box-header with-border">
      <h3 class="box-title">Link/Unlink Company Twitter Account</h3>
      <h6>Allows Content-Providers to cross-post to Company's Twitter Account.</h6>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
        <form method="POST" action="${pageContext.request.contextPath}/settings/twitter">
        <button id="linkTwitterAccount" 
             class="btn btn-link-twitter" type="submit">
          <i class="fa fa-twitter fa-2x"></i>&nbsp;Link Account</button>
        <p>Status: <span style="color: #aaa">Unlinked</span></p>
        </form>
      </div>
    </div>
 
   <!-- INSTAGRAM -->
  <div class="box-body">
    <div class="box-header with-border">
      <h3 class="box-title">Link/Unlink Company Instagram Account</h3>
      <h6>Allows Content-Providers to cross-post to Company's Instagram Account.</h6>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
        <form method="POST" action="${pageContext.request.contextPath}/settings/instagram">
        <button id="linkInstagramAccount" 
             class="btn btn-link-instagram" type="submit">
          <i class="fa fa-instagram fa-2x"></i>&nbsp;Link Account</button>
        <p>Status: <span style="color: #aaa">Unlinked</span></p>
        </form>
      </div>
    </div>
  
</div>