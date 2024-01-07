package service;

import bean.CommentForWeb;
import bean.CommentReponse;
import bean.UserEntity;
import dao.CommentForWebDAO;
import dao.UserDAO;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CommentService {


    public boolean uploadComment(int id_user, String feedback, Date date_cmt) {
        CommentForWebDAO commentForWebDAO = new CommentForWebDAO();
        commentForWebDAO.insertComment(id_user, feedback, date_cmt);
        return true;
    }
    public List<CommentReponse> listCommentOfUser() throws SQLException {
        return new CommentForWebDAO().commentsForWeb();
    }
    public String print(List<CommentReponse> list){
        String result = "";
        for(CommentReponse c : list){
            result += c;
        }
        return result;
    }
    public static void main(String[] args) throws SQLException {
       CommentService cmt = new CommentService();
        System.out.println(cmt.print(cmt.listCommentOfUser()));
    }

}
