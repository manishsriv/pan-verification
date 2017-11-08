# pan-verification
Verify the name from the PAN number.

# Installation Steps:

1. Create a database in mysql.
2. Import `pan_details.sql` to the database
3. Go to `pan_verification_api.php` and change the connection details.
4. Run it on any PHP Server.


# Program flow:

1. User will enter data in text field.
2. The is totally handled with jQuery, so when user hit on Validate, it will check step by step through jQuery.
3. First it will check if the fields are not empty. If it is empty this will show an error.
```
    if(!valid_pan){
            $('#pan_error').text('Please enter PAN Number');
            return false;
          }else{
            $('#pan_error').text('');
          }
 ```
4. Again it will check if the PAN number format is valid or not using Regular Expression.
`/^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$/`
    
5. Then it will send data to PHP API through ajax POST request. 
```
    $.ajax({
    type: "POST",
      url: "api/pan_verification_api.php", //use full URL with localhost
      data: {
          pan_num: valid_pan,
          user_name: user_name
      },
      success: function (data) {

        if(data == 1){
          $('#pan_verified').addClass('text-success');
          $('#pan_verified').text("Name on PAN card verified!");
          $('.glyphicon').addClass('glyphicon-ok');
        }else{
          $('#pan_verified').addClass('text-danger');
          $('#pan_verified').text("Name doesn't match to PAN card data!");
          $('.glyphicon').addClass('glyphicon-remove');
        }

      }
  });
 ```
 6. It will pass PAN number as well as Name in ajax post request.
 7. PHP API will read the request and will get PAN number and Name from the request using PHP  `$_REQUEST` function.
 ```
    $pan_number = $_REQUEST['pan_num']; // Get the PAN number sent by Ajax request;
    $user_name = $_REQUEST['user_name']; //Get the name sent by Ajax request;
    
 ```
 
 8. PHP API have database connection so it will connect to the database where all the PAN information is stored and will query using available data, and if data is available then mysql query will return a row. From which we can validate that the PAN number and Name are matching or not.
 ```
 $sql = "SELECT id FROM pan_data WHERE pan_number = '".$pan_number."' AND pan_name = '".$user_name."'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    echo 1;
} else {
    echo 0;
}
```
9. After query it will go back to the Ajax and will return the data sent by PHP API. 
10. Using that data returned from PHP API we can proceed further to show the result to the User End.


 
 
 
