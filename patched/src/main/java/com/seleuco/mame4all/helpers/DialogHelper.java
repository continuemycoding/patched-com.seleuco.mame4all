package com.seleuco.mame4all.helpers;

import android.app.Dialog;
import android.support.annotation.Keep;

import com.qiang.framework.recommend.RecommendManager;
import com.seleuco.mame4all.MAME4all;

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

    public static final int DIALOG_FINISH_CUSTOM_LAYOUT = 10;

    protected MAME4all mm;

    @DexEdit(target = "createDialog")
    public Dialog source_createDialog(int paramInt){return null;}

    @DexAdd
    public Dialog createDialog(int paramInt)
    {
        if(paramInt == 1 || paramInt == 4)//Are you sure you want to exit?  Are you sure you want to exit game?
        {
            RecommendManager.showDialog(mm);
            return null;
        }

        return source_createDialog(paramInt);
    }
}
