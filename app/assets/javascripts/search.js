function appendResults(data) {    
    $('#results').empty();
    console.log(data);
    console.log(data["courses"]);
    for(var i = 0; i < data.length; i++) {
        $('#results').append('<div id="border">' + '<h1 id="univeristy_title">' + data[i].name);
        $('#results').append('<img id="uni_picture" src="' + data[i].image + '"</a></h1>' + '<ul id="list">');
        for(var x = 0; x < data[i].courses.length; x++) {
            $('#results').append( '<li>' + '<% link_to ' + data[i].courses[x].name + ', course_path(course) %>' + '</li>');
            }
            $('#results').append( '</ul>' + '<%= link_to' + "+ Find more courses in this university " + ', university_path(university), :method => "post",:id => "show_more", :class => "btn btn-primary ladda-button" %>' + '</div>');
    }
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
