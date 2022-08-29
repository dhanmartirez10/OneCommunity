function checkifValidMessage(textarea,button){
	$(button).prop('disabled',$(textarea).val()=="");
}

$(document).ready(function() {
    $('#textMessageCount').val(2000);
    
    $('#textMessage').bind('input propertychange', function() {   
    	var length = this.value.length;
    	if(length>2000){
    		$("#textMessage").val(this.value.substring(0,2000));
        	var length = this.value.length;
    	}
        $('#textMessageCount').val(2000-length);
  });
    
    $('#textMessageEdit').bind('input propertychange', function() {   
    	var length = this.value.length;
    	if(length>2000){
    		$("#textMessageEdit").val(this.value.substring(0,2000));
        	var length = this.value.length;
    	}
        $('#textMessageCount1').val(2000-length);
  });
   
    $("#acknowledgeBroadcastMessageForm").submit(function(e){
    	return e.preventDefault();
    });

	var currentTime = new Date()
	var maxDate =  new Date(currentTime.getFullYear(), currentTime.getMonth() +1); // one day before next month
	
	$('#dateTextMessageSchedule').datetimepicker({
	    maxDate: maxDate,
	    useCurrent: false
	});

    var d = new Date();
	var minDate = new Date(currentTime.getYear(), currentTime.getMonth() -1, +1); //one day next before month
    d.setHours(d.getHours() + 1);
	$('#dateTextMessageSchedule').data("DateTimePicker").minDate(d);
    setInterval(function(){
        var d = new Date();
        d.setHours(d.getHours() + 1);
    	$('#dateTextMessageSchedule').data("DateTimePicker").minDate(d);
    },10000);
    
	
});