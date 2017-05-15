package com.seleuco.mame4all;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Keep;
import android.view.KeyEvent;
import android.view.View;

import com.seleuco.mame4all.helpers.MainHelper;
import com.seleuco.mame4all.helpers.PrefsHelper;
import com.seleuco.mame4all.input.InputHandler;
import com.seleuco.mame4all.views.InputView;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;

/**
 * Created by Administrator on 2017/4/3.
 */

@Keep
@DexEdit(defaultAction = DexAction.IGNORE)
public class MAME4all extends Activity {

    protected InputHandler inputHandler;

    protected View emuView;
    protected InputView inputView;

    public MainHelper getMainHelper()
    {
        return null;
    }

    public PrefsHelper getPrefsHelper()
    {
        return null;
    }

    public void runMAME4all()
    {

    }

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

        final Handler handler = new Handler();

        int[] keys = new int[]{KeyEvent.KEYCODE_BUTTON_START, KeyEvent.KEYCODE_BUTTON_START, KeyEvent.KEYCODE_BUTTON_START, KeyEvent.KEYCODE_BUTTON_START, KeyEvent.KEYCODE_DPAD_LEFT, KeyEvent.KEYCODE_DPAD_RIGHT, KeyEvent.KEYCODE_BUTTON_START};

        for(int i=0;i<keys.length * 2;i++)
        {
            final int action = i % 2 == 0 ? KeyEvent.ACTION_DOWN : KeyEvent.ACTION_UP;
            final int code = keys[i / 2];

            final long delayMillis = i % 2 == 0 ? 200 * i: 200 * i + 50;

            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    MAME4all.this.dispatchKeyEvent(new KeyEvent(action, code));
                }
            }, delayMillis);
        }
    }

    @DexAdd
    @Override
    public void onDestroy () {
        super.onDestroy();

        System.exit(0);
    }
}
