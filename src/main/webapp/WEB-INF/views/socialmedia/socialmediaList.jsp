<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  
 <!-- CONTENT -->
 
<div class="row">		
	<div class="col-md-8">
	
			<div class="box box-solid">		
		<div class="box-header with-border">
			<i class="fa fa-comment"></i>
			<h3 class="box-title">Content</h3> 
			<i id="msgErrorMessage" class="text-red pull-right"></i>
		</div><!-- /.box-header -->
		
	        <div class="box-body">
			<div id="groupMessage" class="form-group has-feedback">				
				<textarea class="form-control" id="textMessage" name="message" style="resize: vertical; min-height:75px;" oninput="checkifValidMessage('#textMessage','#sendBroadcastButton')"></textarea>
				<div id="iconErrorMessage" class="glyphicon glyphicon-exclamation-sign form-control-feedback" aria-hidden="true" style="display: none;">
				</div>
			</div>
			</div><!-- /.box-body -->
			
			<div class="box-footer">
			<div class="row">
			
				<div class="col-md-3 pull-right">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-font"></i></span>
						<input id="textMessageCount" name="textMessageCount" type="text" class="form-control pull-right" value="0" readonly="readonly">
					</div>
				</div>
				
			</div>						
		</div><!-- /.box-footer -->

	</div><!-- /.box-solid --> 
	</div><!-- /.col-md-8 -->
</div>	<!-- /.row -->

 <!-- MEDIA -->

<div class="row">		
	<div class="col-md-8">
	<div class="box box-solid">		
		<div class="box-header with-border">
			<i class="fa fa-image"></i>
			<h3 class="box-title">Media</h3> 
			<i id="msgErrorMessage" class="text-red pull-right"></i>
		</div><!-- /.box-header -->
		
			<div class="box-footer">
			<div class="row">
			<div class="col-md-3 pull-left">
					<div class="input-group">
				<label id="uploadimagebutton" data-toggle="popover" data-placement="top" data-content="Format" class="btn btn-default">
				<input type="file" class="hidden" name="file" multiple>
				<span class="fa fa-upload"></span>&nbsp;Select Files to Upload
				</label>
					</div>
				</div>
				<div class="col-md-3 pull-center">
					<div class="input-group">
				<label id="uploadcloudbutton" data-toggle="popover" data-placement="top" data-content="Format" class="btn btn-default">
				<input type="file" class="hidden" name="file" multiple>
				<span class="fa fa-cloud"></span>&nbsp;Browse your Media
				</label>
					</div>
				</div>
			</div>
		</div>		
	</div><!-- /.box-solid --> 
  </div><!-- /.col-md-8 -->
 </div>	<!-- /.row -->


 <!-- POST -->

<div class="row">		
	<div class="col-md-8">
	<div class="box box-solid">		
		<div class="box-header with-border">

				<div class="col-md-6">
    				<div class="box box-info box-solid collapsed-box no-bottom-margin">
						<div class="box-header with-border">
							<span><a href="#">Post Schedule</a></span>
        					<div class="box-tools pull-right">
          						<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
        					</div><!-- /.box-tools -->
      					</div><!-- /.box-header -->
      					<div class="box-body">
							<div class='input-group date' id="dateTextMessageSchedule">
								<span class="input-group-addon">
									<span class="fa fa-calendar"></span>
								</span>						
								<input type="text" class="form-control" id="textMessageSchedule" name="textMessageSchedule" placeholder="MM/DD/YYYY">
							</div>
							
      					</div><!-- /.box-body -->
    				</div><!-- /.box --> 
				</div>
				
				<div class="col-md-3 pull-center">	
					<button id="sendTwitterButton" class="btn btn-primary pull-right" type="button" onclick="send_broadcast_message()" disabled="disabled"><i class="fa fa-twitter"></i></button>
					<button id="sendFbButton" class="btn btn-primary pull-right" type="button" onclick="send_broadcast_message()" disabled="disabled"><i class="fa fa-facebook"></i></button>
					<button id="sendInstagramButton" class="btn btn-primary pull-right" type="button" onclick="send_broadcast_message()" disabled="disabled"><i class="fa fa-instagram"></i></button>
					</div>
				
				<div class="col-md-2 pull-right">
					<button id="sendBroadcastButton" class="btn btn-primary pull-right" type="button" onclick="send_broadcast_message()" disabled="disabled">Post</button>
				</div>
							
		</div><!-- /.box-footer -->

	</div><!-- /.box-solid --> 
	</div><!-- /.col-md-8 -->
</div>	<!-- /.row -->