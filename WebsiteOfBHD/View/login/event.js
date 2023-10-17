document.getElementById("createAcc").addEventListener("click", function(event) {
    event.preventDefault(); // Ngăn chuyển sổ kiến mạc định của trình duyệt

    const intro = document.querySelector(".intro");
    
    // Kiểm tra xem right hiện tại lẽ 0% hay 100%
    if (intro.style.right === "100%") {
        intro.style.right = "0"; // Di chuyển từ phải sang trái
    }
    else {
        intro.style.right = "50%"; // Di chuyển từ trái sang phải
    }
});

document.querySelector(".undo").addEventListener("click", function(event) {
    event.preventDefault(); 

    const intro = document.querySelector(".intro");
    
    if (intro.style.right !== "0%") {
        intro.style.right = "0%"; 
    }
});

