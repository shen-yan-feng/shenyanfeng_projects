/*
 *遍历指定目录下面的所有文件
 *替换文件中指定的字符串
 *生成新文件
 */
package javaapplicationreplace;

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

/**
 *
 * @author HQST100207
 */
public class PrintFiles extends SimpleFileVisitor<Path> {
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
    
    public void fileReplace(Path file){
        StringBuffer stringBuffer = new StringBuffer();//存储replace后的内容
        try {
            List<String> fileContent = Files.readAllLines(file);//原始的文件内容字符串列表
            for (String content:fileContent){//遍历列表
                String contentReplaced = content.replace("\\u20", " ").replace("\\n", System.getProperty("line.separator"));//\\u20替换成空格 \\n替换成换行
                stringBuffer.append(contentReplaced).append(System.getProperty("line.separator"));//每行后换行
            }
            Path replacedFile = Paths.get(file + "_r");//新的文件名，在旧的名字后面跟一个_r
            Files.createFile(replacedFile);//创建空文件 如果文件存在 会失败 抛出异常
            Files.write(replacedFile, stringBuffer.toString().getBytes());//写文件
        } catch (IOException ex) {
            Logger.getLogger(PrintFiles.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main(String[] args){
        System.out.println("haha");
        
        Path startingDir = Paths.get("C:\\TEMP\\报表导出_解压后的");
        PrintFiles pf = new PrintFiles();
        try {
            Files.walkFileTree(startingDir, pf);
        } catch (IOException ex) {
            Logger.getLogger(PrintFiles.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
