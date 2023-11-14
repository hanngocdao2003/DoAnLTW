// làm cho khung mô tả căn dài theo độ dài văn bản
const textarea = document.querySelector("textarea");
    textarea.addEventListener("input", (e) => {
      textarea.style.height = "63px";
      let scHeight = e.target.scrollHeight;
      textarea.style.height = scHeight + "px";
    });

// Làm cho hình ảnh hiển thị lên màn hình
function previewImage(imageNumber) {
  var fileInput = document.getElementById('imageUpload' + imageNumber);
  var imagePreview = document.getElementById('imagePreview' + imageNumber);

  // Đảm bảo người dùng đã chọn một tệp
  if (fileInput.files.length > 0) {
      var file = fileInput.files[0];
      var reader = new FileReader();

      reader.onload = function(e) {
          // Gán URL của ảnh vào src của thẻ img
          var imageUrl = e.target.result;
          var imgElement = document.createElement('img');
          imgElement.src = imageUrl;

          // Đặt kích thước tối đa cho ảnh
          imgElement.style.maxWidth = '13vw';
          imgElement.style.maxHeight = '40vh';

          // Xóa nội dung hiện tại của div và thêm ảnh mới
          imagePreview.innerHTML = '';
          imagePreview.appendChild(imgElement);
      };

      // Đọc dữ liệu của tệp hình ảnh dưới dạng URL
      reader.readAsDataURL(file);
  }
}
