package com.zeyfintravel.webapp.utils;

import java.io.File;
import java.util.Calendar;
import java.util.Date;

public class CommonUtil {
    public static String getToday() {


        Calendar cal = Calendar.getInstance();
        cal.setTime(new Date());
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONTH);
        int day = cal.get(Calendar.DAY_OF_MONTH);
        return "-" + day + "-" + month + "-" + year + "-";
    }

    public static File getImageDir() {
        //System.out.println("getImageDir");
        String OS = System.getProperty("os.name").toLowerCase();
        // System.out.println(OS);
        String dir;
        if (OS.indexOf("win") >= 0) {
            dir = "D:\\buta\\images\\";
        } else {
            dir = "/home/buta/images/";
        }
         System.out.println(dir);
        File root = new File(dir);
        //File image;
        if (!root.exists()) {
            //System.out.println("ff");
            try {
                root.mkdirs();
            } catch (Exception e) {
                e.printStackTrace();
            }


        }
        return root;
    }

    public static void main(String[] args) {
        System.out.println(getImageDir());
    }
    public static File getFileDir() {
        //System.out.println("getImageDir");
        String OS = System.getProperty("os.name").toLowerCase();
        // System.out.println(OS);
        String dir;
        if (OS.indexOf("win") >= 0) {
            dir = "D:\\motorpark\\cert\\";
        } else {
            dir = "/home/motorpark/cert/";
        }
        // System.out.println(dir);
        File root = new File(dir);
        //File image;
        if (!root.exists()) {
            //System.out.println("ff");
            try {
                root.mkdirs();
            } catch (Exception e) {
                e.printStackTrace();
            }


        }
        // System.out.println(root.getAbsolutePath());
        return root;
    }


    public static String cleanFileName(String name){
        return name.replaceAll(" ","-").replaceAll("\n","-");
    }
}
