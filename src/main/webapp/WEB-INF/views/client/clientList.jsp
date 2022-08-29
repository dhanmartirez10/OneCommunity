<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- Pasaload Modal Content -->
      
<div class="modal fade" id="pasaloadModal" role="dialog">
    <div class="modal-dialog">
    
      <div class="modal-content">
        <div class="modal-header bg-maroon">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><b>Pasaload</b></h4>
        </div>
        <div class="modal-body bg-gray">

            <div class="box box-solid">
                <div class="box-header with-border">
                    <h3 class="box-title" >Employee Name: <b><span id="empName">0</span></b></h3>
                    <br/>
                    <h3 class="box-title" >Mobile Number: <b><span id="empMsisdn">0</span></b></h3>          
                    <br/>
                    <h3 class="box-title" >Employee Airtime Balance: <b><span id="empAirtimeBal">0</span></b></h3>                 
                    <br/>
                    <h3 class="box-title" >Available Airtime Balance: <b>1000.00</b></h3>                     
                </div><!-- /.box-header -->
                <div class="box-body">
                    <form onsubmit="return false;" role="form" action>
                    <div class="row">
                        <div class="col-sm-8">          
                          <dl class="dl-horizontal">
                            <dt>Amount</dt>
                            <dd>
                            <input type="text" class="form-control" id="Amount" name="amount" placeholder="Enter amount." maxlength="10">
                            <i class="text-red" id="freeTextBalanceStatusMessage"></i>                    
                            <i class="text-green" id="freeTextBalanceStatusMessageSuccess"></i>                    
                            </dd>
                            <dt></dt>
                            <dd>
                            <br/>
                            <a href="javascript:post_modify_free_text_balance('Submit');" class="btn btn-primary btn-sm">Add</a>
                            </dd>
                          </dl>
                        </div><!-- /.col -->
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />         
                        <div class="col-sm-4">

                        </div>                       
                    </div>                  
                    </form>                                                                                         
                </div><!-- /.box-body -->
            </div>  

        </div>
        <div class="modal-footer bg-gray">
            <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
 <!-- Main Table -->
 
<div class="row">
	<div class="col-lg-12">

		<div class="box">		
			<div class="box-header with-border">				
				<a href="${pageContext.request.contextPath}/addClient" class="btn btn-primary btn-sm"><b><i class="fa fa-file-o"></i> Create</b></a>				
		</div>
			<div class="box-body">
	            <table class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%" id="dataTables-clientList">
	                <thead>
	                    <tr>
	                        <th>Employee Name</th>
	                        <th>Department</th>
	                        <th>Job Title</th>
	                        <th>Email Address</th>
	                        <th>Mobile Number</th>
	                        <th>Airtime Balance</th>
	                        <th>Years in the Company</th>
	                        <th>Action</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<c:forEach items="${clientMain}" varStatus="status" var="client">
	                    <tr>
	                        <td><c:out value="${client.employeeName}"></c:out></td>
	                        <td><c:out value="${client.department}"></c:out></td>
	                        <td><c:out value="${client.jobTitle}"></c:out></td>
	                        <td><c:out value="${client.emailAdd}"></c:out></td>
	                        <td><c:out value="${client.msisdn}"></c:out></td>
	                        <td><c:out value="${client.airtimeBalance}"></c:out></td>
	                        <td><c:out value="${client.years}"></c:out></td>
	                        <td class="small-padding">
	                        	<div class="btn-group btn-group.btn-project-action">
	                        	<a href="javascript:show_pasaload('${client.employeeName}', '${client.msisdn}', '${client.airtimeBalance}');" class="btn btn-primary btn-sm"><b><i class="fa fa-mobile"></i> Pasaload</b></a>
	             			 	<a href="${pageContext.request.contextPath}/loyalty/${client.msisdn}" class="btn btn-primary btn-sm"><b><i class="fa fa-trophy"></i> Loyalty Awards</b></a>
	             				</div>
	                        </td>
	                    </tr>                                    
	                	</c:forEach> 
	                </tbody>
	            </table>
			</div><!-- /.box-body -->
		</div>	
	
	</div>
	<!-- /.col-lg-12 -->
</div>	