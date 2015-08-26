function showDeleteResults(){

}

function handleDeleteEvent(e) { 
    e.preventDefault();
    var formObj = $(this); 
    var data = this.dataset.id;
    var object = JSON.parse(data);
    var id = object.id;

    $.ajax({
        url: '/courses_users/' + id,  
        type: "DELETE",
        success: showDeleteResults,   
        error: function() {console.log('There was an error')}
    });
		$(this).parent()[0].remove();
}


function deleteFormListeners(e) {   
    $('.trash_delete').click(handleDeleteEvent);
}

$(document).ready(deleteFormListeners);
