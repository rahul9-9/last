<!DOCTYPE html>
<html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
    
    .navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
    
    
* {
    box-sizing: border-box;
}

body {
    background-color: #f1f1f1;
    padding: 20px;
    font-family: Arial;
}

/* Center website */
.main {
    max-width: 1000px;
    margin: auto;
}

h1 {
    font-size: 50px;
    word-break: break-all;
}

.row {
    margin: 8px -16px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
    padding: 8px;
}

/* Create four equal columns that floats next to each other */
.column {
    float: left;
    width: 25%;
}

/* Clear floats after rows */ 
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Content */
.content {
    background-color: white;
    padding: 10px;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 900px) {
    .column {
        width: 50%;
    }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .column {
        width: 100%;
    }
}

#imgid{
    width:100%;
}

#imgid2{
    width:100%;
}
body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    background-image: url("images/hd1.jpg"),url("images/hd1.jpg");
    
    /* Full height */
    height: 250%;
    width: 100%;

    /* Center and scale the image nicely */
    background-position:top,bottom;
    background-repeat:repeat,repeat;
    background-size: cover;
}
.bor {
    background-color: lightgrey;
    width: 350px;
    border: 5px solid green;
    padding: 10px;
    margin: 10px;
}




/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}



body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 40%;
    padding: 10px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 15px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    height: 20%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 10px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>






    <body>
        
<div class="bg">

    <div class="navbar">
  <a href="index.html">Home</a>
 
      <div class="dropdown">
      <button class="dropbtn">Looking for 
      <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
      <a href="apartment.html">Apartments</a>
      
      </div>
  </div> 
  
  <!--
  <div class="dropdown">
    <button class="dropbtn">Rent
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">5k-10k</a>
      <a href="#">10k-20k</a>
      <a href="#">20kabove</a>
    </div>
  </div> -->
  
  <!--
  <div class="dropdown">
    <button class="dropbtn">BHK
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">1 BHK</a>
      <a href="#">2 BHK</a>
      <a href="#">3 BHK</a>
	  <a href="#">above 3</a>
	 
    </div>
	
  </div-->
 
 <align="right"><a href="newhtml.html">Sign in</a>  </align>
 <a href="signup1.html">sign up</a>
 </div>


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

<!-- MAIN (Center website) -->
<div class="main">

    <div class="bor"> <h1>Apartments</h1></div>




<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column">
    <div class="content">
        
      <img src="images/apartment4.jpg" alt="Mountains" style="width:100%">

	  <h3 style="color:Crimson;font-family:harrington;font-size: 10;text-align:center;"<b>    --> Price = 50,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->2 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->panchkula</b></h3>
	<h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 200000 rs</b></h3>
       
    
    
<!-- Trigger/Open The Modal -->
<button id="myBtn">BOOK NOW</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    
<form action=booking style="border:1px solid #ccc" method="POST">
  <div class="container">
    <h3>Bookings</h3>
    <p>Please fill in this form to book your dream apartment.</p>
    <hr>

  
    <input type="text" placeholder="Name" name="name" required>

   
    <input type="text" placeholder="Phone No" name="phoneno" required>

   
    <input type="text" placeholder="Email" name="email" required>
      <input type="text" placeholder="address" name="address" required>
   
    
    <p>By clicking on Book Now you agree to our <a href="terms.html" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
     
      <button type="submit" class="signupbtn">Book Now</button>
    </div>
  </div>
</form>

  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

    
    
    
    
    
    
    
    
    
    
    
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/apartment2.jpg" alt="Mountains" style="width:100%">

	  <h3 style="color:Crimson;font-family:harrington;font-size: 10;text-align:center;"<b>    --> Price = 50,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->1 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->panchkula</b></h3>
	<h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 200000 rs</b></h3>
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/apartment3.jpg" alt="Nature" style="width:100%">
	 <h3 style="color:Crimson;font-family:harrington;font-size:10;text-align:center;"<b>    --> Price = 990,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->4 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->chandidarh</b></h3>
		 	 <h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 2000000 rs</b></h3>
     
      
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/apartment4.jpg" alt="Mountains" style="width:100%">
	 <h3 style="color:Crimson;font-family:harrington;font-size:10;text-align:center;"<b>    --> Price = 20,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->1 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->panchkula</b></h3>
		 	 <h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 20000 rs</b></h3>
    
      
    </div>
  </div>
<!-- END GRID -->
</div>



<div class="main">






<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column">
    <div class="content">
      <img src="images/apartment1.jpg" alt="Mountains" style="width:100%">

	  <h3 style="color:Crimson;font-family:harrington;font-size: 10;text-align:center;"<b>    --> Price = 50,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->2 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->panchkula</b></h3>
	<h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 200000 rs</b></h3>
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/apartment2.jpg" alt="Mountains" style="width:100%">

	  <h3 style="color:Crimson;font-family:harrington;font-size: 10;text-align:center;"<b>    --> Price = 50,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->1 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->panchkula</b></h3>
	<h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 200000 rs</b></h3>
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/apartment3.jpg" alt="Nature" style="width:100%">
	 <h3 style="color:Crimson;font-family:harrington;font-size:10;text-align:center;"<b>    --> Price = 990,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->4 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->chandidarh</b></h3>
		 	 <h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 2000000 rs</b></h3>
     
      
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/apartment4.jpg" alt="Mountains" style="width:100%">
	 <h3 style="color:Crimson;font-family:harrington;font-size:10;text-align:center;"<b>    --> Price = 20,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->1 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->panchkula</b></h3>
		 	 <h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 20000 rs</b></h3>
    
      
    </div>
  </div>
<!-- END GRID -->
</div>


<div class="main">






<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column">
    <div class="content">
      <img src="images/apartment1.jpg" alt="Mountains" style="width:100%">

	  <h3 style="color:Crimson;font-family:harrington;font-size: 10;text-align:center;"<b>    --> Price = 50,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->2 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->panchkula</b></h3>
	<h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 200000 rs</b></h3>
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/apartment2.jpg" alt="Mountains" style="width:100%">

	  <h3 style="color:Crimson;font-family:harrington;font-size: 10;text-align:center;"<b>    --> Price = 50,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->1 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->panchkula</b></h3>
	<h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 200000 rs</b></h3>
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/apartment3.jpg" alt="Nature" style="width:100%">
	 <h3 style="color:Crimson;font-family:harrington;font-size:10;text-align:center;"<b>    --> Price = 990,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->4 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->chandidarh</b></h3>
		 	 <h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 2000000 rs</b></h3>
     
      
    </div>
  </div>
  <div class="column">
    <div class="content">
    <img src="images/apartment4.jpg" alt="Mountains" style="width:100%">
	 <h3 style="color:Crimson;font-family:harrington;font-size:10;text-align:center;"<b>    --> Price = 20,500 rs</b></h3>
	 <h3 style="color:Crimson;font-family:harrington;font-size:9;text-align:center;"<b>-->1 BHK Apartment</b></h3>
     	 <h3 style="color:Crimson;font-family:harrington;font-size:8;text-align:center;"<b>-->panchkula</b></h3>
		 	 <h3 style="color:Crimson;font-family:harrington;font-size:6;text-align:center;"<b>-->Security Deposit = 20000 rs</b></h3>
    
      
    </div>
  </div>
<!-- END GRID -->
</div>












</body>
</html>
