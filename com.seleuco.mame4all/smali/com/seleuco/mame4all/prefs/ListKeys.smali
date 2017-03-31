.class public Lcom/seleuco/mame4all/prefs/ListKeys;
.super Landroid/app/ListActivity;
.source "ListKeys.java"


# static fields
.field public static final androidKeysLabels:[Ljava/lang/String;

.field public static final emulatorInputLabels:[Ljava/lang/String;


# instance fields
.field protected emulatorInputIndex:I

.field protected playerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const/16 v0, 0xcc

    new-array v0, v0, [Ljava/lang/String;

    .line 53
    const-string v1, "UNKNOWN"

    aput-object v1, v0, v3

    const-string v1, "SOFT_LEFT"

    aput-object v1, v0, v4

    const-string v1, "SOFT_RIGHT"

    aput-object v1, v0, v5

    const-string v1, "HOME"

    aput-object v1, v0, v6

    const-string v1, "BACK"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "CALL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ENDCALL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 55
    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "STAR"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "POUND"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "DPAD_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 57
    const-string v2, "DPAD_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DPAD_LEFT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "DPAD_RIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DPAD_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "VOLUME_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "VOLUME_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "POWER"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CLEAR"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 59
    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 61
    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 63
    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "COMMA"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "PERIOD"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "ALT_LEFT"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "ALT_RIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "SHIFT_LEFT"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 65
    const-string v2, "SHIFT_RIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "TAB"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "SPACE"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "SYM"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "EXPLORER"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "ENVELOPE"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "ENTER"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "DEL"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "GRAVE"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "MINUS"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 67
    const-string v2, "EQUALS"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "LEFT_BRACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "RIGHT_BRACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "BACKSLASH"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "SEMICOLON"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "APOSTROPHE"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "SLASH"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "NUM"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "HEADSETHOOK"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 69
    const-string v2, "FOCUS"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "PLUS"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "MENU"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "NOTIFICATION"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "SEARCH"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "MEDIA_PLAY_PAUSE"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "MEDIA_STOP"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "MEDIA_NEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "MEDIA_PREVIOUS"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "MEDIA_REWIND"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 71
    const-string v2, "MEDIA_FAST_FORWARD"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "MUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "PAGE_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "PAGE_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "PICTSYMBOLS"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "SWITCH_CHARSET"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "BUTTON_A"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "BUTTON_B"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "BUTTON_C"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "BUTTON_X"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 73
    const-string v2, "BUTTON_Y"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "BUTTON_Z"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "BUTTON_L1"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "BUTTON_R1"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "BUTTON_L2"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "BUTTON_R2"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "BUTTON_THUMBL"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "BUTTON_THUMBR"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "BUTTON_START"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "BUTTON_SELECT"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 75
    const-string v2, "BUTTON_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "ESCAPE"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "FORWARD_DEL"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "CTRL_LEFT"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "CTRL_RIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "CAPS_LOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "SCROLL_LOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "META_LEFT"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "META_RIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "FUNCTION"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 77
    const-string v2, "SYSRQ"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "BREAK"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "MOVE_HOME"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "MOVE_END"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "INSERT"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "FORWARD"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "MEDIA_PLAY"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "MEDIA_PAUSE"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "MEDIA_CLOSE"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 79
    const-string v2, "MEDIA_RECORD"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "F1"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "F2"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "F3"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "F4"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "F5"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "F6"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "F7"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "F8"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "F9"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 81
    const-string v2, "F10"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "F11"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "F12"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "NUM_LOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "NUMPAD_0"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "NUMPAD_1"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "NUMPAD_2"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "NUMPAD_3"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "NUMPAD_4"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "NUMPAD_5"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    .line 83
    const-string v2, "NUMPAD_6"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "NUMPAD_7"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "NUMPAD_8"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "NUMPAD_9"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "NUMPAD_DIVIDE"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "NUMPAD_MULTIPLY"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "NUMPAD_SUBTRACT"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "NUMPAD_ADD"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "NUMPAD_DOT"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "NUMPAD_COMMA"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    .line 85
    const-string v2, "NUMPAD_ENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "NUMPAD_EQUALS"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "NUMPAD_LEFT_PAREN"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "NUMPAD_RIGHT_PAREN"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "VOLUME_MUTE"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "INFO"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "CHANNEL_UP"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "CHANNEL_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "ZOOM_IN"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "ZOOM_OUT"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    .line 87
    const-string v2, "TV"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "WINDOW"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "GUIDE"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "DVR"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "BOOKMARK"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "CAPTIONS"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "SETTINGS"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "TV_POWER"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "TV_INPUT"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "STB_POWER"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    .line 89
    const-string v2, "STB_INPUT"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "AVR_POWER"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "AVR_INPUT"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "PROG_RED"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "PROG_GREEN"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "PROG_YELLOW"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "PROG_BLUE"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "APP_SWITCH"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "BUTTON_1"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "BUTTON_2"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    .line 91
    const-string v2, "BUTTON_3"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "BUTTON_4"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "BUTTON_5"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "BUTTON_6"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "BUTTON_7"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "BUTTON_8"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "BUTTON_9"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "BUTTON_10"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "BUTTON_11"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "BUTTON_12"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    .line 93
    const-string v2, "BUTTON_13"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "BUTTON_14"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "BUTTON_15"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "BUTTON_16"

    aput-object v2, v0, v1

    .line 51
    sput-object v0, Lcom/seleuco/mame4all/prefs/ListKeys;->androidKeysLabels:[Ljava/lang/String;

    .line 97
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 98
    const-string v1, "STICK UP"

    aput-object v1, v0, v3

    .line 99
    const-string v1, "STICK DOWN"

    aput-object v1, v0, v4

    .line 100
    const-string v1, "STICK LEFT"

    aput-object v1, v0, v5

    .line 101
    const-string v1, "STICK RIGHT"

    aput-object v1, v0, v6

    .line 102
    const-string v1, "STICK B"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 103
    const-string v2, "STICK X"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 104
    const-string v2, "STICK A"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 105
    const-string v2, "STICK Y"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 106
    const-string v2, "STICK L1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 107
    const-string v2, "STICK R1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 108
    const-string v2, "STICK SELECT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 109
    const-string v2, "STICK START"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 110
    const-string v2, "EXIT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 111
    const-string v2, "OPTION"

    aput-object v2, v0, v1

    .line 97
    sput-object v0, Lcom/seleuco/mame4all/prefs/ListKeys;->emulatorInputLabels:[Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 114
    iput v0, p0, Lcom/seleuco/mame4all/prefs/ListKeys;->emulatorInputIndex:I

    .line 115
    iput v0, p0, Lcom/seleuco/mame4all/prefs/ListKeys;->playerIndex:I

    .line 49
    return-void
.end method

.method private drawListAdapter()V
    .locals 6

    .prologue
    .line 132
    move-object v5, p0

    .line 134
    .local v5, "context":Landroid/content/Context;
    new-instance v0, Lcom/seleuco/mame4all/prefs/ListKeys$1;

    .line 135
    const v3, 0x1090003

    sget-object v4, Lcom/seleuco/mame4all/prefs/ListKeys;->emulatorInputLabels:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/seleuco/mame4all/prefs/ListKeys$1;-><init>(Lcom/seleuco/mame4all/prefs/ListKeys;Landroid/content/Context;I[Ljava/lang/String;Landroid/content/Context;)V

    .line 143
    .local v0, "keyLabelsAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/ListKeys;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    if-ne p2, v4, :cond_0

    if-nez p1, :cond_0

    .line 157
    const-string v2, "androidKeyCode"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, "androidKeyCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 162
    sget-object v2, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    iget v3, p0, Lcom/seleuco/mame4all/prefs/ListKeys;->playerIndex:I

    sget-object v4, Lcom/seleuco/mame4all/prefs/ListKeys;->emulatorInputLabels:[Ljava/lang/String;

    array-length v4, v4

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/seleuco/mame4all/prefs/ListKeys;->emulatorInputIndex:I

    add-int/2addr v3, v4

    aput v0, v2, v3

    .line 164
    .end local v0    # "androidKeyCode":I
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/seleuco/mame4all/prefs/ListKeys;->drawListAdapter()V

    .line 165
    return-void

    .line 159
    .restart local v0    # "androidKeyCode":I
    .restart local v1    # "i":I
    :cond_1
    sget-object v2, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_2

    .line 160
    sget-object v2, Lcom/seleuco/mame4all/input/InputHandler;->keyMapping:[I

    aput v4, v2, v1

    .line 158
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x4

    .line 119
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/ListKeys;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 124
    invoke-virtual {p0}, Lcom/seleuco/mame4all/prefs/ListKeys;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playerIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/seleuco/mame4all/prefs/ListKeys;->playerIndex:I

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAME4droid Player "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/seleuco/mame4all/prefs/ListKeys;->playerIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/seleuco/mame4all/prefs/ListKeys;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    invoke-direct {p0}, Lcom/seleuco/mame4all/prefs/ListKeys;->drawListAdapter()V

    .line 129
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 148
    iput p3, p0, Lcom/seleuco/mame4all/prefs/ListKeys;->emulatorInputIndex:I

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/seleuco/mame4all/prefs/KeySelect;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v1, "emulatorInputIndex"

    iget v2, p0, Lcom/seleuco/mame4all/prefs/ListKeys;->emulatorInputIndex:I

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 150
    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/seleuco/mame4all/prefs/ListKeys;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    return-void
.end method
