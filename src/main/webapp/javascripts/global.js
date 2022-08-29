$.Controller = {};
$.Controller.menu = {
		setActiveMenu: function(id) {
			$('#menu' + id).prop("class","active");
			//alert(menuId);
		}
};


/*
 
 Description: Add contains method to String which check if string is a substring of string.
 Note: check for lower case
 
*/

String.prototype.contains = function(it)
{
	return this.toLowerCase().indexOf(it) != -1;
};

/*

 Description: Jquery Validation

*/

$.fn.jqueryValidate = function(options) {
	var settings = $.extend({
        highlight: function(element, errorClass, validClass) {
			$('#group-' + element.id).addClass( 'has-error' );
			$('#icon-' + element.id).show();
			
        },
        
        unhighlight: function(element, errorClass, validClass) {
			$('#group-' + element.id).removeClass( 'has-error' );
			$('#icon-' + element.id).hide();	
        },
        
        errorPlacement: function(error, element) {
        	error.appendTo('#msg-' + element[0].id);
        }
	}, options);
	
	this.validate(settings);
	
};

$('body').on('click', '.disabled', function(e) {
    e.preventDefault();
    return false;
});

/*

Description: Trigger $(window).resize after the resize is completed.
Used in: app.js "\externals\adminlte-2.3.0\dist\js\app.js"

*/

var waitForFinalEvent = (function () {
	  var timers = {};
	  return function (callback, ms, uniqueId) {
	    if (!uniqueId) {
	      uniqueId = "Don't call this twice without a uniqueId";
	    }
	    if (timers[uniqueId]) {
	      clearTimeout (timers[uniqueId]);
	    }
	    timers[uniqueId] = setTimeout(callback, ms);
	  };
	})();
