package service;

import bean.BillEntity;
import dao.OrderDAO;

public class OrderService {
    public static boolean addBill(BillEntity billEntity) {
        return new OrderDAO().addBill(billEntity);
    }

    public static int getIdUser(String phone) {
        return new OrderDAO().getIdUser(phone);
    }
}
