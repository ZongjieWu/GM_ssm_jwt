package com.wzj.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class BackupFile {
    public String executeLinuxCmd(String cmd) {
        System.out.println("got cmd job : " + cmd);
        Runtime run = Runtime.getRuntime();
        try {
            Process process = run.exec(cmd);

            //输出信息
            InputStream in = process.getInputStream();
            BufferedReader bs = new BufferedReader(new InputStreamReader(in));
            // System.out.println("[check] now size \n"+bs.readLine());
            StringBuffer out = new StringBuffer();
            byte[] b = new byte[8192];
            for (int n; (n = in.read(b)) != -1;) {
            out.append(new String(b, 0, n));
            }
              System.out.println("job result [" + out.toString() + "]");
            in.close();
            // process.waitFor();

            process.destroy();
            return out.toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        String cmd="cp /www/server/apache-tomcat-8.5.32/webapps/ROOT/static/upload /www";
        new BackupFile().executeLinuxCmd(cmd);
    }
}
