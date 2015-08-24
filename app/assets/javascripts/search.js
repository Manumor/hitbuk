function appendResults(data) {    
    $('#results').empty();
    console.log(data);
    console.log(data["courses"]);
    var content = ''
    for(var i = 0; i < data.length; i++) {
        content += '<div id="border"><h1 id="univeristy_title">' + data[i].name +'<img id="uni_picture" src=' + data[i].image + '></a></h1>';
        content += '<ul>';
        for(var x = 0; x < data[i].courses.length; x++) {
           content += '<li id="list">' + '<a href="/courses/' + data[i].courses[x].id + '">' + data[i].courses[x].name + '</a>' + '</li>';
        };
        content += '</ul>';
    content += '<a class="btn btn-primary ladda-button" id="show_more" href="/universities/' + data[i].id + '">' + '+ Find more courses in this university</a></div>';
    };
    $('#results').append(content);
}

function handleSubmitEvent(e) { 
    var formObj = $(this);    e.preventDefault();

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
