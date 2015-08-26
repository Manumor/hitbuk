var subjects;

function handleResults(e) {
    e.preventDefault();
    $('#preferences').empty();
    subjects = [];
    $.each($("input:checked"), function(){            
        subjects.push($(this).val());
    });
        
    for(var i = 0; i < subjects.length; i++) {
        $('#preferences').append('<li><a  href="./categories/tok-and-ee">' + subjects[i] + '</a></li>');
    }
    handleTheSubmitEvent();

  }
function handleTheSubmitEvent(e) {   
    var formURL = '/subjects';
    var formData = {subjects: subjects};

    $.ajax({
        url: formURL,
        type: "POST",
        data: formData,
        success: function () {console.log("right")},
        error: function() {console.log('oops, there was an error!')}
    });
}

function formDocument() {   
    $('#submit_subjects').click(handleResults);
}

$(document).ready(formDocument);