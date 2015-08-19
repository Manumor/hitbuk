function appendResults(data) {    
    $('#results').empty();
    
    for(var i = 0; i < data.length; i++) {
        $('#results').append('<h4>' + data[i].name + '</h4>');
        $('#results').append('<p>' + '- ' + data[i].description + '</p>');
        $('#results').append('<p>' + '- ' + data[i].ibpoints  + ' (' + data[i].ibextra + ')' + '</p>' );
    }
}

function handleSubmitEvent(e) { 
    e.preventDefault();
    var formObj = $(this);
    var formURL = '/searches/university';
    var formData = formObj.serializeArray();

    $.ajax({
        url: formURL,
        type: "POST",
        data: formData,
        success: appendResults,
        error: function() {console.log('oops')}
    });
}


function attachFormListeners() {   
    $('#search_form').submit(handleSubmitEvent);
}

$(document).ready(attachFormListeners);
