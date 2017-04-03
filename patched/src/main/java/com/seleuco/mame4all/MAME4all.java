package com.seleuco.mame4all;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;

import com.seleuco.mame4all.input.InputHandler;
import com.seleuco.mame4all.views.InputView;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;

/**
 * Created by Administrator on 2017/4/3.
 */

@DexEdit(defaultAction = DexAction.IGNORE)
public class MAME4all extends Activity {

    protected InputHandler inputHandler;

    protected View emuView;
    protected InputView inputView;

    @DexEdit(target = "onCreate")
    protected void source_onCreate(Bundle savedInstanceState){}

    @SuppressLint("MissingSuperCall")
    @DexAdd
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        source_onCreate(savedInstanceState);

        emuView.setOnGenericMotionListener(inputHandler);
        inputView.setOnGenericMotionListener(inputHandler);
    }
}
