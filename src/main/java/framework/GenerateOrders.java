package framework;

import com.opencsv.CSVWriter;
import org.joda.time.DateTime;

import java.io.File;
import java.io.FileWriter;
import java.math.BigInteger;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.*;

public class GenerateOrders {

    private static final String TEST_ACCOUNT =  "1161808";

    public static String createSingleOrderFileWithMultipleProducts(List<List<String>> orderData, String orderIdentifier) {

        Path path;
        FileWriter fileWriter;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String dateTime = simpleDateFormat.format(new Date());
        String filename = "850_" + TEST_ACCOUNT + "_" + dateTime + ".csv";
        String fullFilePath = "";
        try {
            path = Paths.get(ClassLoader.getSystemResource("test_files").toURI());

            fileWriter = new FileWriter(path.toString() + "\\" + filename);
            fullFilePath = path.toString() + "\\" + filename;
            CSVWriter writer = new CSVWriter(fileWriter);

            int counter = 1;
            for (List<String> row : orderData) {
                String[] lineArray = row.toArray(new String[0]);
                if (counter > 1) {
                    lineArray[0] = orderIdentifier;
                }
                writer.writeNext(lineArray, false);
                counter += 1;
            }
            writer.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        copyFileToLocalSystem(fullFilePath);
        File csvFIle = new File(fullFilePath);
        FtpClient ftpClient = new FtpClient();
        ftpClient.openFtpConnection(csvFIle);

        return fullFilePath;
    }

    public static String createSingle850DocumentWithMultipleOrders(List<List<String>> orderData) {
        Path path;
        FileWriter fileWriter;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String dateTime = simpleDateFormat.format(new Date());
        String filename = "850_" + TEST_ACCOUNT + "_" + dateTime + ".csv";
        String fullFilePath = "";
        try {
            path = Paths.get(ClassLoader.getSystemResource("test_files").toURI());

            fileWriter = new FileWriter(path.toString() + "\\" + filename);
            fullFilePath = path.toString() + "\\" + filename;
            CSVWriter writer = new CSVWriter(fileWriter);

            for (List<String> row : orderData) {
                String[] lineArray = row.toArray(new String[0]);

                writer.writeNext(lineArray, false);
            }
            writer.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        copyFileToLocalSystem(fullFilePath);
        File csvFIle = new File(fullFilePath);
        FtpClient ftpClient = new FtpClient();
        ftpClient.openFtpConnection(csvFIle);

        return fullFilePath;

    }

    private static void copyFileToLocalSystem(String filePath) {
        Path sourcePath = Paths.get(filePath);
        String destinationFile = sourcePath.getFileName().toString();
        Path destinationPath = Paths.get("D:\\QA\\generated_orders\\" + destinationFile);
        try {
            Files.copy(sourcePath, destinationPath);
        } catch (Exception ex) {
            System.out.println("FAILED TO COPY FILE TO FTP LOCATION");
            ex.printStackTrace();
        }
    }
}