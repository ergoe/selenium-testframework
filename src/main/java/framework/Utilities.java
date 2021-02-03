package framework;

import java.math.BigInteger;
import java.util.Random;
import java.util.UUID;

public class Utilities {

    public static String generateRandomOrderReference() {
        BigInteger maxLimit = new BigInteger("5000000000000");
        BigInteger minLimit = new BigInteger("25000000000");
        BigInteger bigInteger = maxLimit.subtract(minLimit);
        Random randNum = new Random();
        int len = maxLimit.bitLength();
        BigInteger result =  new BigInteger(len, randNum);
        if (result.compareTo(minLimit) < 0)
            result = result.add(minLimit);
        if (result.compareTo(bigInteger) >= 0)
            result = result.mod(bigInteger).add(minLimit);
        System.out.println("The random BigInteger = "+result);

        return result.toString();
    }

    public static String generateRandomOrderReferenceGuid() {
        UUID orderUUID = UUID.randomUUID();
        String orderID = orderUUID.toString().substring(0,22);
//        String orderID = orderUUID.toString().substring(0,14);
        return orderID;
    }

}
