package com.seleuco.mame4all.input;

import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;

import com.seleuco.mame4all.MAME4all;
import com.seleuco.mame4all.helpers.DialogHelper;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Administrator on 2017/4/2.
 */

@DexEdit(defaultAction = DexAction.IGNORE)
public class InputHandler implements View.OnTouchListener, View.OnKeyListener, IController {

    protected MAME4all mm;

    @DexAdd
    public int mapKey(int keyCode)
    {
        if(keyCode < 0 || keyCode >= 128)
            return -1;

        int[] keys = new int[128];

        keys[KeyEvent.KEYCODE_DPAD_UP] = 0;
        keys[KeyEvent.KEYCODE_DPAD_DOWN] = 1;
        keys[KeyEvent.KEYCODE_DPAD_LEFT] = 2;
        keys[KeyEvent.KEYCODE_DPAD_RIGHT] = 3;
        keys[KeyEvent.KEYCODE_BUTTON_A] = 4;
        keys[KeyEvent.KEYCODE_BUTTON_B] = 5;
        keys[KeyEvent.KEYCODE_BUTTON_X] = 4;
        keys[KeyEvent.KEYCODE_BUTTON_Y] = 5;
        keys[KeyEvent.KEYCODE_BUTTON_SELECT] = 53;
        keys[KeyEvent.KEYCODE_BUTTON_START] = 52;
        keys[KeyEvent.KEYCODE_BUTTON_L1] = -1;
        keys[KeyEvent.KEYCODE_BUTTON_R1] = -1;
        keys[KeyEvent.KEYCODE_BUTTON_L2] = -1;
        keys[KeyEvent.KEYCODE_BUTTON_R2] = -1;

        return keys[keyCode];
    }

    @DexReplace
    @Override
    public boolean onKey(View v, int keyCode, KeyEvent event) {
        //Log.d("TECLA", "onKeyDown=" + keyCode + " " + event.getAction() + " " + event.getDisplayLabel() + " " + event.getUnicodeChar() + " " + event.getNumber());

        if(ControlCustomizer.isEnabled())
        {
            if(keyCode == KeyEvent.KEYCODE_BACK)
            {
                mm.showDialog(DialogHelper.DIALOG_FINISH_CUSTOM_LAYOUT);
            }
            return true;
        }

//        if(mm.getPrefsHelper().getInputExternal() != PrefsHelper.PREF_INPUT_DEFAULT)
//        {
//            this.handleIcade(event);
//            return true;
//        }

        int gameKey = mapKey(keyCode);

        if(gameKey == -1)
            return false;

        return handlePADKey(gameKey, event);
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        return false;
    }

    protected boolean handlePADKey(int value, KeyEvent event){

//        int v = emulatorInputValues[value%emulatorInputValues.length];
//
//        if(v==L2_VALUE)
//        {
//            if(!Emulator.isInMAME())
//            {
//                mm.showDialog(DialogHelper.DIALOG_EXIT);
//            }
//            else
//            {
//                Emulator.setValue(Emulator.EXIT_GAME_KEY, 1);
//                try {
//                    Thread.sleep(100);
//                } catch (InterruptedException e) {
//                    e.printStackTrace();
//                }
//                Emulator.setValue(Emulator.EXIT_GAME_KEY, 0);
//            }
//        }
//        else if(v==R2_VALUE)
//        {
//            mm.showDialog(DialogHelper.DIALOG_OPTIONS);
//        }
//        else
//        {
//            int i = value/emulatorInputValues.length;
//            setPadData(i,event,v);
//            Emulator.setPadData(i,pad_data[i]);
//        }

        return true;
    }
}
