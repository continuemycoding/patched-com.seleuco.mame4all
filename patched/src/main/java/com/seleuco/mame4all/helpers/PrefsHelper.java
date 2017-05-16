package com.seleuco.mame4all.helpers;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.support.annotation.Keep;

import com.seleuco.mame4all.MAME4all;

import lanchon.dexpatcher.annotation.DexAction;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexReplace;

/**
 * Created by Lin on 2017/5/16.
 */

@Keep
@DexEdit(defaultAction = DexAction.IGNORE)
public class PrefsHelper implements SharedPreferences.OnSharedPreferenceChangeListener{
    public static final int PREF_15X = 2;
    public static final int PREF_20X = 3;
    public static final int PREF_25X = 4;
    public static final String PREF_ANALOG_DZ = "PREF_ANALOG_DZ";
    public static final int PREF_ANALOG_FAST = 2;
    public static final int PREF_ANALOG_PRETTY = 3;
    public static final String PREF_ANIMATED_INPUT = "PREF_ANIMATED_INPUT";
    public static final String PREF_CONTROLLER_TYPE = "PREF_CONTROLLER_TYPE";
    public static final int PREF_CRT_1 = 4;
    public static final int PREF_CRT_2 = 5;
    public static final String PREF_DEFINED_CONTROL_LAYOUT = "PREF_DEFINED_CONTROL_LAYOUT";
    public static final String PREF_DEFINED_KEYS = "PREF_DEFINED_KEYS";
    public static final int PREF_DIGITAL = 1;
    public static final int PREF_FILTER_NONE = 1;
    public static final int PREF_FILTER_SCANLINE_1 = 2;
    public static final int PREF_FILTER_SCANLINE_2 = 3;
    public static final String PREF_GLOBAL_ASMCORES = "PREF_GLOBAL_ASMCORES";
    public static final String PREF_GLOBAL_DEBUG = "PREF_GLOBAL_DEBUG";
    public static final String PREF_GLOBAL_IDLE_WAIT = "PREF_GLOBAL_IDLE_WAIT";
    public static final String PREF_GLOBAL_SHOW_FPS = "PREF_GLOBAL_SHOW_FPS";
    public static final String PREF_GLOBAL_SHOW_INFOWARNINGS = "PREF_GLOBAL_SHOW_INFOWARNINGS";
    public static final String PREF_GLOBAL_SOUND_THREADED = "PREF_GLOBAL_SOUND_THREADED";
    public static final String PREF_GLOBAL_VIDEO_RENDER_MODE = "PREF_GLOBAL_VIDEO_RENDER_MODE";
    public static final int PREF_INPUT_DEFAULT = 1;
    public static final String PREF_INPUT_EXTERNAL = "PREF_INPUT_EXTERNAL";
    public static final int PREF_INPUT_ICADE = 2;
    public static final int PREF_INPUT_ICP = 3;
    public static final String PREF_LANDSCAPE_BITMAP_FILTERING = "PREF_LANDSCAPE_BITMAP_FILTERING";
    public static final String PREF_LANDSCAPE_CONTROLLER_TYPE = "PREF_LANDSCAPE_CONTROLLER_TYPE";
    public static final String PREF_LANDSCAPE_FILTER_TYPE = "PREF_LANDSCAPE_FILTER_2";
    public static final String PREF_LANDSCAPE_SCALING_MODE = "PREF_LANDSCAPE_SCALING_MODE_2";
    public static final String PREF_LANDSCAPE_TOUCH_CONTROLLER = "PREF_LANDSCAPE_TOUCH_CONTROLLER";
    public static final int PREF_ORIGINAL = 1;
    public static final String PREF_PORTRAIT_BITMAP_FILTERING = "PREF_PORTRAIT_BITMAP_FILTERING";
    public static final String PREF_PORTRAIT_FILTER_TYPE = "PREF_PORTRAIT_FILTER_2";
    public static final String PREF_PORTRAIT_SCALING_MODE = "PREF_PORTRAIT_SCALING_MODE_2";
    public static final String PREF_PORTRAIT_TOUCH_CONTROLLER = "PREF_PORTRAIT_TOUCH_CONTROLLER";
    public static final int PREF_RENDER_GL = 3;
    public static final int PREF_RENDER_HW = 4;
    public static final int PREF_RENDER_NORMAL = 1;
    public static final int PREF_RENDER_THREADED = 2;
    public static final String PREF_ROMsDIR = "PREF_ROMsDIR";
    public static final int PREF_SCALE = 5;
    public static final int PREF_STRETCH = 6;
    public static final String PREF_TILT_DZ = "PREF_TILT_DZ";
    public static final String PREF_TILT_SENSITIVITY = "PREF_TILT_SENSITIVITY";
    public static final String PREF_TILT_SENSOR = "PREF_TILT_SENSOR";
    public static final String PREF_TOUCH_DZ = "PREF_TOUCH_DZ";
    public static final String PREF_TRACKBALL_NOMOVE = "PREF_TRACKBALL_NOMOVE";
    public static final String PREF_TRACKBALL_SENSITIVITY = "PREF_TRACKBALL_SENSITIVITY";
    public static final String PREF_VIBRATE = "PREF_VIBRATE";

    protected MAME4all mm;

    protected SharedPreferences getSharedPreferences()
    {
        return PreferenceManager.getDefaultSharedPreferences(mm.getApplicationContext());
    }

    @DexReplace
    public boolean isLandscapeTouchController()
    {
        return getSharedPreferences().getBoolean(PREF_LANDSCAPE_TOUCH_CONTROLLER, false);
    }

    @DexReplace
    public boolean isPortraitTouchController()
    {
        return getSharedPreferences().getBoolean(PREF_PORTRAIT_TOUCH_CONTROLLER, false);
    }

    @Override
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {

    }

    public void setROMsDIR(String paramString)
    {
        SharedPreferences.Editor localEditor = getSharedPreferences().edit();
        localEditor.putString(PREF_ROMsDIR, paramString);
        localEditor.commit();
    }
}
