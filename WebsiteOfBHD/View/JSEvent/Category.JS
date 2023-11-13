const allProductOfShop = [
    { id: "Item Shirt T1", image: "enjoy time.jpg", nameProduct: "ÁO enjoy time", priceProduct: "100,000đ" },
    { id: "Item Shirt T2", image: "HOPE YOU HAVE A NICE WORLD.jpg", nameProduct: "Áo HOPE YOU HAVE A NICE WORLD", priceProduct: "120,000đ" },
    { id: "Item Shirt T3", image: "mickey.jpg", nameProduct: "Áo Mickey", priceProduct: "110,000đ" },
    { id: "Item Shirt T4", image: "ready to wear.jpg", nameProduct: "ÁO ready to wear", priceProduct: "150,000đ" },
    { id: "Item Shirt T5", image: "Serendibity.jpg", nameProduct: "ÁO Serendibity", priceProduct: "150,000đ" },
    { id: "Item Shirt T6", image: "simple.jpg", nameProduct: "Áo simple", priceProduct: "150,000đ" },
    { id: "Item Shirt T7", image: "strawberry.jpg", nameProduct: "áo strawberry", priceProduct: "170,000đ" },
    { id: "Item Shirt T8", image: "Sunset flow.jpg", nameProduct: "Áo Sunset flow", priceProduct: "180,000đ" },
    { id: "Item Shirt T9", image: "Take it flower.jpg", nameProduct: "Áo Take it flower", priceProduct: "120,000đ" },
    { id: "Item Shirt T10", image: "ÁO THUN FINN.png", nameProduct: "ÁO THUN FINN", priceProduct: "120,000đ" },

    // { id: "Item Shirt C1", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt C2", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt C3", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt C4", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt C5", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt C6", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt C7", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt C8", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt C9", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt C10", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt S1", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt S2", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt S3", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt S4", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt S5", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt S6", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt S7", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt S8", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt S9", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt S10", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt M1", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt M2", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt M3", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt M4", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt M5", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt M6", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt M7", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt M8", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt M9", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Shirt M10", image: "", nameProduct: , priceProduct:  },

    { id: "Item Jacket S1", image: "ÁO HOODIE JOILE FLEUR.jpg", nameProduct: "ÁO HOODIE JOILE FLEUR", priceProduct: "290,000đ" },
    { id: "Item Jacket S2", image: "ÁO HOODIE SISTERHOOD.jpg", nameProduct: "ÁO HOODIE SISTERHOOD", priceProduct: "220,000đ" },
    { id: "Item Jacket S3", image: "ÁO HOODIE STRAWBERRY.jpg", nameProduct: "ÁO HOODIE STRAWBERRY", priceProduct: "270,000đ" },
    { id: "Item Jacket S4", image: "ÁO KHOÁC CAPITALISM.jpg", nameProduct: "ÁO KHOÁC CAPITALISM", priceProduct: "350,000đ" },
    { id: "Item Jacket S5", image: "ÁO KHOÁC COLOR.png", nameProduct: "ÁO KHOÁC COLOR", priceProduct: "250,000đ" },
    { id: "Item Jacket S6", image: "ÁO KHOÁC HENNA.jpg", nameProduct: "ÁO KHOÁC HENNA", priceProduct: "390,000đ" },
    { id: "Item Jacket S7", image: "ÁO KHOÁC ISABEL.jpg", nameProduct: "ÁO KHOÁC ISABEL ", priceProduct: "570,000đ" },
    { id: "Item Jacket S8", image: "ÁO KHOÁC KASEY.jpg", nameProduct: "ÁO KHOÁC KASEY ", priceProduct: "380,000đ" },
    { id: "Item Jacket S9", image: "Áo KHOÁC TINA.jpg", nameProduct: "Áo KHOÁC TINA", priceProduct: "310,000đ" },
    { id: "Item Jacket S10", image: "ÁO KHOÁC ZIEL.jpg", nameProduct: "ÁO KHOÁC ZIEL", priceProduct: "370,000đ" },

    // { id: "Item Jacket W1", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket W2", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket W3", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket W4", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket W5", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket W6", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket W7", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket W8", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket W9", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket W10", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket B1", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket B2", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket B3", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket B4", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket B5", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket B6", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket B7", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket B8", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket B9", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket B10", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket J1", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket J2", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket J3", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket J4", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket J5", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket J6", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket J7", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket J8", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket J9", image: "", nameProduct: , priceProduct:  },
    // { id: "Item Jacket J10", image: "", nameProduct: , priceProduct:  },

    { id: "Item Dress 1", image: "BRENDA.jpg", nameProduct: "đầm BRENDA", priceProduct: "290,000đ" },
    { id: "Item Dress 2", image: "BARBARRA.jpg", nameProduct: "đầm BARBARRA", priceProduct: "320,000đ" },
    { id: "Item Dress 3", image: "ĐẦM%20ALINA.jpg", nameProduct: "ĐẦM ALINA", priceProduct: "290,000đ" },
    { id: "Item Dress 4", image: "ĐẦM%20ASHLY.jpg", nameProduct: "ĐẦM ASHLY", priceProduct: "340,000đ" },
    { id: "Item Dress 5", image: "ĐẦM%20BETTY.jpg", nameProduct: "ĐẦM BETTY", priceProduct: "390,000đ" },
    { id: "Item Dress 6", image: "ĐẦM%20BIANCA.jpg", nameProduct: "ĐẦM BIANCA", priceProduct: "360,000đ" },
    { id: "Item Dress 7", image: "ĐẦM%20BODY.jpg", nameProduct: "ĐẦM BODY", priceProduct: "380,000đ" },
    { id: "Item Dress 8", image: "ĐẦM%20CADE.jpg", nameProduct: "ĐẦM CADE", priceProduct: "320,000đ" },
    { id: "Item Dress 9", image: "ĐẦM%20CATIN.jpg", nameProduct: "ĐẦM CATIN", priceProduct: "350,000đ" },
    { id: "Item Dress 10", image: "ĐẦM%20CELINE.jpg", nameProduct: "ĐẦM CELINE", priceProduct: "400,000đ" },
    { id: "Item Trouser 1", image: "quần%20Clerk.jpg", nameProduct: "quần Clerk", priceProduct: "340,000đ" },
    { id: "Item Trouser 2", image: "quần%20Erica.jpg", nameProduct: "quần Erica", priceProduct: "320,000đ" },
    { id: "Item Trouser 3", image: "quần%20gwen.jpg", nameProduct: "quần gwen", priceProduct: "340,000đ" },
    { id: "Item Trouser 4", image: "Quần%20helga.jpg", nameProduct: "Quần helga", priceProduct: "360,000đ" },
    { id: "Item Trouser 5", image: "Quần%20hilary.jpg", nameProduct: "Quần hilary", priceProduct: "370,000đ" },
    { id: "Item Trouser 6", image: "Quần%20jaycee.jpg", nameProduct: "Quần jaycee", priceProduct: "310,000đ" },
    { id: "Item Trouser 7", image: "quần%20juno.jpg", nameProduct: "quần pino", priceProduct: "320,000đ" },
    { id: "Item Trouser 8", image: "quần%20serena.jpg", nameProduct: "quần serena", priceProduct: "380,000đ" },
    { id: "Item Trouser 9", image: "Quần%20Slykar.jpg", nameProduct: "Quần Slykar", priceProduct: "350,000đ" },
    { id: "Item Trouser 10", image: "Quần%20xavia.jpg", nameProduct: "Quần xavia", priceProduct: "360,000đ" },
    { id: "Item Skirt 1", image: "CHÂN%20VÁY%20AMANDA.jpg", nameProduct: "CHÂN VÁY AMANDA", priceProduct: "310,000đ" },
    { id: "Item Skirt 2", image: "CHÂN%20VÁY%20ARETHA.jpg", nameProduct: "CHÂN VÁY ARETHA", priceProduct: "340,000đ" },
    { id: "Item Skirt 3", image: "CHÂN%20VÁY%20JOCELYN.jpg", nameProduct: "CHÂN VÁY JOCELYN", priceProduct: "310,000đ" },
    { id: "Item Skirt 4", image: "CHÂN%20VÁY%20TAHA.jpg", nameProduct: "CHÂN VÁY TAHA", priceProduct: "320,000đ" },
    { id: "Item Skirt 5", image: "VÁY%20DÀI%20DINA.jpg", nameProduct: "VÁY DÀI DINA", priceProduct: "310,000đ" },
    { id: "Item Skirt 6", image: "VÁY%20DÀI%20NADA.jpg", nameProduct: "VÁY DÀI NAIDA", priceProduct: "295,000đ" },
    { id: "Item Skirt 7", image: "VÁY%20DÀI%20URI.jpg", nameProduct: "VÁY DÀI URI", priceProduct: "340,000đ" },
    { id: "Item Skirt 8", image: "VÁY%20NGẮN%20KYAN.jpg", nameProduct: "VÁY NGẮN KYAN", priceProduct: "240,000đ" },
    { id: "Item Skirt 9", image: "VÁY%20NGẮN%20MORRIS.jpg", nameProduct: "VÁY NGẮN MORRIS", priceProduct: "280,000đ" },
    { id: "Item Skirt 10", image: "VÁY%20NGẮN%20VALERIE.jpg", nameProduct: "VÁY NGẮN VALERIE", priceProduct: "260,000đ" }
]

function allProduct(ArrayProduct, id) {
    let content = ArrayProduct.map((item, index) => {
        return `<li class="itemProduct">
    <img src="../Image/Product/${item.image}" alt="" class="imageProduct">
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
    document.querySelector(id).innerHTML = content.join("");
}

function addProductForMenuItem(List, menuItem){
    for(let i = 0; i < allProductOfShop.length; i++){
        if(allProductOfShop[i].id.includes(menuItem))
        List.push(allProductOfShop[i])
    }
}
function allProductForMenuItem(ArrayProduct, id) {
    let content = ArrayProduct.map((item, index) => {
        return `<li class="itemProduct">
    <img src="../../../Image/Product/${item.image}" alt="" class="imageProduct">
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
    document.querySelector(id).innerHTML = content.join("");
}
const fullShirt = []
addProductForMenuItem(fullShirt,"Shirt")
