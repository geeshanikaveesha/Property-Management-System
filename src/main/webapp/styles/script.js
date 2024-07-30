
   function validateNumber() {
            // Get the input element
            var numberInput = document.getElementById("number");
            
         
            var numberPattern = /^[A-Z]{2}-\d{4}$/;
            
          
            if (!numberPattern.test(numberInput.value)) {
              
                alert("Invalid vehicle number format. Please use a format like 'AB-1212'.");
            
                numberInput.value = "";
           
                return false;
            }
            
            // Validation passed, allow form submission
            return true;
        }
    
  
  function openLoginPage() {
    window.location.href = "login.jsp";
  }

  function openRegisterPage() {
    window.location.href = "signup.jsp";
  }
  
  function openHomePage() {
      window.location.href = "home.jsp";
    }
	
window.addEventListener('scroll', function() {
  var navbar = document.getElementById('navbar');
  if (window.pageYOffset > 0) {
    navbar.classList.add('navbar-hidden');
  } else {
    navbar.classList.remove('navbar-hidden');
  }
});

 function openappstore(){
	location.href = "https://www.apple.com/app-store/";
 }
 
  function openplaystore(){
	location.href = "https://play.google.com/";
 }

window.addEventListener('scroll', function() {
  var footer = document.getElementById('footer');
  var scrollPosition = window.scrollY || document.documentElement.scrollTop;

  // Get the total height of the document including the scrollable area
  var totalHeight = document.documentElement.scrollHeight;

  // Calculate the height of the visible portion of the document
  var visibleHeight = window.innerHeight;

  // Calculate the distance from the current scroll position to the bottom of the page
  var scrollDistanceToBottom = totalHeight - (scrollPosition + visibleHeight);

  // Specify a threshold value (in pixels) to determine when to show/hide the footer
  var threshold = 100;

  // Toggle the visibility of the footer based on the scroll distance to the bottom
  if (scrollDistanceToBottom < threshold) {
    footer.style.display = 'flex';
  } else {
    footer.style.display = 'none';
  }
});



  