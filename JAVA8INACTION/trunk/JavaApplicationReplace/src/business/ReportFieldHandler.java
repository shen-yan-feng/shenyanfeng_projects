/*
 *遍历指定目录下面的所有文件
 *替换文件中指定的字符串
 *生成新文件
 */
package business;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import static java.nio.file.FileVisitResult.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Scanner;
import model.ReportTable;
import model.ReportTablePK;
import facade.ReportTableJpaController;

/**
 *
 * @author HQST100207
 */
public class ReportFieldHandler extends SimpleFileVisitor<Path> {
// Print information about
// each type of file.

    @Override
    public FileVisitResult visitFile(Path file, BasicFileAttributes attr) {
        if (attr.isSymbolicLink()) {
            System.out.format("Symbolic link: %s ", file);
        } else if (attr.isRegularFile()) {
            System.out.format("Regular file: %s ", file);
            dealFile(file);
        } else {
            System.out.format("Other: %s ", file);
        }
        System.out.println("(" + attr.size() + "bytes)");
        return CONTINUE;
    }
// Print each directory visited.

    @Override
    public FileVisitResult postVisitDirectory(Path dir, IOException exc) {
        System.out.format("Directory: %s%n", dir);
        return CONTINUE;
    }
// If there is some error accessing
// the file, let the user know.
// If you don't override this method
// and an error occurs, an IOException
// is thrown.

    @Override
    public FileVisitResult visitFileFailed(Path file, IOException exc) {
        System.err.println(exc);
        return CONTINUE;
    }
    
    public void dealFile(Path file){
        System.out.println();
        Scanner scanner = null;
        List<String> tableAndField = new ArrayList();
        ReportTable reportTable = new ReportTable();
        ReportTablePK reportTablePK = new ReportTablePK();
        reportTablePK.setReportName(file.getFileName().toString());

        
        try {
            List<String> allLines = Files.readAllLines(file);
            for(String line : allLines){
                scanner = new Scanner(line);
                tableAndField.clear();
                while(scanner.hasNext()){     
                    tableAndField.add(scanner.next());
                }
                for(int i=0;i<tableAndField.size();i++){
                    if(i==0){
                        reportTablePK.setTableName(tableAndField.get(i));
                        break;
                    }
                    reportTablePK.setFieldName(tableAndField.get(i));
                    System.out.println(tableAndField.get(i));
                }
                
                //System.out.println(line);
            }
        } catch (IOException ex) {
            Logger.getLogger(ReportFieldHandler.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public static void main(String[] args){
        System.out.println("haha");
        
        Path startingDir = Paths.get("C:\\TEMP");
        ReportFieldHandler pf = new ReportFieldHandler();
        try {
            Files.walkFileTree(startingDir, pf);
        } catch (IOException ex) {
            Logger.getLogger(ReportFieldHandler.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
