package framework.database;

import java.sql.*;

public class JdbcSQLServerConnection {


    public static void getConnection() {
        Connection connection = null;

        try {
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

            Statement statement = null;
            ResultSet result = null;

            Class.forName(driver).getDeclaredConstructor().newInstance();

            connection = DriverManager.getConnection(DBConnectionObjects.getAdminQUESTDBConnectionString());
            statement = connection.createStatement();

//            result = statement.executeQuery("select TOP 10 * From Packslips");
            // NEED TO SPECIFY TABLE IN THE FOLLOWING MANNER WITH THE QUEST ADMIN DB DON"T KNOW WHY!!!!!!!!!!!!!!!!
//            SELECT TOP (2) Id, OrderID, TStamp FROM [5StarDealCom].[ARCH].[PackslipItems]
            result = statement.executeQuery("SELECT TOP (2) Id, OrderID, TStamp FROM PackslipItems");
            while (result.next()) {
                System.out.println(result.getString("Id") + " " +  result.getString("OrderId") + " " + result.getString("TStamp"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try{
                if (connection != null && !connection.isClosed()) {
                    connection.close();
                    System.out.println("Closing connection");
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    //need to fix
    private int updateTable(Statement statement) {
        int result = 0;

        try {
            result = statement.executeUpdate("UPDATE UPS_Info set Transferred = 'N' where PackslipID IN ('73024652','73024733','73024734')");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return result;
    }

}
