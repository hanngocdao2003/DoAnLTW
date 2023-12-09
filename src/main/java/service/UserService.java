package service;

import bean.UserEntity;
import dao.UserDAO;

import java.util.List;

public class UserService {
  public static UserEntity checkLogin(String numberPhone, String password){
      UserDAO userDAO = new UserDAO();
      List<UserEntity> userEntityList = userDAO.getAccount(numberPhone);
      if(!userEntityList.isEmpty()){
          if(userEntityList.get(0).getPassword().equals(password)){
              return userEntityList.get(0);
          }else {
              return null;
          }

      }
      return null;
  }

}
