/* Browser Resolution 
==========================================================*/

function adjustStyle(width) {
    width = parseInt(width);
		if (width < 840) {
			$('body').removeClass('bw720').removeClass('bw1024').removeClass('bw1280');
			$('body').addClass('bw720');
		} else {
			if (width < 1150) {
	        $('body').removeClass('bw720').removeClass('bw1024').removeClass('bw1280');
					$('body').addClass('bw1024');
	    } else {
	       	$('body').removeClass('bw720').removeClass('bw1024').removeClass('bw1280');
					$('body').addClass('bw1280');
	    }
		}
 
}

$(function() {
    adjustStyle($(this).width());
    $(window).resize(function() {
        adjustStyle($(this).width());
    });
});