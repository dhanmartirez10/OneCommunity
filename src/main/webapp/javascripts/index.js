$(document).ready(function() {
    
    $('#myform').jqueryValidate({ // initialize plugin
 
        rules: {
            field1: {
                required: true,
                minlength: 5
            },
            field2: {
                required: true,
                minlength: 5
            }
        },
        messages: {
        	field1: {
        		required: "Please enter field 1",
        		minlength: "Please enter atleast 5 characters."        		
        	},
        	field2: {
        		required: "Please enter field 2",
        		minlength: "Please enter atleast 5 characters."        		
        	}
        },
        submitHandler: function(form) {
        	alert('submitted yes!');
        	return false;
        }
    });
    
    $('#btnEnvioProgramaa').on('click', function() {
        $('#myform').submit();
    });
    
});