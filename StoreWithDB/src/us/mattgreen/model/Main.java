package us.mattgreen.model;

import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException {
        DBStructure db = new DBStructure();
        ProductInterface pi = new ProductLibrary();
        pi.getAllProducts();
        //pi.addContent();
        System.out.println("==========================");
        pi.outputDB();

        pi.menuOutput();
    }

}