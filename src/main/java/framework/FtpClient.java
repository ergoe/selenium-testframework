package framework;

import org.apache.commons.net.PrintCommandListener;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

public class FtpClient {

    private String server = "207.58.246.195";
    private int port;
    private String user = "file.mover";
    private String password = "d9ee2XZ";
    private FTPClient ftp;

    public void openFtpConnection(File file) throws IOException {

         try {
            ftp = new FTPClient();
            ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out)));

            ftp.connect(server);
            int reply = ftp.getReplyCode();
            if (!FTPReply.isPositiveCompletion(reply)) {
                ftp.disconnect();
            }
            ftp.login(user, password);
            ftp.storeFile("Quest/EDIData/1161808/dropoff/" + file.getName(), new FileInputStream(file));

            ftp.disconnect();
        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
             if (ftp.isConnected()) {
                 ftp.disconnect();
             }
         }
    }

    public void openTestFtpConnection(File file) throws IOException {

        try {
            ftp = new FTPClient();
            ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out)));

            ftp.connect(server);
            int reply = ftp.getReplyCode();
            if (!FTPReply.isPositiveCompletion(reply)) {
                ftp.disconnect();
            }
            ftp.login(user, password);
            ftp.storeFile("Quest/EDIData/1161808/xmlTest/" + file.getName(), new FileInputStream(file));

            ftp.disconnect();
        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            if (ftp.isConnected()) {
                ftp.disconnect();
            }
        }
    }



}
