<!DOCTYPE html>
<html>
<body>

<h1>The form element</h1>

<form id="myForm" action="output.html">
    First Name :<input type="text" id="myText"  /><br><br>
    Last Name :<input type="text" id="myText1"  /><br><br>
    E-Mail :<input type="email" id="myText2"  /><br><br>
    Male<input type="radio" id="myText3"  />
    Female<input type="radio" id="myText4"  /><br><br>
    D.O.B:<input type="date" id="myText4"  /><br><br>
    Phone Number:<input type="tel" id="myText6"  /><br><br>
    Password:<input type="password" id="myText7"  /><br><br>
    <button type="button" id="login" onclick="myfunction();">Login</button>

</form>
<script>
    function myfunction(){
        window.open("loginPage.html");
    }
</script>
</body>
</html>
