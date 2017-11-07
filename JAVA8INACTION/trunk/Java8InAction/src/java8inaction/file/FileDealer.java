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
import java.nio.file.FileVisitResult;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HQST100207
 */
public class FileDealer extends SimpleFileVisitor<Path> {
    @Override
    public FileVisitResult visitFile(Path path,BasicFileAttributes attrs) throws IOException{
        
        System.out.println(path.toString());
        Files.readAllLines(path).stream().forEach(System.out::println);
        
        return FileVisitResult.CONTINUE;
    }
    
    public static void main(String[] args){
        try {
            System.out.println("in the main method");            
            FileDealer fileDealer = new FileDealer();
            Path path = Paths.get("E:\\GitHub\\shenyanfeng_projects\\JAVA8INACTION\\trunk\\Java8InAction\\testfile");            
            Files.walkFileTree(path, fileDealer);
        } catch (IOException ex) {
            Logger.getLogger(FileDealer.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
