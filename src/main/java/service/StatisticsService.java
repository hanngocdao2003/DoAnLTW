package service;

import dao.StatisticsDAO;

public class StatisticsService {
    public static int getTotalBills() {
        return new StatisticsDAO().getTotalBills();
    }

}
