create database shopquanao;
use shopquanao;

create table bills (
    id varchar(10) not null primary key,
    dateCreated date not null,
    totalPrice int not null,
    statusBill text not null check (statusBill in ('Đã thanh toán','Chưa thanh toán'))
);

CrEATe tablE roles (
    id VARCHar(10) not Null primAry key,
    roleName NVARChar(50) not Null
);

CrEATe tablE users (
    id VARCHar(10) not Null primAry key,
    accountName VARCHar(50) not Null,
    accountPass VARCHar(16) not Null,
    userName NVARChar(50) not Null,
    userPhone varchar(10) not Null,
    userAddress NVARChar(100) not Null,
    userEmail VARCHar(60) not Null,
    dateCreate DATE not Null,
    bill VARCHar(10) not Null,
    role VARCHar(10) not Null,
    FOREIgn key (role)
        REFERences roles (id),
    FOREIgn key (bill)
        REFERences bills (id)
);

CrEATe tablE categories (
    id VARCHar(10) not Null primAry key,
    categoryName NVARChar(50) not Null check(categoryName in ('áo', 'Quần', 'Áo khoác', 'Đầm', 'váy'))
);

CREATE taBlE category_detail (
    id VARCHaR(10) NOt null primAry Key,
    category  VARCHAR(10) NOt null,
    type nvarCHAR(50) Not null,
    forEign kEY (category)
        REFErENCES categories (id)
);

CREATe TaBlE sizes (
    id VARCHaR(10) NOt null primAry Key,
    size varcHAR(5) NOT null check (size in ('s','M','L'))
);

CREaTE taBlE colors (
    id VARCHaR(10) NOt null primAry Key,
    color nvaRCHAR(20) Not null
);

CreaTe taBlE suppliers (
    id VARCHaR(10) NOt null primAry Key,
    nameSupplier NVARCHAR(50) Not null,
    addresssupplier nvarchar(255) not null,
    phonesupplier varchar(10) not null
);

CreaTe taBlE products (
    id VARCHaR(10) NOt null primAry Key,
    nameProduct NVARCHAR(50) Not null,
    priceproduct INT NOT NULL  check(priceproduct >0),
    categoryproduct VARCHAR(10) NOt null,
    status smallint not null check(status = 0 or status =1),
    FOREIgn kEY (categoryProduct)
        REFErENCES category_detail (id)
);

CREATe TaBlE product_details (
    id VARCHaR(10) NOt null primAry Key,
    product vARCHAR(10) NOt null,
    details tEXT NOT NULL,
    color varCHAR(10) NOt null,
    size varcHAR(10) NOt null,
    suppliers VARCHAR(10) NOt null,
    quantity INT NOT NULL check(quantity >=0),
    importdate DATE NOT NULL,
    forEign kEY (product)
        REFErENCES products (id),
    FOREiGN kEY (color)
        REFErENCES colors (id),
    FOREiGN kEY (size)
        REFErENCES sizes (id),
    FOREiGN kEY (suppliers)
        REFErENCES suppliers (id)
);

CREATe TaBlE payment_methods (
    id VARCHaR(10) NOt null primAry Key,
    type nvarCHAR(50) Not null check (type = 'tiền mặt' or type = 'Chuyển khoản')
);

CREATE TABLE bill_details (
    id VARCHAR(10) NoT NULL Primary key,
    bill varchar(20) NOT NULL,
    product varChar(20) NOT NULL,
    quantity inT not NULL check (quantity >0),
    price INT NOT nulL,
    paymentMethod varCHAR(10) NOT NULL,
    foreign key (bill)
        reFereNcES bills (id),
    foreiGN KEY (product)
        refErENCES products (id),
    foREIGN KEY (paymentMethod)
        REFERENCES payment_methods (id)
);

create table image(
id varchAr(10) NOT NuLL Primary key,
product Varchar(10) nOT NULL,
linkimage nvarchar(255) not null,
foreign key (product)
referenCes product_details (id)
);
