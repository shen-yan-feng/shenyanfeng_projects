<<<<<<< HEAD
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
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Date;
import java.util.List;
import model.ReportTable;
import model.ReportTablePK;
import facade.ReportTableJpaController;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Administrator
 */
public class FileHandler extends SimpleFileVisitor<Path> {

    @Override
    public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
        

        ReportTable reportTable = new ReportTable();
        ReportTablePK reportTablePK = new ReportTablePK();
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("JavaApplication02PU");
        ReportTableJpaController reportTableJpaController = new ReportTableJpaController(entityManagerFactory);

        System.out.println(file + " is visited.");
        List<String> fileContentList = Files.readAllLines(file);
        for (String lineContentTemp : fileContentList) {
            String[] lineContent = lineContentTemp.split(" ");
            for (int j = 2; j < lineContent.length; j++) {//数组index为0的内容，为table owner，index为1的内容，为table_name,inex为2及以后的内容，为field name
                System.out.println(lineContent[0] + " " + lineContent[j]);

                reportTable.setReportTablePK(null);
                reportTable.setMakeDate(null);
                reportTable.setMakeOperator(null);
                reportTable.setModifyDate(null);
                reportTable.setModifyDate(null);

                reportTablePK.setReportName(null);
                reportTablePK.setTableOwner(null);
                reportTablePK.setTableName(null);
                reportTablePK.setFieldName(null);

                reportTablePK.setReportName(file.getFileName().toString().toUpperCase());
                reportTablePK.setTableOwner(lineContent[0].toUpperCase());
                reportTablePK.setTableName(lineContent[1].toUpperCase());
                reportTablePK.setFieldName(lineContent[j].toUpperCase());

                Date curDate = new Date();
                reportTable.setReportTablePK(reportTablePK);
                reportTable.setMakeDate(curDate);
                reportTable.setMakeOperator("TEST");
                reportTable.setModifyDate(curDate);
                reportTable.setModifyOperator("TEST");

                if ((reportTableJpaController.findReportTable(reportTablePK)) == null) {//表中没有该主键的记录，那么插入。
                    try {
                        reportTableJpaController.create(reportTable);
                    } catch (Exception ex) {
                        Logger.getLogger(FileHandler.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        }
        reportTablePK = null;
        reportTable = null;
        reportTableJpaController = null;
        entityManagerFactory = null;
        return CONTINUE;
    }

}
=======
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
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Date;
import java.util.List;
import model.ReportTable;
import model.ReportTablePK;
import facade.ReportTableJpaController;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Administrator
 */
public class FileHandler extends SimpleFileVisitor<Path> {

    @Override
    public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
        

        ReportTable reportTable = new ReportTable();
        ReportTablePK reportTablePK = new ReportTablePK();
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("JavaApplication02PU");
        ReportTableJpaController reportTableJpaController = new ReportTableJpaController(entityManagerFactory);

        System.out.println(file + " is visited.");
        List<String> fileContentList = Files.readAllLines(file);
        for (String lineContentTemp : fileContentList) {
            String[] lineContent = lineContentTemp.split(" ");
            for (int j = 2; j < lineContent.length; j++) {//数组index为0的内容，为table owner，index为1的内容，为table_name,inex为2及以后的内容，为field name
                System.out.println(lineContent[0] + " " + lineContent[j]);

                reportTable.setReportTablePK(null);
                reportTable.setMakeDate(null);
                reportTable.setMakeOperator(null);
                reportTable.setModifyDate(null);
                reportTable.setModifyDate(null);

                reportTablePK.setReportName(null);
                reportTablePK.setTableOwner(null);
                reportTablePK.setTableName(null);
                reportTablePK.setFieldName(null);

                reportTablePK.setReportName(file.getFileName().toString().toUpperCase());
                reportTablePK.setTableOwner(lineContent[0].toUpperCase());
                reportTablePK.setTableName(lineContent[1].toUpperCase());
                reportTablePK.setFieldName(lineContent[j].toUpperCase());

                Date curDate = new Date();
                reportTable.setReportTablePK(reportTablePK);
                reportTable.setMakeDate(curDate);
                reportTable.setMakeOperator("TEST");
                reportTable.setModifyDate(curDate);
                reportTable.setModifyOperator("TEST");

                if ((reportTableJpaController.findReportTable(reportTablePK)) == null) {//表中没有该主键的记录，那么插入。
                    try {
                        reportTableJpaController.create(reportTable);
                    } catch (Exception ex) {
                        Logger.getLogger(FileHandler.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        }
        reportTablePK = null;
        reportTable = null;
        reportTableJpaController = null;
        entityManagerFactory = null;
        return CONTINUE;
    }

}
>>>>>>> c8605f1683cb804af0cd7b73cb35ea56ab0dd268
