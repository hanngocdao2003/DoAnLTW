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
var innerhiddenSignIn = document.querySelector('#hidden-appear-SinIn-pass');
var innerhiddenSignUpPass = document.querySelector('#hidden-appear-SingUp-pass');
var innerhiddenSignUpRePass = document.querySelector('#hidden-appear-SingUp-Repass');
const appear = '<i class="fa-regular fa-eye" id="eye"></i>'
const hide = '<i class="fa-solid fa-eye-slash" id="hide"></i>';
var isOpen = true
innerhiddenSignIn.addEventListener("click", function(){
    if(isOpen == true){
        innerhiddenSignIn.innerHTML = hide
        isOpen = false;
    }else{
        innerhiddenSignIn.innerHTML = appear
        isOpen = true;
    }
})
innerhiddenSignUpPass.addEventListener("click", function(){
    if(isOpen == true){
        innerhiddenSignUpPass.innerHTML = hide
        isOpen = false;
    }else{
        innerhiddenSignUpPass.innerHTML = appear
        isOpen = true;
    }
})
innerhiddenSignUpRePass.addEventListener("click", function(){
    if(isOpen == true){
        innerhiddenSignUpRePass.innerHTML = hide
        isOpen = false;
    }else{
        innerhiddenSignUpRePass.innerHTML = appear
        isOpen = true;
    }
})