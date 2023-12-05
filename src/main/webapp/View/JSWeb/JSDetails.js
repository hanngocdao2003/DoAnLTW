document.addEventListener("DOMContentLoaded", function () {
    var btnColor = document.querySelectorAll(".btn"); // Sửa thành querySelectorAll

    btnColor.forEach(function (button) {
        button.addEventListener('click', function () {
            // Gọi hàm thay đổi màu
            changeColor(button);
        });
    });

    function changeColor(clickedButton) {
        // Đặt màu cam cho button được click
        clickedButton.style.border = '5px solid var( --but)'; // Sửa thành 'border' thay vì 'boder'

        // Đặt lại màu của các button khác
        btnColor.forEach(function (button) {
            if (button !== clickedButton) {
                button.style.border = ''; // Sửa thành 'border' thay vì 'backgroundColor'
            }
        });
    }
});

document.addEventListener("DOMContentLoaded", function () {
    var btnColor = document.querySelectorAll(".size-btn"); // Sửa thành querySelectorAll

    btnColor.forEach(function (button) {
        button.addEventListener('click', function () {
            // Gọi hàm thay đổi màu
            changeColor(button);
        });
    });

    function changeColor(clickedButton) {
        // Đặt màu cam cho button được click
        clickedButton.style.border = '5px solid var( --but)'; // Sửa thành 'border' thay vì 'boder'

        // Đặt lại màu của các button khác
        btnColor.forEach(function (button) {
            if (button !== clickedButton) {
                button.style.border = ''; // Sửa thành 'border' thay vì 'backgroundColor'
            }
        });
    }
});