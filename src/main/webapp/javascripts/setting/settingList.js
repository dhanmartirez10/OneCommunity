$(document).ready(function() {

    $('#dataTables-clientList').DataTable();
    
        $('#enabledYes1').attr('checked', 'checked');
        $('#enabledNo1').attr('checked', false);
        $("#enabledYes1").prop("checked", true);
        $("#enabledYes1").is(":checked");
        
    $('.datepicker').datepicker({
        format: 'mm/dd/yyyy'
    });

    $("#txtFromDate").datepicker({
        changeMonth: true,
        changeYear: true,
        minDate: 0,
        onSelect: function(selected) {
          $("#txtToDate").datepicker("option","minDate", selected)
        }
    });
    $("#txtToDate").datepicker({
        changeMonth: true,
        changeYear: true,
        minDate: 0,
        onSelect: function(selected) {
           $("#txtFromDate").datepicker("option","maxDate", selected)
        }
    });

    $("#pasaloadModal").on("shown.bs.modal",function(){
        $("th").popover('hide');
    });
    
});

function show_pasaload(employeeName, msisdn, airtimeBalance) {
	
	$("#empName").html(employeeName);
	$("#empMsisdn").html(msisdn);
	$("#empAirtimeBal").html(airtimeBalance);
	
    $('#pasaloadModal').modal({
        toggle: true,
        keyboard: false,
        backdrop: 'static'            
    });            
}

