/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
该程序作用
读取指定目录下面额文件
把该文件的内容导入到数据库表
该文件的格式简介如下
文本文件
第一列 数据库表的owner名字
第二例 数据库表的名字
第三列及以后各列 字段的名字
各个列以空格分隔
 */
package business;

import business.FileHandler;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrator
 */
public class FileWalk {

    public void walkFile() {
        Path startPath = Paths.get("C:\\TEMP");
        FileHandler fileHandler = new FileHandler();
        try {
            Files.walkFileTree(startPath, fileHandler);
        } catch (IOException ex) {
            Logger.getLogger(FileWalk.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        FileWalk fileWalk = new FileWalk();
        fileWalk.walkFile();
    }

}
