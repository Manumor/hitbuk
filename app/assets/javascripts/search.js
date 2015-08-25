function appendResults(data) {    
    $('#results').empty();
    console.log(data);
    console.log(data.courses);
    if (0 === data.length) {
    var error_message = '';
    error_message += '<div class="col-sm-3"></div><div class="col-sm-7"><div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button><span class="glyphicon glyphicon-hand-right"></span> <strong>No Courses were found</strong><hr class="message-inner-separator"><p>Change a few things up and try submitting again.</p></div></div>';
    $('#results').append(error_message);
    }
    else {
    var content = ''
    for(var i = 0; i < data.length; i++) {
        content += '<div id="border"><h1 id="univeristy_title">' + data[i].name +'<img id="uni_picture" src=' + data[i].image + '></a></h1>';
        content += '<ul>';
        for(var x = 0; x < data[i].courses.length; x++) {
           content += '<li id="list">' + '<a href="/courses/' + data[i].courses[x].id + '" target="_blank">' + data[i].courses[x].name + '</a>' + '</li>';
        };
        content += '</ul>';
    content += '<a class="btn btn-primary ladda-button" id="show_more" href="/universities/' + data[i].id + '" target="_blank">' + '+ Find more courses in this university</a></div>';
    };
    $('#results').append(content);
    }
}

function handleSubmitEvent(e) { 
    var formObj = $(this);    
    e.preventDefault();

    var formURL = '/searches/university';
    var formData = formObj.serializeArray();

    $.ajax({
        url: formURL,
        type: "POST",
        data: formData,
        success: appendResults,
        error: function() {console.log('There was an error')}
    });
}


function attachFormListeners(e) {   
    $('#search_form').submit(handleSubmitEvent);
}

$(document).ready(attachFormListeners);
