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
    { id: "Jacket10", image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC ZIEL.jpg", nameProduct: "ÁO KHOÁC ZIEL", priceProduct: "370,000đ" },
    { id: "LongSkirt1", image: "../Image/ProductAreaOfShop%20LongSkirt/BRENDA.jpg", nameProduct: "đầm BRENDA", priceProduct: "290,000đ"},
    { id: "LongSkirt2", image: "../Image/ProductAreaOfShop%20LongSkirt/BARBARRA.jpg", nameProduct: "đầm BARBARRA", priceProduct: "320,000đ"},
    { id: "LongSkirt3", image: "../Image/ProductAreaOfShop%20LongSkirt/ĐẦM%20ALINA.jpg", nameProduct: "ĐẦM ALINA", priceProduct: "290,000đ"},
    { id: "LongSkirt4", image: "../Image/ProductAreaOfShop%20LongSkirt/ĐẦM%20ASHLY.jpg", nameProduct: "ĐẦM ASHLY", priceProduct: "340,000đ"},
    { id: "LongSkirt5", image: "../Image/ProductAreaOfShop%20LongSkirt/ĐẦM%20BETTY.jpg", nameProduct: "ĐẦM BETTY", priceProduct: "390,000đ"},
    { id: "LongSkirt6", image: "../Image/ProductAreaOfShop%20LongSkirt/ĐẦM%20BIANCA.jpg", nameProduct: "ĐẦM BIANCA", priceProduct: "360,000đ"},
    { id: "LongSkirt7", image: "../Image/ProductAreaOfShop%20LongSkirt/ĐẦM%20BODY.jpg", nameProduct: "ĐẦM BODY", priceProduct: "380,000đ"},
    { id: "LongSkirt8", image: "../Image/ProductAreaOfShop%20LongSkirt/ĐẦM%20CADE.jpg", nameProduct: "ĐẦM CADE", priceProduct: "320,000đ"},
    { id: "LongSkirt9", image: "../Image/ProductAreaOfShop%20LongSkirt/ĐẦM%20CATIN.jpg", nameProduct: "ĐẦM CATIN", priceProduct: "350,000đ"},
    { id: "LongSkirt10", image: "../Image/ProductAreaOfShop%20LongSkirt/ĐẦM%20CELINE.jpg", nameProduct: "ĐẦM CELINE", priceProduct: "400,000đ"},
    { id: "Trouser1", image: "../Image/ProductAreaOfShop%20Trousers/quần%20Clerk.jpg", nameProduct: "quần Clerk", priceProduct: "340,000đ"},
    { id:  "Trouser2", image: "../Image/ProductAreaOfShop%20Trousers/quần%20Erica.jpg", nameProduct: "quần Erica", priceProduct: "320,000đ"},
    { id:  "Trouser3", image: "../Image/ProductAreaOfShop%20Trousers/quần%20gwen.jpg", nameProduct: "quần gwen", priceProduct: "340,000đ"},
    { id:  "Trouser4", image: "../Image/ProductAreaOfShop%20Trousers/Quần%20helga.jpg", nameProduct: "Quần helga", priceProduct: "360,000đ"},
    { id:  "Trouser5", image: "../Image/ProductAreaOfShop%20Trousers/Quần%20hilary.jpg", nameProduct: "Quần hilary", priceProduct: "370,000đ"},
    { id:  "Trouser6", image: "../Image/ProductAreaOfShop%20Trousers/Quần%20jaycee.jpg", nameProduct: "Quần jaycee", priceProduct: "310,000đ"},
    { id:  "Trouser7", image: "../Image/ProductAreaOfShop%20Trousers/quần%20juno.jpg", nameProduct: "quần pino", priceProduct: "320,000đ"},
    { id:  "Trouser8", image: "../Image/ProductAreaOfShop%20Trousers/quần%20serena.jpg", nameProduct: "quần serena", priceProduct: "380,000đ"},
    { id:  "Trouser9", image: "../Image/ProductAreaOfShop%20Trousers/Quần%20Slykar.jpg", nameProduct: "Quần Slykar", priceProduct: "350,000đ"},
    { id:  "Trouser10", image: "../Image/ProductAreaOfShop%20Trousers/Quần%20xavia.jpg", nameProduct: "Quần xavia", priceProduct: "360,000đ"},
    { id: "Skirt1", image: "../Image/ProductAreaOfShop%20Skirt/CHÂN%20VÁY%20AMANDA.jpg", nameProduct: "CHÂN VÁY AMANDA", priceProduct: "310,000đ"},
    { id: "Skirt2", image: "../Image/ProductAreaOfShop%20Skirt/CHÂN%20VÁY%20ARETHA.jpg", nameProduct: "CHÂN VÁY ARETHA", priceProduct: "340,000đ"},
    { id: "Skirt3", image: "../Image/ProductAreaOfShop%20Skirt/CHÂN%20VÁY%20JOCELYN.jpg", nameProduct: "CHÂN VÁY JOCELYN", priceProduct: "310,000đ"},
    { id: "Skirt4", image: "../Image/ProductAreaOfShop%20Skirt/CHÂN%20VÁY%20TAHA.jpg", nameProduct: "CHÂN VÁY TAHA", priceProduct: "320,000đ"},
    { id: "Skirt5", image: "../Image/ProductAreaOfShop%20Skirt/VÁY%20DÀI%20DINA.jpg", nameProduct: "VÁY DÀI DINA", priceProduct: "310,000đ"},
    { id: "Skirt6", image: "../Image/ProductAreaOfShop%20Skirt/VÁY%20DÀI%20NADA.jpg", nameProduct: "VÁY DÀI NAIDA", priceProduct: "295,000đ"},
    { id: "Skirt7", image: "../Image/ProductAreaOfShop%20Skirt/VÁY%20DÀI%20URI.jpg", nameProduct: "VÁY DÀI URI", priceProduct: "340,000đ"},
    { id: "Skirt8", image: "../Image/ProductAreaOfShop%20Skirt/VÁY%20NGẮN%20KYAN.jpg", nameProduct: "VÁY NGẮN KYAN", priceProduct: "240,000đ"},
    { id: "Skirt9", image: "../Image/ProductAreaOfShop%20Skirt/VÁY%20NGẮN%20MORRIS.jpg", nameProduct: "VÁY NGẮN MORRIS", priceProduct: "280,000đ"},
    { id: "Skirt10", image: "../Image/ProductAreaOfShop%20Skirt/VÁY%20NGẮN%20VALERIE.jpg", nameProduct: "VÁY NGẮN VALERIE", priceProduct: "260,000đ"}
]
 const allProductOfShirt = []
 const allProductOfJacket = []
 const allProductOfLongSkirt = []
 const allProductOfSkirt = []
 const allProductOfTrouser = []

 $(document).ready(function() {
    // document.getElementById("fullProduct").click;

    $("#fullProduct").click()
 });

