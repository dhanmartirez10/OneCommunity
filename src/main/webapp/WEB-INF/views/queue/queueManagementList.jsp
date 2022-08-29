<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

 <!-- CONTENT -->

 <form class="row g-3">
    <div class="col-md-6">
      <label for="inputEmail4" class="form-label">Email</label>
      <input type="email" class="form-control" id="inputEmail4">
    </div>
    <div class="col-md-6">
      <label for="inputPassword4" class="form-label">Password</label>
      <input type="password" class="form-control" id="inputPassword4">
    </div>
    <div class="col-md-12">
      <label for="inputAddress" class="form-label">Address</label>
      <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
    </div>
    <div class="col-12">
      <label for="inputAddress2" class="form-label">Address 2</label>
      <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
    </div>
    <div class="col-md-6">
      <label for="inputCity" class="form-label">City</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="col-md-4">
      <label for="inputState" class="form-label">State</label>
      <select id="inputState" class="form-select">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="col-md-2">
      <label for="inputZip" class="form-label">Zip</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
    <div class="col-12">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="gridCheck">
        <label class="form-check-label" for="gridCheck">
          Check me out
        </label>
      </div>
    </div>
    <div class="col-12">
      <button type="submit" class="btn btn-primary">Sign in</button>
    </div>
  </form>

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