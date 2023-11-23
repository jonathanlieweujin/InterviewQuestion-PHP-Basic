<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];

    if ($username === "abc") {
        echo '<span style = "color: #039B87;" > Status: Verified!</span>'; // If is abc
    } else {
        echo '<span style = "color: #ca2609;" > Status: Error! Username is not abc.'; // If not abc
    }
} else {
    // Handle non-POST requests if necessary
    echo "Invalid request method";
}
?>