function addProduct(ArrayProuct, search) {
    for (let i = 0; i < allProductOfShop.length; i++) {
        if (allProductOfShop[i].id.includes(search)) {
            ArrayProuct.push(allProductOfShop[i])
        }
    }
}
 addProduct(allProductOfShirt, "Shirt")
 addProduct(allProductOfJacket, "Jacket")
 addProduct(allProductOfLongSkirt, "LongSkirt")
 addProduct(allProductOfSkirt, "Skirt")
 addProduct(allProductOfTrouser, "Trouser")

function allProduct(ArrayProduct) {
    let content = ArrayProduct.map((item, index) => {
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

    document.querySelector('#allOfCategory').innerHTML = content.join("");
}

// Bo suu tap
document.getElementById("fullProduct").addEventListener("click", function () {
    if (document.getElementById("fullProduct").click) {
        allProduct(allProductOfShop);
    }

})
// allProduct(allProductOfShop)

// shirt
document.querySelector('#fullShirt').addEventListener("click", function () {
    if (document.getElementById("fullShirt").click) {
            allProduct(allProductOfShirt)
    }

})       
//   allProduct(allProductOfShirt)




// document.getElementById("fullShirt").addEventListener("click", function () {
//     if (document.getElementById("fullShirt").click) {
        
//         allProduct(allProductOfShirt)
//     }

// })
// document.getElementById("fullJacket").addEventListener("click", function () {
//     if (document.getElementById("fullJacket").click) {
        
//         allProduct(allProductOfJacket)
//     }

// })




// // const allProductOfJacket = [
// //     { id: 1, image: "../Image/ProductAreaOfShop Jacket/ÁO HOODIE JOILE FLEUR.jpg", nameProduct: "ÁO HOODIE JOILE FLEUR", priceProduct: "290,000đ" },
// //     { id: 2, image: "../Image/ProductAreaOfShop Jacket/ÁO HOODIE SISTERHOOD.jpg", nameProduct: "ÁO HOODIE SISTERHOOD", priceProduct: "220,000đ" },
// //     { id: 3, image: "../Image/ProductAreaOfShop Jacket/ÁO HOODIE STRAWBERRY.jpg", nameProduct: "ÁO HOODIE STRAWBERRY", priceProduct: "270,000đ" },
// //     { id: 4, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC CAPITALISM.jpg", nameProduct: "ÁO KHOÁC CAPITALISM", priceProduct: "350,000đ" },
// //     { id: 5, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC COLOR.png", nameProduct: "ÁO KHOÁC COLOR", priceProduct: "250,000đ" },
// //     { id: 6, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC HENNA.jpg", nameProduct: "ÁO KHOÁC HENNA", priceProduct: "390,000đ" },
// //     { id: 7, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC ISABEL.jpg", nameProduct: "ÁO KHOÁC ISABEL ", priceProduct: "570,000đ" },
// //     { id: 8, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC KASEY.jpg", nameProduct: "ÁO KHOÁC KASEY ", priceProduct: "380,000đ" },
// //     { id: 9, image: "../Image/ProductAreaOfShop Jacket/Áo KHOÁC TINA.jpg", nameProduct: "Áo KHOÁC TINA", priceProduct: "310,000đ" },
// //     { id: 10, image: "../Image/ProductAreaOfShop Jacket/ÁO KHOÁC ZIEL.jpg", nameProduct: "ÁO KHOÁC ZIEL", priceProduct: "370,000đ" },
// // ]

// // let products = [];
// // let currentPage = 1;
// // let perPage = 10;
// // let totalPage = products.length / 10;
// // let perProducts = 
