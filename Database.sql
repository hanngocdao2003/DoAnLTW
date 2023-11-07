create database shopquanao;
use shopquanao;

create table bills (
    id varchar(10) not null primary key,
    dateCreated date not null,
    totalPrice int not null,
    statusBill text not null check (statusBill in ('Đã thanh toán','Chưa thanh toán'))
);

create table roles (
    id varchar(10) not null primary key,
    roleName nvarchar(50) not null
);

create table users (
    id varchar(10) not null primary key,
    accountName varchar(50) not null,
    accountPass varchar(16) not null,
    userName nvarchar(50) not null,
    userPhone varchar(10) not null,
    userAddress nvarchar(100) not null,
    userEmail varchar(60) not null,
    dateCreate date not null,
    bill varchar(10) not null,
    role varchar(10) not null,
    foreign key (role)
        references roles (id),
    foreign key (bill)
        references bills (id)
);

create table categories (
    id varchar(10) not null primary key,
    categoryName nvarchar(50) not null check(categoryName in ('áo', 'Quần', 'Áo khoác', 'Đầm', 'váy'))
);

create table category_detail (
    id varchar(10) not null primary key,
    category  varchar(10) not null,
    type nvarchar(50) not null,
    foreign key (category)
        references categories (id)
);

create table sizes (
    id varchar(10) not null primary key,
    size varchar(5) not null check (size in ('S','M','L'))
);

create table colors (
    id varchar(10) not null primary key,
    color nvarchar(20) not null
);

create table suppliers (
    id varchar(10) not null primary key,
    nameSupplier nvarchar(50) not null,
    addressSupplier nvarchar(255) not null,
    phoneSupplier varchar(10) not null
);

create table products (
    id varchar(10) not null primary key,
    nameProduct nvarchar(50) not null,
    priceProduct int not null  check(priceProduct >0),
    categoryProduct varchar(10) not null,
    status smallint not null check(status = 0 or status =1),
    foreign key (categoryProduct)
        references category_detail (id)
);

create table product_details (
    id varchar(10) not null primary key,
    product varchar(10) not null,
    details text not null,
    color varchar(10) not null,
    size varchar(10) not null,
    suppliers varchar(10) not null,
    quantity int not null check (quantity >= 0),
    importdate date not null,
    foreign key (product)
        references products (id),
    foreign key (color)
        references colors (id),
    foreign key (size)
        references sizes (id),
    foreign key (suppliers)
        references suppliers (id)
);

create table payment_methods (
    id varchar(10) not null primary key,
    type nvarchar(50) not null check (type = 'tiền mặt' or type = 'Chuyển khoản')
);

create table bill_details (
    id varchar(10) not null primary key,
    bill varchar(20) not null,
    product varchar(20) not null,
    quantity int not null check (quantity >0),
    price int not null,
    paymentMethod varchar(10) not null,
    foreign key (bill)
        references bills (id),
    foreign key (product)
        references products (id),
    foreign key (paymentMethod)
        references payment_methods (id)
);

create table image(
id varchar(10) not null primary key,
product varchar(10) not null,
linkimage nvarchar(255) not null,
foreign key (product)
references product_details (id)
);
