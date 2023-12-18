package com.bf.bfadmin.Utils;

import java.io.IOException;
import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;
/**
 *
 * 前端vue打包封装好dist文件夹后将vue/dist文件夹复制到后端resources/static文件夹下
 * 
 * @author Wang Yishuo
 * @date 2023/5/22 13:34 
 */


public class DistCopyUtil {
    public static void main(String[] args) {
        Path source = Paths.get("vue/dist");
        Path target = Paths.get("src/main/resources/static/dist");

        try {
            // 删除目标文件夹及其下所有文件
            if (Files.exists(target)) {
                System.out.println("static/dist文件夹已存在！");
                Files.walkFileTree(target, new SimpleFileVisitor<Path>() {
                    @Override
                    public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
                        Files.delete(file);
                        return FileVisitResult.CONTINUE;
                    }

                    @Override
                    public FileVisitResult postVisitDirectory(Path dir, IOException exc) throws IOException {
                        Files.delete(dir);
                        return FileVisitResult.CONTINUE;
                    }
                });
                System.out.println("static/dist文件夹已删除！");
            }

            // 复制源文件夹到目标文件夹
            Files.walkFileTree(source, new SimpleFileVisitor<Path>() {
                @Override
                public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
                    Path targetDir = target.resolve(source.relativize(dir));
                    Files.createDirectories(targetDir);
                    return FileVisitResult.CONTINUE;
                }

                @Override
                public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
                    Files.copy(file, target.resolve(source.relativize(file)), StandardCopyOption.REPLACE_EXISTING);
                    return FileVisitResult.CONTINUE;
                }
            });
            System.out.println("文件夹复制完成！");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
