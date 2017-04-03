package com.seleuco.mame4all.input;

import android.view.InputDevice;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;

import com.seleuco.mame4all.Emulator;
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
public class InputHandler implements View.OnGenericMotionListener, View.OnTouchListener, View.OnKeyListener, IController {

    protected MAME4all mm;

    protected static final int[] emulatorInputValues = null;

    @DexAdd
    private int[] players;

    protected int [] pad_data;

    @DexAdd
    private int getPlayerIndex(InputEvent event)
    {
        if ((event.getDevice().getSources() & InputDevice.SOURCE_JOYSTICK) == 0 || (event.getDevice().getSources() & (InputDevice.SOURCE_GAMEPAD)) == 0)
            return 0;

        if(players == null)
            players = new int[4];

        for(int i=0;i<players.length;i++)
        {
            if(players[i] == 0)
                players[i] = event.getDeviceId();

            if(players[i] == event.getDeviceId())
                return i;
        }

        return 0;
    }

    @DexAdd
    public int mapKey(int keyCode)
    {
        if(keyCode < 0 || keyCode >= 128)
            return -1;

        int[] keys = new int[128];

        keys[KeyEvent.KEYCODE_DPAD_UP] = UP_VALUE;
        keys[KeyEvent.KEYCODE_DPAD_DOWN] = DOWN_VALUE;
        keys[KeyEvent.KEYCODE_DPAD_LEFT] = LEFT_VALUE;
        keys[KeyEvent.KEYCODE_DPAD_RIGHT] = RIGHT_VALUE;
        keys[KeyEvent.KEYCODE_BUTTON_A] = B_VALUE;
        keys[KeyEvent.KEYCODE_BUTTON_B] = X_VALUE;
        keys[KeyEvent.KEYCODE_BUTTON_X] = A_VALUE;
        keys[KeyEvent.KEYCODE_BUTTON_Y] = Y_VALUE;
        keys[KeyEvent.KEYCODE_BUTTON_SELECT] = SELECT_VALUE;
        keys[KeyEvent.KEYCODE_BUTTON_START] = START_VALUE;
        keys[KeyEvent.KEYCODE_BUTTON_L1] = L1_VALUE;
        keys[KeyEvent.KEYCODE_BUTTON_R1] = R1_VALUE;
        keys[KeyEvent.KEYCODE_BUTTON_L2] = L2_VALUE;
        keys[KeyEvent.KEYCODE_BUTTON_R2] = R2_VALUE;

        return keys[keyCode];
    }

    @DexAdd
    protected void setPadData(int index, int keyCode, boolean isDown)
    {
        int gameKey = mapKey(keyCode);

        if(isDown)
            pad_data[index] |= gameKey;
        else
            pad_data[index] &= ~gameKey;

        Emulator.setPadData(index, pad_data[index]);
    }

    @DexAdd
    @Override
    public boolean onGenericMotion(View v, MotionEvent event) {
        float xAxisValue = event.getAxisValue(MotionEvent.AXIS_X);
        float yAxisValue = event.getAxisValue(MotionEvent.AXIS_Y);

        int playerIndex = getPlayerIndex(event);

        boolean processed = false;

        if(xAxisValue < -0.5f)
        {
            setPadData(playerIndex, KeyEvent.KEYCODE_DPAD_LEFT, true);
            processed = true;
        }
        else if(xAxisValue > 0.5f)
        {
            setPadData(playerIndex, KeyEvent.KEYCODE_DPAD_RIGHT, true);
            processed = true;
        }
        else if(Math.abs(xAxisValue) < 0.2f)
        {
            setPadData(playerIndex, KeyEvent.KEYCODE_DPAD_LEFT, false);
            setPadData(playerIndex, KeyEvent.KEYCODE_DPAD_RIGHT, false);
            processed = true;
        }

        if(yAxisValue < -0.5f)
        {
            setPadData(playerIndex, KeyEvent.KEYCODE_DPAD_UP, true);
            processed = true;
        }
        else if(yAxisValue > 0.5f)
        {
            setPadData(playerIndex, KeyEvent.KEYCODE_DPAD_DOWN, true);
            processed = true;
        }
        else if(Math.abs(yAxisValue) < 0.2f)
        {
            setPadData(playerIndex, KeyEvent.KEYCODE_DPAD_UP, false);
            setPadData(playerIndex, KeyEvent.KEYCODE_DPAD_DOWN, false);
            processed = true;
        }

        return processed;
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

        if(mapKey(keyCode) == -1)
            return false;

        setPadData(getPlayerIndex(event), keyCode, event.getAction() == KeyEvent.ACTION_DOWN);

        return true;
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        return false;
    }
}
