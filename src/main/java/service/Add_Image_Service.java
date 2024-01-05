package service;

import bean.Slide;
import dao.AddSlideDAO;

public class Add_Image_Service {
    private static AddSlideDAO slideDAO;

    public void uploadSlide(String name, byte[] data) {
        slideDAO = new AddSlideDAO();
        slideDAO.insertSlide(name, data);
    }
}
