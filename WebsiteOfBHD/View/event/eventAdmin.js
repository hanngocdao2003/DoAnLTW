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

// script.js

document.addEventListener("DOMContentLoaded", function () {
    const colorPalette = document.getElementById("colorPalette");

    // Mảng chứa các màu sắc bạn muốn thêm vào bảng
    const colors = ["#FF0000", "#00FF00", "#0000FF", "#FFFF00", "#FF00FF", "#00FFFF", "#FFFFFF", "#000000"];

    // Tạo các ô màu và thêm vào bảng
    colors.forEach(color => {
        const colorBox = document.createElement("div");
        colorBox.classList.add("colorBox");
        colorBox.style.backgroundColor = color;

        // Thêm sự kiện khi click vào ô màu
        colorBox.addEventListener("click", function () {
            alert(`Selected color: ${color}`);
        });

        colorPalette.appendChild(colorBox);
    });
});

const textarea = document.querySelector("textarea");
textarea.addEventListener("input", (e) => {
    textarea.style.height = "63px";
    let scHeight = e.target.scrollHeight;
    textarea.style.height = scHeight + "px";
});

const form = document.querySelector("form"),
    fileInput = document.querySelector(".file-input"),
    progressArea = document.querySelector(".progress-area"),
    uploadedArea = document.querySelector(".uploaded-area");
form.addEventListener("click", () =>{
    fileInput.click();
});
fileInput.onchange = ({target})=>{
    let file = target.files[0];
    if(file){
        let fileName = file.name;
        if(fileName.length >= 12){
            let splitName = fileName.split('.');
            fileName = splitName[0].substring(0, 13) + "... ." + splitName[1];
        }
        uploadFile(fileName);
    }
}
function uploadFile(name){
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "php/upload.php");
    xhr.upload.addEventListener("progress", ({loaded, total}) =>{
        let fileLoaded = Math.floor((loaded / total) * 100);
        let fileTotal = Math.floor(total / 1000);
        let fileSize;
        (fileTotal < 1024) ? fileSize = fileTotal + " KB" : fileSize = (loaded / (1024*1024)).toFixed(2) + " MB";
        let progressHTML = `<li class="row">
                          <i class="fa-solid fa-file-image" style="color: #a62c2c;"></i>
                          <div class="content">
                            <div class="details">
                              <span class="name">${name} • Uploading</span>
                              <span class="percent">${fileLoaded}%</span>
                              <button class="delete-btn" onclick="deleteFile('${name}')">X</button>
                            </div>
                            <div class="progress-bar">
                              <div class="progress" style="width: ${fileLoaded}%"></div>
                            </div>
                          </div>
                        </li>`;
        uploadedArea.classList.add("onprogress");
        progressArea.innerHTML = progressHTML;
        if(loaded == total){
            progressArea.innerHTML = "";
            let uploadedHTML = `<li class="row">
                            <div class="content upload">
                              <i class="fa-solid fa-file-image" style="color: #a62c2c;"></i>
                              <div class="details">
                                <span class="name">${name} • Uploaded</span>
                                <span class="size">${fileSize}</span>
                              </div>
                            </div>
                            <i class="fa-solid fa-xmark remove-img" onclick="deleteFile(this)" style="color: #a62c2c;"></i>
                          </li>`;
            uploadedArea.classList.remove("onprogress");
            uploadedArea.insertAdjacentHTML("afterbegin", uploadedHTML);
        }
    });

    let data = new FormData(form);
    xhr.send(data);
}

function deleteFile(close_icon) {
let parent = close_icon.parentNode;
  parent.remove();
}

var all_X = document.querySelectorAll(".remove_img");
for (let i = 0; i < all_X.length; i++) {
    all_X[i].onclick= function (){
        deleteFile(all_X[i]);
    }
}
