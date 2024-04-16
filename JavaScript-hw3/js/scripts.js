// ############## Assignment 3 - Andres Candido ##############

document.getElementById("size_btn").onclick = function() {Change_size()}

function Change_size() {

    const new_height = document.getElementById("height").value;
    const new_width  = document.getElementById("width").value;

    document.getElementById("result").style.height = new_height+"px";
    document.getElementById("result").style.width = new_width+"px";
    
}


document.getElementById("colors_btn").onclick = function() {Change_colors()}

function Change_colors() {

    const num_of_colors = document.getElementById("num_colors").value;
    const box_height    = document.getElementById("height").value;
    const row_height    = box_height / num_of_colors;

    let newHtml = '';
    for (let i = 0; i < num_of_colors; i++) {

        const color_val = document.getElementById("color_sel"+i).value;

        newHtml += '<div style="height:'+row_height+'px;' + ' background-color:'+color_val+';"> </div>';
    }   

    document.querySelector('#result').innerHTML = newHtml;
}


document.getElementById("border_btn").onclick = function() {Change_border()}

function Change_border() {

    const b_type  = document.getElementById("border_type").value;
    const b_color = document.getElementById("border_color").value;
    const b_width = document.getElementById("border_width").value;

    document.getElementById("result").style.border= b_width+'px '+b_type+' '+b_color;
}