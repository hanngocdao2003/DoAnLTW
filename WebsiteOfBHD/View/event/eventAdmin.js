const labels = ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6'];

const data = {
    labels: labels,
    datasets: [
        {
            label: 'Sản phẩm đã bán',
            backgroundColor: '#af6e4e',
            borderColor: '#af6e4e',
            data: [0, 20, 40, 25, 58, 72],
            tension: 0.2,
        },
        {
            label: 'Người đăng ký',
            backgroundColor: '#5883ad',
            borderColor: '#5883ad',
            data: [0, 15, 37, 52, 49, 60],
            tension: 0.2,
        },
        {
            label: 'Người truy cập',
            backgroundColor: '#615c84',
            borderColor: '#615c84',
            data: [0, 30, 75, 42, 87, 65],
            tension: 0.2,
        },
    ],
}
const config = {
    type: 'line',
    data: data,
}
const canvas = document.getElementById('canvas');
const chart = new Chart(canvas, config);

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
