/*
 *遍历指定目录下面的所有文件
 *读出每行
 *针每行进行处理
 *把每行记录用.这个字符作为tokenizer,把记录拆开
 *
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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Scanner;
import model.ViewfieldToTablefield;
import model.ViewfieldToTablefieldPK;
import facade.ViewfieldToTablefieldJpaController;
import java.nio.charset.Charset;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.Date;


/**
 *
 * @author HQST100207
 */
public class ViewToTableMap extends SimpleFileVisitor<Path> {
// Print information about
// each type of file.

    @Override
    public FileVisitResult visitFile(Path file, BasicFileAttributes attr) {
        if (attr.isSymbolicLink()) {
            System.out.format("Symbolic link: %s ", file);
        } else if (attr.isRegularFile()) {
            System.out.format("Regular file: %s ", file);
            fileReplace(file);
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
    
    /*
    读出文件内容
    替换中间的内容
    \\u20替换成空格 \\n替换成换行
    生成的SQL 人类容易看
    */
    public void fileReplace(Path file){
        StringBuffer stringBuffer = new StringBuffer();//存储replace后的内容
        String[] lineContent = new String[6];//每行有4项目内容，以.分隔，从左至右，依次是 table owner.table name.field name.view field.view name位于文件名中
        ViewfieldToTablefieldPK viewfieldToTablefieldPK = new ViewfieldToTablefieldPK();//主键对象
        ViewfieldToTablefield viewfieldToTablefield = new ViewfieldToTablefield();
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("DataHandlerPU");//得到实体管理者工厂
        ViewfieldToTablefieldJpaController viewfieldToTablefieldJpaController = new ViewfieldToTablefieldJpaController(entityManagerFactory);//jpa对象
        try {
            List<String> fileContent = Files.readAllLines(file,Charset.forName("GBK"));//原始的文件内容字符串列表
            String viewName = file.getFileName().toString();//视图的名字存在文件名中
            for (String content:fileContent){//遍历列表
                Scanner scanner = new Scanner(content);
                //System.out.println("content = " + content);
                scanner.useDelimiter("\\.");//设置分隔符
                int i=0;//数组中项目位置
                while(scanner.hasNext()){
                    lineContent[i] = scanner.next().replace(" ", "").toUpperCase();//把空格去掉把字母转大写
                    //System.out.println(lineContent[i]);
                    i++;
                }
                lineContent[4] = "DMART";//视图用户 此处写死 
                lineContent[5] = viewName.toUpperCase().replace(".TXT", "");//视图名字
                
                //System.out.println(lineContent[4]);
                //System.out.println(lineContent[5]);
                
                scanner = null;//设置成null，便于垃圾收集。
                //System.out.println("分割线");
                //String contentReplaced = content.replace("\\u20", " ").replace("\\n", System.getProperty("line.separator"));//\\u20替换成空格 \\n替换成换行
                //stringBuffer.append(contentReplaced).append(System.getProperty("line.separator"));//每行后换行
                
                viewfieldToTablefieldPK.setTableOwner(lineContent[0]);
                viewfieldToTablefieldPK.setTableName(lineContent[1]);
                viewfieldToTablefieldPK.setTableField(lineContent[2]);
                viewfieldToTablefieldPK.setViewField(lineContent[3]);
                viewfieldToTablefieldPK.setViewOwner(lineContent[4]);
                viewfieldToTablefieldPK.setViewName(lineContent[5]);
                String operator = "DEFAULT";
                Date date = new Date();
                viewfieldToTablefield.setViewfieldToTablefieldPK(viewfieldToTablefieldPK);
                viewfieldToTablefield.setMakeOperator(operator);
                viewfieldToTablefield.setMakeDate(date);
                viewfieldToTablefield.setModifyOperator(operator);
                viewfieldToTablefield.setModifyDate(date);
                try {
                    if(viewfieldToTablefieldJpaController.findViewfieldToTablefield(viewfieldToTablefieldPK) == null){//主键在表中不存在时才写记录
                        viewfieldToTablefieldJpaController.create(viewfieldToTablefield);//写入表
                    }
                } catch (Exception ex) {
                    Logger.getLogger(ViewToTableMap.class.getName()).log(Level.SEVERE, null, ex);
                }
                
                

                //清空对象中的属性
                viewfieldToTablefieldPK.setTableOwner(null);
                viewfieldToTablefieldPK.setTableName(null);
                viewfieldToTablefieldPK.setTableField(null);
                viewfieldToTablefieldPK.setViewOwner(null);
                viewfieldToTablefieldPK.setViewName(null);
                viewfieldToTablefieldPK.setViewField(null);
                viewfieldToTablefield.setViewfieldToTablefieldPK(null);
                viewfieldToTablefield.setMakeOperator(null);
                viewfieldToTablefield.setMakeDate(null);
                viewfieldToTablefield.setModifyOperator(null);
                viewfieldToTablefield.setModifyDate(null);                
                
                date = null;
                lineContent = new String[]{"","","","","",""};//清空数组中每一项目
            }
        } catch (IOException ex) {
            Logger.getLogger(ViewToTableMap.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main(String[] args){
        System.out.println("haha");
        
        Path startingDir = Paths.get("C:\\TEMP");
        ViewToTableMap pf = new ViewToTableMap();
        try {
            Files.walkFileTree(startingDir, pf);
        } catch (IOException ex) {
            Logger.getLogger(ViewToTableMap.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
