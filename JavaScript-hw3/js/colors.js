// ############## READ ONLY  ##############

function updateColorChoosers() {
    const new_num = Math.abs(parseInt(document.querySelector('#num_colors').value));
    const container = document.querySelector('#colors_container');

    let newHtml = '';
    for (let i = 0; i < new_num; i++) {
        newHtml += '<div class="subrow">\
                        <label for="color_sel' + i + '">Color #' + (i + 1) + '</label>\
                        <input id="color_sel' + i + '" type="color"/>\
                    </div>';

    }

    container.innerHTML = newHtml;
}

document.querySelector('#num_colors').addEventListener('input', updateColorChoosers);