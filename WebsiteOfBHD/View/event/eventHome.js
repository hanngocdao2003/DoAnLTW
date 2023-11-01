let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}


function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("ImageSlide");
  if (n > slides.length) { slideIndex = 1 }
  if (n < 1) { slideIndex = slides.length }
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";

  }
  slides[slideIndex - 1].style.display = "block";

}

const productsNew = [
  { id: 1, image: "../Image/Product/ÁO LEN AIMEE.jpg", nameProduct: "ÁO LEN AIMEE", priceProduct: "290,000đ" },
  { id: 2, image: "../Image/Product/CHÂN VÁY TAHA.jpg", nameProduct: "CHÂN VÁY TAHA", priceProduct: "320,000đ" },
  { id: 3, image: "../Image/Product/Yếm dài Rayen.jpg", nameProduct: "YẾM DÀI RAYEN", priceProduct: "400,000đ" },
  { id: 4, image: "../Image/Product/ÁO LEN FARAH.jpg", nameProduct: "ÁO LEN FARAH", priceProduct: "390,000đ" },
  { id: 5, image: "../Image/Product/ÁO CARDIGAN SAMY.jpg", nameProduct: "ÁO CARDIGAN SAMY", priceProduct: "350,000đ" },
  { id: 6, image: "../Image/Product/Áo droptop Azura.jpg", nameProduct: "Áo droptop Azura", priceProduct: "150,000đ" },
  { id: 7, image: "../Image/Product/áo khoác Isabel.jpg", nameProduct: "áo khoác Isabel", priceProduct: "370,000đ" },
  { id: 8, image: "../Image/Product/Áo khoác Tina.jpg", nameProduct: "Áo khoác Tina", priceProduct: "280,000đ" },
  { id: 9, image: "../Image/Product/Áo kiểu Abby.jpg", nameProduct: "Áo kiểu Abby", priceProduct: "120,000đ" },
  { id: 10, image: "../Image/Product/Áo kiểu Amity.jpg", nameProduct: "Áo kiểu Amity", priceProduct: "120,000đ" },
]

function renderNewItem() {
  let content = productsNew.map((item, index) => {
    return `<li class="itemProduct">
    <img src="${item.image}" alt="" class="imageProduct">
    <a href="" class="linkProduct">${item.nameProduct}</a>
    <div class="evalute"><span>Đánh giá: <ul class="fiveStar">
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
            </ul></span></div>
    <p class="priceProduct">${item.priceProduct}</p>

</li>`;
  })
  document.querySelector('#listNewItemProduct').innerHTML = content.join("");
}
renderNewItem();

 const productsShirt = [
  {id:1, image:"../Image/ProductAreaOfShop Shirt/enjoy time.jpg", nameProduct: "ÁO enjoy time", priceProduct: "90,000đ"},
  {id:2, image:"../Image/ProductAreaOfShop Shirt/HOPE YOU HAVE A NICE WORLD.jpg", nameProduct: "Áo HOPE YOU HAVE A NICE WORLD", priceProduct: "120,000đ"},
  {id:3, image:"../Image/ProductAreaOfShop Shirt/mickey.jpg", nameProduct: "Áo Mickey", priceProduct: "110,000đ"},
  {id:4, image:"../Image/ProductAreaOfShop Shirt/ready to wear.jpg", nameProduct: "ÁO ready to wear", priceProduct: "150,000đ"},
  {id:5, image:"../Image/ProductAreaOfShop Shirt/Serendibity.jpg", nameProduct: "ÁO Serendibity", priceProduct: "150,000đ"},
  {id:6, image:"../Image/ProductAreaOfShop Shirt/simple.jpg", nameProduct: "Áo simple150,000đ", priceProduct: "150,000đ"},
  {id:7, image:"../Image/ProductAreaOfShop Shirt/strawberry.jpg", nameProduct: "áo strawberry", priceProduct: "170,000đ"},
  {id:8, image:"../Image/ProductAreaOfShop Shirt/Sunset flow.jpg", nameProduct: "Áo Sunset flow", priceProduct: "180,000đ"},
  {id:9, image:"../Image/ProductAreaOfShop%20Shirt/Take%20it%20flower.jpg", nameProduct: "Áo Take it flower", priceProduct: "120,000đ"},
  {id:10, image: "../Image/ProductAreaOfShop Shirt/tasty treat.jpg", nameProduct: "Áo tasty treat", priceProduct: "70,000đ"}
 ]   
 
 function renderShirtItem() {
  let content = productsShirt.map((item, index) => {
    return `<li class="itemProduct">
    <img src="${item.image}" alt="" class="imageProduct">
    <a href="" class="linkProduct">${item.nameProduct}</a>
    <div class="evalute"><span>Đánh giá: <ul class="fiveStar">
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
            </ul></span></div>
    <p class="priceProduct">${item.priceProduct}</p>

</li>`;
  })
  document.querySelector('#listShirtProduct').innerHTML = content.join("");
}
renderShirtItem();

