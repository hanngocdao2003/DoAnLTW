const allProductOfShop = [
    { id: "Shirt1", image: "../Image/ProductAreaOfShop Shirt/enjoy time.jpg", nameProduct: "ÁO enjoy time", priceProduct: "100,000đ" },
    { id: "Shirt2", image: "../Image/ProductAreaOfShop Shirt/HOPE YOU HAVE A NICE WORLD.jpg", nameProduct: "Áo HOPE YOU HAVE A NICE WORLD", priceProduct: "120,000đ" },
    { id: "Shirt3", image: "../Image/ProductAreaOfShop Shirt/mickey.jpg", nameProduct: "Áo Mickey", priceProduct: "110,000đ" },
    { id: "Shirt4", image: "../Image/ProductAreaOfShop Shirt/ready to wear.jpg", nameProduct: "ÁO ready to wear", priceProduct: "150,000đ" },
    { id: "Shirt5", image: "../Image/ProductAreaOfShop Shirt/Serendibity.jpg", nameProduct: "ÁO Serendibity", priceProduct: "150,000đ" },
    { id: "Shirt6", image: "../Image/ProductAreaOfShop Shirt/simple.jpg", nameProduct: "Áo simple", priceProduct: "150,000đ" },
    { id: "Shirt7", image: "../Image/ProductAreaOfShop Shirt/strawberry.jpg", nameProduct: "áo strawberry", priceProduct: "170,000đ" },
    { id: "Shirt8", image: "../Image/ProductAreaOfShop Shirt/Sunset flow.jpg", nameProduct: "Áo Sunset flow", priceProduct: "180,000đ" },
    { id: "Shirt9", image: "../Image/ProductAreaOfShop Shirt/Take it flower.jpg", nameProduct: "Áo Take it flower", priceProduct: "120,000đ" },
    { id: "Shirt10", image: "../Image/ProductAreaOfShop Shirt/ÁO THUN FINN.png", nameProduct: "ÁO THUN FINN", priceProduct: "120,000đ" },
    { id: "Jacket1", image: "../Image/ProductAreaOfShop Jacket/ÁO HOODIE JOILE FLEUR.jpg", nameProduct: "ÁO HOODIE JOILE FLEUR", priceProduct: "290,000đ" },
    { id: "Jacket2", image: "../Image/ProductAreaOfShop Jacket/ÁO HOODIE SISTERHOOD.jpg", nameProduct: "ÁO HOODIE SISTERHOOD", priceProduct: "220,000đ" },
    { id: "Jacket3", image: "../Image/ProductAreaOfShop Jacket/ÁO HOODIE STRAWBERRY.jpg", nameProduct: "ÁO HOODIE STRAWBERRY", priceProduct: "270,000đ" },
    { id: "Jacket4", image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC CAPITALISM.jpg", nameProduct: "ÁO KHOÁC CAPITALISM", priceProduct: "350,000đ" },
    { id: "Jacket5", image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC COLOR.png", nameProduct: "ÁO KHOÁC COLOR", priceProduct: "250,000đ" },
    { id: "Jacket6", image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC HENNA.jpg", nameProduct: "ÁO KHOÁC HENNA", priceProduct: "390,000đ" },
    { id: "Jacket7", image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC ISABEL.jpg", nameProduct: "ÁO KHOÁC ISABEL ", priceProduct: "570,000đ" },
    { id: "Jacket8", image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC KASEY.jpg", nameProduct: "ÁO KHOÁC KASEY ", priceProduct: "380,000đ" },
    { id: "Jacket9", image: "../Image/ProductAreaOfShop Jacket/Áo KHOÁC TINA.jpg", nameProduct: "Áo KHOÁC TINA", priceProduct: "310,000đ" },
    { id: "Jacket10", image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC ZIEL.jpg", nameProduct: "ÁO KHOÁC ZIEL", priceProduct: "370,000đ" }

]
const allProductOfShirt = []
const allProductOfJacket = []


function addProduct(ArrayProuct, search) {
    for (let i = 0; i < allProductOfShop.length; i++) {
        if (allProductOfShop[i].id.includes(search)) {
            ArrayProuct.push(allProductOfShop[i])
        }
    }
}
addProduct(allProductOfShirt, "Shirt")
addProduct(allProductOfJacket, "Jacket")
function allProduct(ArrayProuct) {
    let content = ArrayProuct.map((item, index) => {
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
    document.querySelector('.listItemProduct').innerHTML = content.join("");
}
document.getElementById("fullProduct").addEventListener("click", function () {
    if (document.getElementById("fullProduct").click) {
       
        allProduct(allProductOfShop)
    }

})
document.getElementById("fullShirt").addEventListener("click", function () {
    if (document.getElementById("fullShirt").click) {
        
        allProduct(allProductOfShirt)
    }

})
document.getElementById("fullJacket").addEventListener("click", function () {
    if (document.getElementById("fullJacket").click) {
        
        allProduct(allProductOfJacket)
    }

})




// const allProductOfJacket = [
//     { id: 1, image: "../Image/ProductAreaOfShop Jacket/ÁO HOODIE JOILE FLEUR.jpg", nameProduct: "ÁO HOODIE JOILE FLEUR", priceProduct: "290,000đ" },
//     { id: 2, image: "../Image/ProductAreaOfShop Jacket/ÁO HOODIE SISTERHOOD.jpg", nameProduct: "ÁO HOODIE SISTERHOOD", priceProduct: "220,000đ" },
//     { id: 3, image: "../Image/ProductAreaOfShop Jacket/ÁO HOODIE STRAWBERRY.jpg", nameProduct: "ÁO HOODIE STRAWBERRY", priceProduct: "270,000đ" },
//     { id: 4, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC CAPITALISM.jpg", nameProduct: "ÁO KHOÁC CAPITALISM", priceProduct: "350,000đ" },
//     { id: 5, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC COLOR.png", nameProduct: "ÁO KHOÁC COLOR", priceProduct: "250,000đ" },
//     { id: 6, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC HENNA.jpg", nameProduct: "ÁO KHOÁC HENNA", priceProduct: "390,000đ" },
//     { id: 7, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC ISABEL.jpg", nameProduct: "ÁO KHOÁC ISABEL ", priceProduct: "570,000đ" },
//     { id: 8, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC KASEY.jpg", nameProduct: "ÁO KHOÁC KASEY ", priceProduct: "380,000đ" },
//     { id: 9, image: "../Image/ProductAreaOfShop Jacket/Áo KHOÁC TINA.jpg", nameProduct: "Áo KHOÁC TINA", priceProduct: "310,000đ" },
//     { id: 10, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC ZIEL.jpg", nameProduct: "ÁO KHOÁC ZIEL", priceProduct: "370,000đ" },
// ]

// let products = [];
// let currentPage = 1;
// let perPage = 10;
// let totalPage = products.length / 10;
// let perProducts = 
