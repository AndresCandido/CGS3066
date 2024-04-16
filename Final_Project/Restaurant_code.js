// ########################  Final Project - Andres Candido  #########################

// ------------------- Slide-show Start ---------------------

let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 5000); // Change image every 5 seconds
}

// ------------------- Slide-show end ---------------------


// ------------------- Opening Hours start ---------------------
const weekday = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
let open_or_close = "We are currently open!";
let am_or_pm = "undefined";
time_and_date();

function time_and_date() {
  let today = new Date();
  let day_of_week = weekday[today.getDay()];
  let time_in_mins = (today.getHours() * 60) + today.getMinutes();
  let std_time = today.getHours(); 

  if (day_of_week == "Sunday"){
    open_or_close = "Sorry, We are currently closed."
  }
  else if ( (day_of_week == "Monday" || day_of_week == "Tuesday" || day_of_week == "Wednesday" || day_of_week == "Thursday") && (time_in_mins < 645 || time_in_mins > 1320)){
    open_or_close = "Sorry, We are currently closed."
  }
  else if ( (day_of_week == "Friday" || day_of_week == "Saturday" ) && (time_in_mins < 645 || time_in_mins > 1380)){
    open_or_close = "Sorry, We are currently closed."
  }
  else{
    open_or_close = "We are currently open!"
  }

  //std_time = today.getHours() gives time in military format, we will convert it to standart format
  if (std_time < 12){ 
    am_or_pm = "am"
    if (std_time == 0){ 
      std_time = 12     // displays 12:XXam instead of 0:XXam
    }
    std_time = std_time + ':' + today.getMinutes() + am_or_pm
  }
  else if (std_time > 12){
    am_or_pm = "pm"
    std_time = (std_time - 12) + ':' + today.getMinutes() + am_or_pm
  }

  document.getElementById("current_time").innerHTML = "It is currently " + day_of_week + ' at ' + std_time + '<br>' + open_or_close;
}

// ------------------- Opening Hours end ---------------------