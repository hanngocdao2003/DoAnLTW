document.querySelector("#contact").addEventListener("click", function () {
    window.scrollTo(0, document.querySelector("#footer").offsetTop)
})
document.querySelector('.SearchItem').addEventListener("click", function(){
    if( document.getElementById("searchArea").style.display === "none"){
     document.getElementById("searchArea").style.display = "block"
    }else{
     document.getElementById("searchArea").style.display = "none"
    }
 })
