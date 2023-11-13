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
form.addEventListener("click", () => {
    fileInput.click();
});
fileInput.onchange = ({target}) => {
    let file = target.files[0];
    if (file) {
        let fileName = file.name;
        if (fileName.length >= 12) {
            let splitName = fileName.split('.');
            fileName = splitName[0].substring(0, 13) + "... ." + splitName[1];
        }
        uploadFile(fileName);
    }
}

function uploadFile(name) {
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "php/upload.php");
    xhr.upload.addEventListener("progress", ({loaded, total}) => {
        let fileLoaded = Math.floor((loaded / total) * 100);
        let fileTotal = Math.floor(total / 1000);
        let fileSize;
        (fileTotal < 1024) ? fileSize = fileTotal + " KB" : fileSize = (loaded / (1024 * 1024)).toFixed(2) + " MB";
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
        if (loaded == total) {
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
    all_X[i].onclick = function () {
        deleteFile(all_X[i]);
    }
}