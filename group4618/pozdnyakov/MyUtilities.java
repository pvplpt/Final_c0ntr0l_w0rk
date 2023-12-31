package group4618.pozdnyakov;

import java.util.Scanner;

public class MyUtilities {
    static Scanner iScanner = new Scanner(System.in);

    public static int inputNaturelNumber(String msg) {
        int num = 0;
        while (num < 1) {
            System.out.printf(msg);
            while (!iScanner.hasNextInt()) {
                System.out.printf("\n%s не подходит.\n", iScanner.nextLine());
                System.out.printf(msg);
            }
            num = iScanner.nextInt();
            if (num < 1) {
                System.out.printf("\n%d не подходит.\n", num);
            }
        }
        iScanner.nextLine();
        return num;
    }

    public static String inputString(String msg) {
        System.out.printf(msg);
        return iScanner.nextLine();
    }

}
