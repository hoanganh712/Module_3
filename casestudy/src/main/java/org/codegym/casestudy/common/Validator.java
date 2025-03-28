package org.codegym.casestudy.common;
import java.util.regex.Pattern;

public class Validator {

    // Kiểm tra định dạng mã khách hàng
    public static boolean isValidCustomerCode(String code) {
        return Pattern.matches("KH-\\d{4}", code);
    }

    // Kiểm tra định dạng mã dịch vụ
    public static boolean isValidServiceCode(String code) {
        return Pattern.matches("DV-\\d{4}", code);
    }

    // Kiểm tra định dạng số điện thoại
    public static boolean isValidPhone(String phone) {
        return Pattern.matches("(090|091|84\\+90|84\\+91)\\d{7}", phone);
    }

    // Kiểm tra định dạng số CMND
    public static boolean isValidIDCard(String idCard) {
        return Pattern.matches("\\d{9}|\\d{12}", idCard);
    }

    // Kiểm tra định dạng email
    public static boolean isValidEmail(String email) {
        return Pattern.matches("^[A-Za-z0-9+_.-]+@(.+)$", email);
    }

    // Kiểm tra định dạng ngày tháng
    public static boolean isValidDate(String date) {
        return Pattern.matches("\\d{2}/\\d{2}/\\d{4}", date);
    }

    // Kiểm tra số nguyên dương
    public static boolean isPositiveInteger(String number) {
        return Pattern.matches("\\d+", number);
    }

    // Kiểm tra số dương
    public static boolean isPositiveDecimal(String number) {
        return Pattern.matches("\\d+(\\.\\d+)?", number);
    }
}