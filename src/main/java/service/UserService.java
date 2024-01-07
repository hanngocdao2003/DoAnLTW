package service;

import bean.UserEntity;
import dao.PersonalDAO;
import dao.UserDAO;
import org.w3c.dom.ls.LSOutput;
import utils.EmailVerification;

import java.util.List;

public class UserService {

    public static UserEntity checkLogin(String numberPhone, String password) {
        UserDAO userDAO = new UserDAO();
        List<UserEntity> userEntityList = userDAO.getAccount(numberPhone);
        if (!userEntityList.isEmpty()) {
            UserEntity user = userEntityList.get(0);
            if (user.getPassword().equals(password)) {
                return user;
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

    public static UserEntity getUserByPhone(String phone) {
        return new PersonalDAO().loadInformation(phone);
    }

    public static void main(String[] args) {
<<<<<<< HEAD
        //    System.out.println(checkLogin("0901323080", "admin1").getFullName());
//        UserEntity userEntity = new UserEntity();
=======
        System.out.println(checkLogin("0901323070", "trantran"));
        //       UserEntity userEntity = new UserEntity();
>>>>>>> 5f6e1973b767ede3901c4e37851271e5ada1a4fb
//        userEntity.setEmail("hanngocdao2003@gmail.com");
//        userEntity.setFullName("han");
//        userEntity.setPhone("0908555555");
//        userEntity.setPassword("han123");
//        System.out.println(registerUser(userEntity));



    }

}

