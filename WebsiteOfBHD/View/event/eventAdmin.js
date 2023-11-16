const labels = [
    "Tháng 1",
    "Tháng 2",
    "Tháng 3",
    "Tháng 4",
    "Tháng 5",
    "Tháng 6",
];

const data = {
    labels: labels,
    datasets: [
        {
            label: "Sản phẩm đã bán",
            backgroundColor: "#af6e4e",
            borderColor: "#af6e4e",
            data: [0, 20, 40, 25, 58, 72],
            tension: 0.2,
        },
        {
            label: "Người đăng ký",
            backgroundColor: "#5883ad",
            borderColor: "#5883ad",
            data: [0, 15, 37, 52, 49, 60],
            tension: 0.2,
        },
        {
            label: "Người truy cập",
            backgroundColor: "#615c84",
            borderColor: "#615c84",
            data: [0, 30, 75, 42, 87, 65],
            tension: 0.2,
        },
    ],
};
const config = {
    type: "line",
    data: data,
};
const canvas = document.getElementById("canvas");
const chart = new Chart(canvas, config);

// Dữ liệu cho quản lý người dùng
function loadData() {
    var htmls = listUsers.map(function (user) {
        return `<tr>
    <td>${user.name}</td>
    <td>${user.phone}</td>
    <td>${user.email}</td>
    <td>${user.address}</td>
    <td>${user.quantityProducts}</td>
    <td>${user.authorization}</td>
    <td><input type="checkbox"></td>
</tr>`
    });
    let select = document.querySelector("#table tbody");
    select.innerHTML = htmls.join("");
}

loadData();

// Dữ liệu cho quản lý đơn hàng
function loadDataOrder() {
    var htmls = listOrder.map(function (order) {
        return `<tr>
    <td>${order.id}</td>
    <td>${order.name}</td>
    <td>${order.quantity}</td>
    <td>${order.totalPrice}</td>
    <td>${order.status}</td>
    <td><input type="checkbox"></td>
</tr>`
    });
    let select = document.querySelector("#table2 tbody");
    select.innerHTML = htmls.join("");
}

loadDataOrder();

function loadDataComment() {
    var htmls = listComment.map(function (cmt) {
        return `<tr>
    <td>${cmt.NO}</td>
    <td>${cmt.name}</td>
    <td>${cmt.content}</td>
    <td><input type="checkbox"></td>
</tr>`
    });
    let select = document.querySelector("#table3 tbody");
    select.innerHTML = htmls.join("");
}

loadDataComment();
// const panel1 = document.querySelector('#panel1')
// const panel2 = document.querySelector('#panel2')
// const panel3 = document.querySelector('#panel3')
// const panel4 = document.querySelector('#panel4')
// const panel5 = document.querySelector('#panel5')
// var arr_panel = [panel1, panel2, panel3, panel4, panel5]

// function change_template() {
//     arr_panel.forEach(function(panel, index) {
//         if (index !== 0) {
//             panel.style.display = "none";
//         }
//         panel.addEventListener('click', function() {
//             // Ẩn tất cả các panel
//             arr_panel.forEach(function(p, i) {
//                 p.style.display = "none";
//             });

//             panel.style.display = "block";
//         });
//     });
// }

// change_template();

function changeColor(clickedElement) {
    var list = document.querySelectorAll('.menu .item');

    list.forEach(function (item) {
        item.classList.remove('active');
    });
    clickedElement.classList.add('active');
}

function changeDivContent(div) {
    var divMain = document.getElementById('info_panel');
    var panels = document.querySelectorAll('.info_panel > div');

    panels.forEach(function (panel) {
        panel.style.display = 'none';
    });

    var selectedPanel = document.getElementById(div);
    if (selectedPanel) {
        selectedPanel.style.display = 'block';
    }
}

function handleClick(clickedElement, div) {
    changeColor(clickedElement);
    changeDivContent(div);
}

function buttonClick(div) {
    let allDivs = document.getElementById('panel5');
    let panels = document.querySelectorAll('.info_panel > div');

    panels.forEach(function (panel) {
        panel.style.display = 'none';
    });
    if (allDivs) {
        allDivs.style.display = 'block';
    }
}
