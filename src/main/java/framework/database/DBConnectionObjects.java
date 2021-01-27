package framework.database;

public class DBConnectionObjects {

    public static String getAdminDevDBConnectionString() {
        String dbName = "5StarDealCom";
        String serverIp = "10.100.1.27";
        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String user = "dev";
        String pass = "hh$n!UNDNnF4f4WDST54GB2t8vb";
        String connectionString = String.format("jdbc:sqlserver://%s;framework.database=%s;integratedSecurity=false;user=%s;password=%s;", serverIp, dbName, user, pass);

        return connectionString;
    }

    public static String getAdminQUESTDBConnectionString() {
        String dbName = "5StarDealCom";
        String serverIp = "10.110.1.200";
        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String user = "dev";
        String pass = "hh$n!UNDNnF4f4WDST54GB2t8vb";
        String connectionString = String.format("jdbc:sqlserver://%s;framework.database=%s;integratedSecurity=false;user=%s;password=%s;", serverIp, dbName, user, pass);

        return connectionString;
    }

    public static String getEDITESSTDBConnectionString() {
        String dbName = "EDITest";
        String serverIp = "tmkgl-edw.database.windows.net";
        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String user = "EDIUser";
        String pass = "OO%GNWg7n9y7";
        String connectionString = String.format("jdbc:sqlserver://%s;framework.database=%s;integratedSecurity=false;user=%s;password=%s;", serverIp, dbName, user, pass);

        return connectionString;
    }


}
