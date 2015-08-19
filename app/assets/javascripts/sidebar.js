
    $(document).ready(function() {
        $("#submit_subjects").click(function(){
            var subjects = [];
            $.each($("input:checked"), function(){            
                subjects.push($(this).val());
            });
    	
                for(var i = 0; i < subjects.length; i++) {
        			$('#preferences').append('<p>' + subjects[i] + '</p>');

    			}
        });
    });


