/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java8inaction.file;

import java.io.IOException;
import static java.nio.file.FileVisitResult.*;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.Path;
import java.lang.Override;
import java.nio.charset.Charset;
import java.nio.file.FileVisitResult;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.List;
import java.util.ArrayList;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 *
 * @author HQST100207
 */
public class FileDealer extends SimpleFileVisitor<Path> {

    @Override
    public FileVisitResult visitFile(Path path, BasicFileAttributes attrs) throws IOException {

        System.out.println(path.toString());

        String regex = "jsp";//正则表达式
        Pattern pattern = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);//创建一个pattern 

        String fileName = path.toString();//获得遍历到的文件的文件名
        Matcher matcher = pattern.matcher(fileName);//文件名是否符合pattern
        if (matcher.find()) {
            System.out.println("it is a jsp file");

            try {
                List<String> originalFileContent = Files.readAllLines(path, Charset.forName("GBK"));//原始文件的内容
                List<String> fullFileContent = new ArrayList<>();//修改后的文件的内容
                fullFileContent.add("<%@page contentType=\"text/html;charset=GBK\" %>");//在原始文件中加入这句话
                fullFileContent.addAll(originalFileContent);//在原始文件中加入这句话
                //fullFileContent.stream().forEach(System.out::println);//输出修改后的文件内容
                Files.write(path, fullFileContent,Charset.forName("GBK"));//写入原始文件
            } catch (Exception e) {
                System.out.println(e);
                e.printStackTrace();
            }

        }

        return FileVisitResult.CONTINUE;
    }

    public static void main(String[] args) {
        try {
            System.out.println("in the main method");
            FileDealer fileDealer = new FileDealer();
            Path path = Paths.get("E:\\GitHub\\shenyanfeng_projects\\JAVA8INACTION\\trunk\\Java8InAction\\testfile\\ui");
            Files.walkFileTree(path, fileDealer);
        } catch (IOException ex) {
            Logger.getLogger(FileDealer.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