const productsJacket = [
              {id:1, image:"../Image/ProductAreaOfShop Jacket/ÁO HOODIE JOILE FLEUR.jpg", nameProduct: "ÁO HOODIE JOILE FLEUR", priceProduct:"290,000đ"},
              {id:2, image:"../Image/ProductAreaOfShop Jacket/ÁO HOODIE SISTERHOOD.jpg", nameProduct: "ÁO HOODIE SISTERHOOD", priceProduct:"220,000đ"},
              {id:3, image:"../Image/ProductAreaOfShop Jacket/ÁO HOODIE STRAWBERRY.jpg", nameProduct: "ÁO HOODIE STRAWBERRY", priceProduct:"270,000đ"},
              {id:4, image:"../Image/ProductAreaOfShop Jacket/ÁO KHOÁC CAPITALISM.jpg", nameProduct: "ÁO KHOÁC CAPITALISM", priceProduct:"350,000đ"},
              {id:5, image:"../Image/ProductAreaOfShop Jacket/ÁO KHOÁC COLOR.png", nameProduct: "ÁO KHOÁC COLOR", priceProduct:"250,000đ"},
              {id:6, image:"../Image/ProductAreaOfShop Jacket/ÁO KHOÁC HENNA.jpg", nameProduct: "ÁO KHOÁC HENNA", priceProduct:"390,000đ"},
              {id:7, image:"../Image/ProductAreaOfShop Jacket/ÁO KHOÁC ISABEL.jpg", nameProduct: "ÁO KHOÁC ISABEL", priceProduct:"570,000đ"},
              {id:8, image:"../Image/ProductAreaOfShop Jacket/ÁO KHOÁC KASEY.jpg", nameProduct: "ÁO KHOÁC KASEY", priceProduct:"380,000đ"},
              {id:9, image:"../Image/ProductAreaOfShop Jacket/Áo KHOÁC TINA.jpg", nameProduct: "Áo KHOÁC TINA", priceProduct:"310,000đ"},
              {id:10, image:"../Image/ProductAreaOfShop Jacket/ÁO KHOÁC ZIEL.jpg", nameProduct: "ÁO KHOÁC ZIEL", priceProduct:"370,000đ"}

]
function renderJacketItem() {
  let content = productsJacket.map((item, index) => {
    return `<li class="itemProduct">
    <img src="${item.image}" alt="" class="imageProduct">
    <a href="" class="linkProduct">${item.nameProduct}</a>
    <div class="evalute"><span>Đánh giá: <ul class="fiveStar">
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
                <li><i class="fa-solid fa-star"></i></li>
            </ul></span></div>
    <p class="priceProduct">${item.priceProduct}</p>

</li>`;
  })
  document.querySelector('#listJacketProduct').innerHTML = content.join("");
}
renderJacketItem()