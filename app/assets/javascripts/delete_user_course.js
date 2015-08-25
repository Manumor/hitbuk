function handleDeleteEvent(e) { 
    e.preventDefault();
    var formObj = $(this); 

    $.ajax({
        url: '/courses_users/2',  
        type: "DELETE",
        success: console.log("Success!"),   
        error: function() {console.log('There was an error')}
    });
}


function deleteFormListeners(e) {   
    $('#trash_delete').click(handleDeleteEvent);
}

$(document).ready(deleteFormListeners);
