function showSaveResults(data) {  
    if (data.error == "User already has this course") {
        $('#course_already_saved').append('<br><br><div class="col-sm-1"></div><div class="col-sm-10"><div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button><span class="glyphicon glyphicon-hand-right"></span> <strong>Repeated!</strong><hr class="message-inner-separator"><p>You have already saved this course</p></div></div>');
    }
    else {
        $('#submit_courses').append('<i class="fa fa-check"></i>');
    }
}

function handleSaveEvent(e) { 
    e.preventDefault();
    var formObj = $(this); 

    $.ajax({
        url: '/courses/' + this.dataset.id,  
        type: "GET",
        success: showSaveResults,   
        error: function() {console.log('There was an error')}
    });
}


function saveFormListeners(e) {   
    $('#submit_courses').click(handleSaveEvent);
}

$(document).ready(saveFormListeners);
