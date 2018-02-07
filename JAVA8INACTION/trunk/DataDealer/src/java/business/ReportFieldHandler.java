/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import static java.nio.file.FileVisitResult.CONTINUE;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;
import model.ReportTable;
import model.ReportTablePK;
import facade.ReportTableFacade;
import javax.ejb.EJB;

/**
 *
 * @author HQST100207
 */
@Stateless
public class ReportFieldHandler extends SimpleFileVisitor<Path> {
    

    ReportTable reportTable = new ReportTable();    
    ReportTablePK reportTablePK = new ReportTablePK();
    
    @EJB
    ReportTableFacade reportTableFacade;

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

    public void dealFile(Path file) {
        System.out.println("dealFile01");
        Scanner scanner = null;
        List<String> tableAndField = new ArrayList();
        this.reportTablePK.setReportName(file.getFileName().toString());
        
        System.out.println("this.reportTablePK.getReportName() = " + this.reportTablePK.getReportName());

        try {
            List<String> allLines = Files.readAllLines(file);
            
            System.out.println("dealFile02");
            
            for (String line : allLines) {
                
                System.out.println("dealFile03");
                
                scanner = new Scanner(line);
                tableAndField.clear();
                while (scanner.hasNext()) {
                    
                    System.out.println("dealFile04");
                    
                    tableAndField.add(scanner.next());
                }
                for (int i = 0; i < tableAndField.size(); i++) {
                    
                    System.out.println("dealFile05");
                    
                    if (i == 0) {
                        
                        System.out.println("dealFile06");
                        
                        this.reportTablePK.setTableName(tableAndField.get(i));
                    }else{
                        System.out.println("dealFile07");
                    
                    this.reportTablePK.setFieldName(tableAndField.get(i));
                    this.reportTable.setReportTablePK(this.reportTablePK);
                    
                    System.out.println("this.reportTable.getReportTablePK().getReportName() = " + this.reportTable.getReportTablePK().getReportName());
                    System.out.println("this.reportTable.getReportTablePK().getTableName() = " + this.reportTable.getReportTablePK().getTableName());
                    System.out.println("this.reportTable.getReportTablePK().getFieldName() = " + this.reportTable.getReportTablePK().getFieldName());
                    
                    this.reportTableFacade.create(this.reportTable);
                    }
                    
                    System.out.println("dealFile08");
                    
                    
  
                }

                //System.out.println(line);
            }
        } catch (IOException ex) {
            Logger.getLogger(ReportFieldHandler.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    

    




}
