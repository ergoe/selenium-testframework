package order;

import com.opencsv.CSVWriter;
import framework.FtpClient;
import framework.Utilities;

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

    public void createOrderFromXmlFile(String filename, List<Map<String, String>> orderDetailList) {
        String xml = slurpXmlFile("placeholder" + ".xml");
        xml = replacePlaceholders(xml, orderDetailList);
        FtpClient ftpClient = new FtpClient();
        try {
            File newXmlFile = writeXmlFile(xml);
            ftpClient.openTestFtpConnection(newXmlFile);
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }

    private File writeXmlFile(String contents) {
        Path path = null;
        String fullPath = "";
        File generatedXml = null;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String dateTime = simpleDateFormat.format(new Date());
        String filename = "ArrayOfOrders" + TEST_ACCOUNT + "_" + dateTime + ".xml";

        try {
            path = Paths.get(ClassLoader.getSystemResource("test_files").toURI());
            fullPath = path.toString() + "\\" + filename;
        } catch (Exception e) {
            e.printStackTrace();
        }


        try(FileWriter writer = new FileWriter(fullPath, true);
            BufferedWriter bufferedWriter = new BufferedWriter(writer)) {
            bufferedWriter.write(contents);
            generatedXml = new File(fullPath);
        } catch (IOException ioException) {
            ioException.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return generatedXml;
    }

    private String slurpXmlFile(String fileName) {
        Path path;
        fileName = "placeholder.xml";
        BufferedReader reader = null;
        String line;

        StringBuilder xmlString = new StringBuilder();

        try {
            /** /D:/gitRepos/selenium-testframework/target/test-classes/order */
            URI uri = new URI(String.format("%s/orderxml/%s", ClassLoader.getSystemResource("order").toString(), fileName));
            path = Paths.get(uri);
            reader = new BufferedReader(new FileReader(path.toFile()));
            if (reader == null) {
                throw new Error(String.format("File not found: %s", fileName));
            }
            while ((line = reader.readLine()) != null) {
                xmlString.append(line).append('\n');
            }
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }
        return xmlString.toString();
    }

    private String replacePlaceholders(String xml, List<Map<String, String>> orderDetailList) {
        int items = orderDetailList.size();
        //   ***ORDER_REFERENCE_9***
        String orderReferenceReplacementString = "";
        for (int i = 1; i <= items; i++) {
            orderReferenceReplacementString = String.format("\\*\\*\\*ORDER_REFERENCE_%s\\*\\*\\*", i);
            xml = xml.replaceAll(orderReferenceReplacementString, Utilities.generateRandomOrderReferenceGuid());
        }

        return xml;
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
