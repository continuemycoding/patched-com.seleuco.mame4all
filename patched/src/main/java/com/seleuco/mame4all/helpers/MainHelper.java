package com.seleuco.mame4all.helpers;

import android.content.Context;
import android.os.Environment;

import com.qiang.framework.helpers.FileHelper;
import com.seleuco.mame4all.MAME4all;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/4/1.
 */

@DexEdit(defaultAction = DexAction.IGNORE)
public class MainHelper {

    protected MAME4all mm;

    @DexReplace
    public String getDefaultROMsDIR()
    {
        return Environment.getDataDirectory() + "/data/" + mm.getPackageName() + "/MAME4all/";
    }

    @DexAdd
    public static String getROMFileName(Context context)
    {
        String packageName = context.getPackageName();
        return packageName.substring(packageName.lastIndexOf(".") + 1);
    }

    @DexReplace
    public void copyFiles(){
        copyFiles("files");
        String romFileName = getROMFileName(mm);
        FileHelper.copyResource(mm, romFileName, "raw", getDefaultROMsDIR() + "/roms/" + romFileName + ".zip");
    }

    @DexAdd
    public void copyFiles(String name)
    {
        try
        {
            String installationDIR = getDefaultROMsDIR();

            File file = new File(installationDIR + File.separator + "saves/" + "dont-delete-" + name + ".bin");
            if (file.exists()) {
                return;
            }

            new File(installationDIR).mkdirs();

            file.createNewFile();

            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(mm.getResources().openRawResource(mm.getResources().getIdentifier(name, "raw", mm.getPackageName()))));

            while (true)
            {
                ZipEntry zipEntry = zipInputStream.getNextEntry();

                if (zipEntry == null) {
                    break;
                }

                if (zipEntry.isDirectory()) {
                    new File(installationDIR + File.separator + zipEntry.getName()).mkdirs();
                    continue;
                }

                FileOutputStream fileOutputStream = new FileOutputStream(installationDIR + File.separator + zipEntry.getName());

                byte[] bytes = new byte[49152];

                int number;
                while ((number = zipInputStream.read(bytes, 0, bytes.length)) != -1)
                {
                    fileOutputStream.write(bytes, 0, number);
                }

                fileOutputStream.flush();
                fileOutputStream.close();
            }

            zipInputStream.close();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
