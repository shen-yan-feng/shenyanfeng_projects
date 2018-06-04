/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lisjsphandler;

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
import java.nio.file.FileSystems;
import java.nio.file.PathMatcher;
import java.nio.file.StandardOpenOption;


/**
 *
 * @author HQST100207
 */
public class LisJspHandler extends SimpleFileVisitor<Path> {
    @Override
    public FileVisitResult visitFile(Path path,BasicFileAttributes attrs) throws IOException{        
        //建立一个PathMatcher，表示文件匹配模式
        PathMatcher pathMatcher = FileSystems.getDefault().getPathMatcher("glob:*.{jsp}");
        //要加在每个JSP前面的那句话
        String gbkStr = "<%@page contentType=\"text/html;charset=GBK\" %>";
        //当文件是jsp文件时,注意，这个地方，要用path.getFileName(),而不能只使用path
        try{
           if(pathMatcher.matches(path.getFileName())){ 
            System.out.println("visitFile = " + path.toString());
            //读出每个文件
            //在每个文件的最前面加上字符编码这句话
            String content = "";//添加内容后的文件内容
            content = content + gbkStr;//把字符编码这句话放在文件最前面
            content = content + System.lineSeparator();//跟上换行符号
            //遍历这个文件，把每行内容加到这个字符串上
            for(String line : Files.readAllLines(path,Charset.forName("GBK"))){
                content = content + line;
                content = content + System.lineSeparator();
            }
            //System.out.println("content = "  + content);            
            Files.write(path, content.getBytes(), StandardOpenOption.WRITE);  
        } 
        }catch(Exception e){
            System.out.println(e.getStackTrace());
        }
        
        
        return FileVisitResult.CONTINUE;
    }
    
    public static void main(String[] args){
        try {
            System.out.println("in the main method");            
            LisJspHandler lisJspHandler = new LisJspHandler();
            Path path = Paths.get("E:\\CDM\\NetBeansProjects\\lis\\trunk\\lis\\web");            
            Files.walkFileTree(path, lisJspHandler);
        } catch (IOException ex) {
            Logger.getLogger(LisJspHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
