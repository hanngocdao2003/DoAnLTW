package service;

import dao.CommentForWebDAO;

import java.sql.Date;

public class CommentService {
    private static CommentForWebDAO commentForWebDAO;

    public boolean uploadComment(int id_user, String feedback, Date date_cmt) {
        commentForWebDAO = new CommentForWebDAO();
        commentForWebDAO.insertComment(id_user, feedback, date_cmt);
        return true;
    }
}
