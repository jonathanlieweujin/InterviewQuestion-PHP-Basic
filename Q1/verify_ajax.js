$(document).ready(function() {
    $("#submitButton").click(function() {
        var username = $("#username_input").val();

        if (username !== "") { // If not empty
            $.ajax({
                type: "POST",
                url: "info.php",
                data: { username: username },
                success: function(response) {
                    $("#status_caption").html(response);
                }
            });
        } else { // If empty
            $("#status_caption").html('<span style = "color: #ca2609;" > Status: Error! Username cannot be empty'); 
        }
    });
});
