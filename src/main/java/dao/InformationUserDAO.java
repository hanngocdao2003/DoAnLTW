package dao;

import bean.CommentReponse;
import bean.InformationUser;
import database.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InformationUserDAO {
    public List<InformationUser> listInfUser() throws SQLException {
        List<InformationUser> result = new ArrayList<>();
        String sql = "select users.fullName, users.phone, users.email, roles.roleName, users.status \n" +
                "from users inner join roles on roles.id = users.roleId where  users.roleID = ? and users.status = ?";
        Connection connection = ConnectionUtils.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, "R2");
        statement.setInt(2, 1);
        ResultSet rs = statement.executeQuery();
        while (rs.next()){
            InformationUser user = new InformationUser();
            user.setName(rs.getString(1));
            user.setNumberphone(rs.getString(2));
            user.setEmail(rs.getString(3));
            user.setRole(rs.getString(4));
            user.setStatus(rs.getInt(5));
            result.add(user);
        }
        return  result;
    }
    private String print(List<InformationUser> list) {
        String result = "";
        for (InformationUser user : list) {
            result += user + "\n";
        }
        return result;
    }

    public static void main(String[] args) throws SQLException {
        InformationUserDAO dao = new InformationUserDAO();
        System.out.println(dao.print(dao.listInfUser()));
    }
}
