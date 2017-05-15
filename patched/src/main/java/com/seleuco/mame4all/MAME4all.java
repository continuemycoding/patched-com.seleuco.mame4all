package com.seleuco.mame4all;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Keep;
import android.view.KeyEvent;
import android.view.View;

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

        for(int i=1;i<=5;i++)
        {
            final int index = i;

            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if(index == 4)
                    {
                        MAME4all.this.dispatchKeyEvent(new KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_DPAD_LEFT));
                        MAME4all.this.dispatchKeyEvent(new KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_DPAD_RIGHT));

                        handler.postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                MAME4all.this.dispatchKeyEvent(new KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_DPAD_LEFT));
                                MAME4all.this.dispatchKeyEvent(new KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_DPAD_RIGHT));
                            }
                        }, 100);

                        return;
                    }

                    MAME4all.this.dispatchKeyEvent(new KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_BUTTON_START));

                    handler.postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            MAME4all.this.dispatchKeyEvent(new KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_BUTTON_START));
                        }
                    }, 100);
                }
            }, 200 * i);
        }
    }

    @DexAdd
    @Override
    public void onDestroy () {
        super.onDestroy();

        System.exit(0);
    }
}
