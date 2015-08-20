function appendResults(data) {    
    $('#results').empty();
    console.log(data);
    for(var i = 0; i < data.length; i++) {
        $('#results').append('<div id="border">' + '<h1 id="university">' + data[i].name);
        $('#results').append('<img id="uni_picture" src=' + data[i].image + '%>></a></h1>' + '<ul id="list">');
        for(var x = 0; i < data.courses.length; i++)
        $('#results').append( '<li><%= link_to '+ data.courses[i].name + ', course_path(course) %></li> <% end %> </ul> <button class="btn btn-primary ladda-button" id="show_more" data-style="expand-right" type="submit">
                <span type="submit">+ Find more courses in this university</span></button></div><% end %></div>');
        }
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
