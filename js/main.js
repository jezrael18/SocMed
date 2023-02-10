
if($('#btn-create').click(function(){
    check();
}));

if($('#btn_login').click(function(){
    checkUser();
}));


var check=()=>
{
    if($('#firstname').val() != "" && $('#lastname').val() != "" &&
    $('#email_addr').val() != "" && $('#password').val() != "" &&
    $('#cpassword').val() != "")
    {
        register();
    }
    else
    {
        alert("Please Fill in all the field's");
    }
}

var checkUser=()=>
{
    if($('#email').val() != "" && $('#password').val() != "")
    {
        login();
    }
    else
    {
        alert("Please Fill in all the field's");
    }
}
var register=()=>
{
    $.ajax({
        type: "POST",
        url: "include/router.php",
        data:{choice:'register', first_name:$('#first_name').val(),last_name:$('#last_name').val(),email_addr:$('#email_addr').val(),password:$('#password').val(),
        cpassword:$('#cpassword').val()},
        success: function(result)
        {
            if(result == 200)
            {
                alert("Account has been Created!");
                location.replace("login.html");
            }
            else
            {
                alert("Username already been use please choose other username");
            }
        },
        error: function(error)
        {

            alert(error);
        }
    })
}
let attempt = 3;
var login=()=>
{
    $.ajax({
        type: "POST",
        url: "include/router.php",
        data:{choice:'login', email:$('#email').val(),password:$('#password').val()},
        success: function(result)
        {  
            if(result == 0)
            {
                alert("Login Successfully!");
                location.replace("newsfeed.html");
            }
            else if(result == 1)
            {
                alert("Login Successfully!");
                location.replace("newsfeed.html");
            }
            else if(result == 2)
            {
                alert("Opps You dont have attempt");
            }
            else
            {
                if(attempt == 0)
                {
                    let login_attempt = 1;
                    alert("No more login attempt please contact admin");
                    isLocked(login_attempt);
                }
                else
                {
                    attempt -=1;
                    alert("Wrong Username and Password");
                    if(attempt == 0)
                    {
                        document.getElementById("email").disabled = true;
                        document.getElementById("password").disabled = true;
                    }
                }
            }
        },
        error: function(error)
        {
            alert(error);
        }
    })
}
var purchased=()=>
{
    $.ajax({
        type: "POST",
        url: "include/router.php",
        data:{choice:'purchased',name:$('#name').val(),price:$('#price').val(),ram:$('#ram').val(),rom:$('#rom').val()},
        success: function(result)
        {
            if(result == 200)
            {
                alert("Successfully Purchased!");
                location.replace("choice.html");
            }
            else
            {
                alert("Unsucessfully");
                location.replace("listPurchased.html");
            }
        },
        error: function(error)
        {

            alert(error);
        }
    })
}
var Logout=()=>
 {
     $.ajax({
         type: "POST",
         url: "include/router.php",
         data:{choice:'logout'},
         success: function(res)
         {
             if(res==200)
             {
                 alert("Logout Successfully");
                 setTimeout(()=>{location.replace("index.html");}, 500);
             }
         },
         error: function(error)
         {
             console.log(error);
         }
     })
 }

 var isLocked=(attempt)=>
 {
    $.ajax({
        type: "POST",
        url: "include/router.php",
        data:{choice:'locked',attempt:attempt,email:$('#email').val()},
        success: function(res)
        {
            console.log(res);
        },
        error: function(error)
        {
            console.log(error);
        }
    })
 }