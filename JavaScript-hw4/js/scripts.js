// ########################  Assignment 4 - Andres Candido  #########################

// Global variables

var name_correct 
var username_correct 
var password_correct 
var age_correct 
var bio_correct 
var form_validated = false

// functions 

onload =  function() {dog_check()}
document.getElementById("udogs").onchange =  function() {dog_check()}

function dog_check(){

    const likes_dogs = document.getElementById('udogs').checked;

    let newHtml = '';
    if (likes_dogs == true){

        newHtml += '<option value="0">I did not say I like dogs</option>\
                    <option value="1">Labrador</option>\
                    <option value="2">Golden Retreiver</option>\
                    <option value="3">Corgi</option>\
                    <option value="4">Chihuahua</option>\
                    <option value="5">Other</option>'
    }
    else{
        newHtml += '<option value="0">I did not say I like dogs</option>'
    }

    document.querySelector('#topdog').innerHTML = newHtml;
}


function name_check(){

    const name = document.getElementById("name").value
    name_correct = false

    if (name[0] == name[0].toUpperCase() ){

        name_correct = true
    }
}

function username_check(){

    const username = document.getElementById("username").value
    username_correct = false

    if (username.length >= 5){

        username_correct = true
    }
}

function password_check(){

    const password = document.getElementById("password").value
    password_correct = false

    if (password.length >= 6){

        password_correct = true
    }
}

function age_check(){

    const age = document.getElementById("age").value
    age_correct = false

    if (parseInt(age) > 0 ){

        age_correct = true
    }
}

function bio_check(){

    const bio = document.getElementById("bio").value
    bio_correct = false

    if (bio.includes("fsu") || bio.includes("FSU") || bio.includes("florida state") || bio.includes("Florida State")){

        bio_correct = true
    }
}



if (form_validated == false){                        // cant submit until form_validated == true

    document.addEventListener('submit', (e) => {
        e.preventDefault();
    
        form_validation();
    })
}


function form_validation(){

    name_check(); username_check(); password_check(); age_check(); bio_check();   // call all "check" functions to update global variables and write messages in the result column

    let newHtml = '';

    if (name_correct == true){

        newHtml += 'Your name is '+document.getElementById("name").value+'<br>'
    }
    else {
        newHtml += '<span style="color:red">ERROR --- First letter must be in uppercase </span><br>'
    }

    if (username_correct == true){

        newHtml += 'Your username is '+document.getElementById("username").value+'<br>'
    }
    else {
        newHtml += '<span style="color:red">ERROR --- Username must be at least 5 characters long </span><br>'
    }

    if (password_correct == true){

        newHtml += 'Your password has at least 6 characters<br>'
    }
    else {
        newHtml += '<span style="color:red">ERROR --- Your password must have at least 6 characters </span><br>'
    }

    if (age_correct == true){

        newHtml += 'Your age is '+document.getElementById("age").value+'<br>'
    }
    else {
        newHtml += '<span style="color:red">ERROR --- Age must be greater than 0 </span><br>'
    }

    if (bio_correct == true){

        newHtml += 'Your bio: '+document.getElementById("bio").value+'<br>'
    }
    else {
        newHtml += '<span style="color:red">ERROR --- bio must include "fsu" or "florida state"</span><br>'
    }

    newHtml += 'Your gender: '+document.getElementById("genders").selected +'<br>'


    if (document.getElementById('udogs').checked == true){

        newHtml += 'You certify that you like dogs<br> Your favorite dog breed: '+document.getElementById("topdog").selected+'<br>'
    }
    else{
        newHtml += 'You certify that you dislike dogs<br>'
    }


    document.querySelector('#output').innerHTML = newHtml;


    if (name_correct == true && username_correct == true && password_correct == true && age_correct == true && bio_correct == true){

        form_validated = true   //form can be submitted
    }
}
