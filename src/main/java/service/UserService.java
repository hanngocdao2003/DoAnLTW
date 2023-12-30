package service;

import bean.UserEntity;
import dao.UserDAO;
import utils.EmailVerification;
import java.util.List;

public class UserService {

    public static UserEntity checkLogin(String numberPhone, String password) {
        UserDAO userDAO = new UserDAO();
        List<UserEntity> userEntityList = userDAO.getAccount(numberPhone);
        if (!userEntityList.isEmpty()) {
            if (userEntityList.get(0).getPassword().equals(password)) {
                return userEntityList.get(0);
            } else {
                return null;
            }

        }
        return null;
    }

    public static boolean registerUser(UserEntity user) {
        UserDAO userDAO = new UserDAO();

        // Kiểm tra xem người dùng đã tồn tại hay chưa
        UserEntity existingUser = checkLogin(user.getPhone(), user.getPassword());
        boolean registrationSuccess = userDAO.addUser(user);
        if (existingUser != null) {
            // Người dùng đã tồn tại, không thể đăng ký
            return false;
        } else {
            if (registrationSuccess) {
                // Nếu đăng ký thành công, tạo token và gửi email xác nhận
                String token = EmailVerification.generateToken();
                EmailVerification.sendVerificationEmail(user.getEmail(), token);
            }
        }
        return registrationSuccess;
    }


    public static void main(String[] args) {
        //    System.out.println(checkLogin("0901323080", "admin1").getFullName());
        //       UserEntity userEntity = new UserEntity();
//        userEntity.setEmail("hanngocdao2003@gmail.com");
//        userEntity.setFullName("han");
//        userEntity.setPhone("0908555555");
//        userEntity.setPassword("han123");
//        System.out.println(registerUser(userEntity));


}
