const listUsers = [
  {name:"Đào Ngọc Hân", email: "han@gmail.com", phone:"93837483629", address:"Thành phố Hồ Chí Minh", quantityProducts:6, authorization: 1},
    {name: "Nguyễn Văn A", email: "van.a@gmail.com", phone: "912345678", address: "Hà Nội", quantityProducts: 3, authorization: 2},
    {name: "Trần Thị B", email: "thi.b@gmail.com", phone: "988765432", address: "Đà Nẵng", quantityProducts: 8, authorization: 2},
    {name: "Lê Đình C", email: "dinh.c@gmail.com", phone: "977665544", address: "TP. Hồ Chí Minh", quantityProducts: 5, authorization: 2},
    {name: "Phạm Thị D", email: "thi.d@gmail.com", phone: "933221100", address: "Hải Phòng", quantityProducts: 2, authorization: 2},
    {name: "Vũ Văn E", email: "van.e@gmail.com", phone: "965478321", "address": "Cần Thơ", quantityProducts: 7, authorization: 2},
    {name: "Ngọc Hân F", email: "han.f@gmail.com", phone: "938374836", "address": "Thừa Thiên Huế", quantityProducts: 4, authorization: 2},
    {name: "Hoàng Văn G", email: "van.g@gmail.com", phone: "955664422", address: "Quảng Ninh", quantityProducts: 1, authorization: 2},
    {name: "Mai Thị H", email: "thi.h@gmail.com", phone: "911223344", address: "Lào Cai", quantityProducts: 9, authorization: 2},
    {name: "Trần Văn I", email: "van.i@gmail.com", phone: "977889900", address: "An Giang", quantityProducts: 6, authorization: 2},
    {name: "Lê Thị K", email: "thi.k@gmail.com", phone: "933377766", address: "Bình Dương", quantityProducts: 3, authorization: 2},
    {name: "Nguyễn Văn L", email: "van.l@gmail.com", phone: "966655544", address: "Hải Dương", quantityProducts: 8, authorization: 2},
    {name: "Phạm Thị M", email: "thi.m@gmail.com", phone: "933300011", address: "Bắc Ninh", quantityProducts: 5, authorization: 2},
    {name: "Đinh Văn N", email: "van.n@gmail.com", phone: "944466677", address: "Đồng Nai", quantityProducts: 2, authorization: 2},
    {name: "Võ Thị P", email: "thi.p@gmail.com", phone: "977788899", address: "Long An", quantityProducts: 7, authorization: 2},
    {name: "Lý Văn Q", email: "van.q@gmail.com", phone: "966655544", address: "Bình Thuận", quantityProducts: 4, authorization: 2},
    {name: "Nguyễn Thị R", email: "thi.r@gmail.com", phone: "933300011", address: "Nghệ An", quantityProducts: 6, authorization: 2}
]

const listOrder = [
  { id: "DH001", name: "Nguyễn Thanh Bình", quantity: 4, totalPrice: "935.000đ", status: "Đã thanh toán" },
  { id: "DH002", name: "Trần Thị Anh", quantity: 2, totalPrice: "450.000đ", status: "Chưa thanh toán" },
  { id: "DH003", name: "Lê Văn Cường", quantity: 5, totalPrice: "1.200.000đ", status: "Đã thanh toán" },
  { id: "DH004", name: "Phạm Thị Hương", quantity: 3, totalPrice: "700.000đ", status: "Chưa thanh toán" },
  { id: "DH005", name: "Ngô Minh Tuấn", quantity: 1, totalPrice: "230.000đ", status: "Đã thanh toán" },
  { id: "DH006", name: "Vũ Thị Nga", quantity: 6, totalPrice: "1.500.000đ", status: "Chưa thanh toán" },
  { id: "DH007", name: "Hoàng Văn Thắng", quantity: 2, totalPrice: "400.000đ", status: "Chưa thanh toán" },
  { id: "DH008", name: "Đỗ Thị Hạnh", quantity: 8, totalPrice: "2.000.000đ", status: "Đã thanh toán" },
  { id: "DH009", name: "Trịnh Văn Hùng", quantity: 3, totalPrice: "720.000đ", status: "Chưa thanh toán" },
  { id: "DH010", name: "Nguyễn Thị Mai", quantity: 1, totalPrice: "300.000đ", status: "Đã thanh toán" },
  { id: "DH011", name: "Phan Văn Dũng", quantity: 4, totalPrice: "950.000đ", status: "Đã thanh toán" },
  { id: "DH012", name: "Nguyễn Thị Phương", quantity: 2, totalPrice: "500.000đ", status: "Chưa thanh toán" },
  { id: "DH013", name: "Lê Văn Tâm", quantity: 7, totalPrice: "1.800.000đ", status: "Chưa thanh toán" },
  { id: "DH014", name: "Trần Thị Thảo", quantity: 3, totalPrice: "700.000đ", status: "Đã thanh toán" },
  { id: "DH015", name: "Hoàng Văn Hải", quantity: 1, totalPrice: "250.000đ", status: "Chưa thanh toán" },
  { id: "DH016", name: "Lê Thị Ngọc", quantity: 5, totalPrice: "1.100.000đ", status: "Đã thanh toán" },
  { id: "DH017", name: "Phạm Văn Thịnh", quantity: 4, totalPrice: "900.000đ", status: "Chưa thanh toán" },
  { id: "DH018", name: "Nguyễn Thị Hoa", quantity: 2, totalPrice: "470.000đ", status: "Đã thanh toán" },
  { id: "DH019", name: "Trần Văn Khánh", quantity: 6, totalPrice: "1.300.000đ", status: "Chưa thanh toán" },
  { id: "DH020", name: "Vũ Thị Thanh", quantity: 3, totalPrice: "650.000đ", status: "Đã thanh toán" },
  { id: "DH021", name: "Nguyễn Văn Đức", quantity: 2, totalPrice: "480.000đ", status: "Chưa thanh toán" }
]

const listComment = [
  { NO: 1, name: "Nguyễn Văn Tuân", content: "Tôi cảm thấy quần áo ở đây rất đẹp" },
  { NO: 2, name: "Trần Thị Ngọc", content: "Dịch vụ tốt, nhân viên nhiệt tình" },
  { NO: 3, name: "Lê Minh Hải", content: "Giá cả hợp lý, chất lượng sản phẩm tốt" },
  { NO: 4, name: "Phạm Thị Hường", content: "Giao hàng nhanh chóng và an toàn" },
  { NO: 5, name: "Nguyễn Anh Dũng", content: "Thích thái độ phục vụ của nhân viên" },
  { NO: 6, name: "Vũ Thị Mai", content: "Chất lượng sản phẩm không làm thất vọng" },
  { NO: 7, name: "Đỗ Văn An", content: "Hài lòng với sự đa dạng của sản phẩm" },
  { NO: 8, name: "Nguyễn Thị Hoa", content: "Quần áo thoải mái và phong cách" },
  { NO: 9, name: "Lê Văn Tâm", content: "Đã mua hàng nhiều lần, không có vấn đề gì" },
  { NO: 10, name: "Trần Văn Hùng", content: "Rất hài lòng với trải nghiệm mua sắm ở đây"}
]

