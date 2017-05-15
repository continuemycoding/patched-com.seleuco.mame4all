package com.seleuco.mame4all.helpers;

import android.app.Dialog;
import android.support.annotation.Keep;

import com.qiang.framework.helpers.MetaDataHelper;
import com.qiang.framework.helpers.SystemHelper;
import com.qiang.framework.recommend.RecommendManager;
import com.qiang.mame4all.BuildConfig;
import com.seleuco.mame4all.MAME4all;

import java.util.Date;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;

/**
 * Created by Lin on 2017/5/15.
 */

@Keep
@DexEdit(defaultAction = DexAction.IGNORE)
public class DialogHelper {

    public static final int DIALOG_ERROR_WRITING = 2;
    public static final int DIALOG_EXIT = 1;
    public static final int DIALOG_EXIT_GAME = 4;
    public static final int DIALOG_FINISH_CUSTOM_LAYOUT = 10;
    public static final int DIALOG_FULLSCREEN = 7;
    public static final int DIALOG_INFO = 3;
    public static final int DIALOG_LOAD_FILE_EXPLORER = 8;
    public static final int DIALOG_NONE = -1;
    public static final int DIALOG_OPTIONS = 5;
    public static final int DIALOG_ROMs_DIR = 9;
    public static final int DIALOG_THANKS = 6;

    protected MAME4all mm;

    @DexEdit(target = "createDialog")
    public Dialog source_createDialog(int paramInt){return null;}

    @DexAdd
    public Dialog createDialog(int paramInt)
    {
        if(paramInt == DIALOG_EXIT || paramInt == DIALOG_EXIT_GAME)
        {
            if(BuildConfig.DEBUG || MetaDataHelper.getString("UMENG_CHANNEL").equals("dangbei") || new Date().getTime() - SystemHelper.getLastUpdateTime() > 8 * 60 * 60 * 1000)
                RecommendManager.showDialog(mm);
            else
                SystemHelper.showQuitDialog(mm);

            return null;
        }

        return source_createDialog(paramInt);
    }
}
