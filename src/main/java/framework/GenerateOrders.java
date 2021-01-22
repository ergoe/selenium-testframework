package framework;

import com.opencsv.CSVWriter;
import org.joda.time.DateTime;

import java.io.FileWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public class GenerateOrders {

    public static String createSingleOrderFileWithMultipleProducts(List<List<String>> orderData, UUID orderId) {

        Path path;
        FileWriter fileWriter;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String dateTime = simpleDateFormat.format(new Date());
        String testAccount = "1161808";
        String filename = "850_" + testAccount + "_" + dateTime + ".csv";
        String fullFilePath = "";
        try {
            path = Paths.get(ClassLoader.getSystemResource("test_files").toURI());

            fileWriter = new FileWriter(path.toString() + "\\" + filename);
            fullFilePath = path.toString() + "\\" + filename;
            System.out.println(fileWriter);
            CSVWriter writer = new CSVWriter(fileWriter);
            int counter = 1;
            for (List<String> row : orderData) {
                String[] lineArray = row.toArray(new String[0]);
                if (counter > 1) {
//                    lineArray[0] = orderId.toString();
                    lineArray[0] = "2222-2222-33334-3211";

                }
                writer.writeNext(lineArray);
                counter += 1;
            }

            writer.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        copyFileToLocalSystem(fullFilePath);
        return fullFilePath;
    }

    private static void copyFileToLocalSystem(String filePath) {
        Path sourcePath = Paths.get(filePath);
        String destinationFile = sourcePath.getFileName().toString();
        Path destinationPath = Paths.get("D:\\QA\\generated_orders\\" + destinationFile);
        try {
            Files.copy(sourcePath, destinationPath);
        } catch (Exception ex) {

        }
    }
}
