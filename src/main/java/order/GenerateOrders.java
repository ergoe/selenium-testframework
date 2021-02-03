package order;

import com.opencsv.CSVWriter;
import framework.FtpClient;

import java.io.*;
import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.*;

public class GenerateOrders {

    private static final String TEST_ACCOUNT =  "1161808";

    public static String createSingleOrderFileWithMultipleProducts(List<List<String>> orderData) {

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
        try {
            ftpClient.openFtpConnection(csvFIle);
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }

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
        try {
            ftpClient.openFtpConnection(csvFIle);
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }

        return fullFilePath;

    }

    public String slurpXmlFile(String fileName) {
        Path path;
        fileName = "placeholder.xml";
        BufferedReader reader = null;
        String line;
        try {
            /** /D:/gitRepos/selenium-testframework/target/test-classes/order */
            URI uri = new URI(String.format("%s/orderxml/%s", ClassLoader.getSystemResource("order").toString(), fileName));
            path = Paths.get(uri);
            reader = new BufferedReader(new FileReader(path.toFile()));
            if (reader == null) {
                throw new Error(String.format("File not found: %s", fileName));
            }
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
        } catch(Exception ex) {
            System.out.println();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }
        return "";
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
