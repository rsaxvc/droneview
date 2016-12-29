.class public Lcom/tutk/IOTC/AVIOCTRLDEFs;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SAvEvent;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SFrameInfo;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsAVIoctrlGetEmailJingMngReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlAVStream;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlDeviceInfoReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlDeviceInfoResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlEvent;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlEventConfig;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlFormatExtStorageReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlFormatExtStorageResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetAudioOutFormatReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetAudioOutFormatResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetEmailReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetEnvironmentReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetEnvironmentResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetMotionDetectReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetMotionDetectResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetRcdDurationReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetRcdDurationResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetRecStateReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetRecStateResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetRecordReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetRecordResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetStreamCtrlReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetStreamCtrlResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetSupportStreamReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetSupportStreamResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempMngReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetVideoModeReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetVideoModeResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetWifiReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetWifiResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListEventReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListEventResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListWifiApReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListWifiApResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlOperationExtStorageReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlOperationExtStorageResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPlayRecord;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPlayRecordResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPtzCmd;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetEnvironmentReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetEnvironmentResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetMotionDetectReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetMotionDetectResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetPasswdReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetPasswdResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetRcdDurationReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetRcdDurationResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetRecordReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetRecordResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetSendEmailReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetStreamCtrlReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetStreamCtrlResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetVideoModeReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetVideoModeResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetWifiReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetWifiResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SQVGetConfigReq;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SQVGetConfigReqResp;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SStreamDef;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;,
        Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;
    }
.end annotation


# static fields
.field public static final AVIOCTRL_AUTO_PAN_LIMIT:I = 0x1c

.field public static final AVIOCTRL_AUTO_PAN_SPEED:I = 0x1b

.field public static final AVIOCTRL_AUTO_PAN_START:I = 0x1d

.field public static final AVIOCTRL_CLEAR_AUX:I = 0x22

.field public static final AVIOCTRL_ENVIRONMENT_INDOOR_50HZ:I = 0x0

.field public static final AVIOCTRL_ENVIRONMENT_INDOOR_60HZ:I = 0x1

.field public static final AVIOCTRL_ENVIRONMENT_NIGHT:I = 0x3

.field public static final AVIOCTRL_ENVIRONMENT_OUTDOOR:I = 0x2

.field public static final AVIOCTRL_EVENT_ALL:I = 0x0

.field public static final AVIOCTRL_EVENT_DOOR_BEEL:I = 0x22

.field public static final AVIOCTRL_EVENT_EXPT_REBOOT:I = 0x10

.field public static final AVIOCTRL_EVENT_HUMALARM:I = 0x20

.field public static final AVIOCTRL_EVENT_IOALARM:I = 0x3

.field public static final AVIOCTRL_EVENT_IOALARMPASS:I = 0x6

.field public static final AVIOCTRL_EVENT_MOTIONDECT:I = 0x1

.field public static final AVIOCTRL_EVENT_MOTIONPASS:I = 0x4

.field public static final AVIOCTRL_EVENT_POWERALARM:I = 0x13

.field public static final AVIOCTRL_EVENT_POWERALARMPASS:I = 0x15

.field public static final AVIOCTRL_EVENT_SDFAULT:I = 0x11

.field public static final AVIOCTRL_EVENT_TEMPALARM:I = 0x21

.field public static final AVIOCTRL_EVENT_VIDEOLOST:I = 0x2

.field public static final AVIOCTRL_EVENT_VIDEORESUME:I = 0x5

.field public static final AVIOCTRL_EVENT_VOICEALARM:I = 0x12

.field public static final AVIOCTRL_EVENT_VOICEALARMPASS:I = 0x14

.field public static final AVIOCTRL_LENS_APERTURE_CLOSE:I = 0x16

.field public static final AVIOCTRL_LENS_APERTURE_OPEN:I = 0x15

.field public static final AVIOCTRL_LENS_FOCAL_FAR:I = 0x1a

.field public static final AVIOCTRL_LENS_FOCAL_NEAR:I = 0x19

.field public static final AVIOCTRL_LENS_ZOOM_IN:I = 0x17

.field public static final AVIOCTRL_LENS_ZOOM_OUT:I = 0x18

.field public static final AVIOCTRL_MOTOR_RESET_POSITION:I = 0x23

.field public static final AVIOCTRL_PATTERN_RUN:I = 0x20

.field public static final AVIOCTRL_PATTERN_START:I = 0x1e

.field public static final AVIOCTRL_PATTERN_STOP:I = 0x1f

.field public static final AVIOCTRL_PTZ_AUTO:I = 0x9

.field public static final AVIOCTRL_PTZ_CLEAR_POINT:I = 0xb

.field public static final AVIOCTRL_PTZ_DOWN:I = 0x2

.field public static final AVIOCTRL_PTZ_FLIP:I = 0x13

.field public static final AVIOCTRL_PTZ_GOTO_POINT:I = 0xc

.field public static final AVIOCTRL_PTZ_LEFT:I = 0x3

.field public static final AVIOCTRL_PTZ_LEFT_DOWN:I = 0x5

.field public static final AVIOCTRL_PTZ_LEFT_UP:I = 0x4

.field public static final AVIOCTRL_PTZ_MENU_ENTER:I = 0x12

.field public static final AVIOCTRL_PTZ_MENU_EXIT:I = 0x11

.field public static final AVIOCTRL_PTZ_MENU_OPEN:I = 0x10

.field public static final AVIOCTRL_PTZ_MODE_RUN:I = 0xf

.field public static final AVIOCTRL_PTZ_RIGHT:I = 0x6

.field public static final AVIOCTRL_PTZ_RIGHT_DOWN:I = 0x8

.field public static final AVIOCTRL_PTZ_RIGHT_UP:I = 0x7

.field public static final AVIOCTRL_PTZ_SET_MODE_START:I = 0xd

.field public static final AVIOCTRL_PTZ_SET_MODE_STOP:I = 0xe

.field public static final AVIOCTRL_PTZ_SET_POINT:I = 0xa

.field public static final AVIOCTRL_PTZ_START:I = 0x14

.field public static final AVIOCTRL_PTZ_STOP:I = 0x0

.field public static final AVIOCTRL_PTZ_UP:I = 0x1

.field public static final AVIOCTRL_QUALITY_HIGH:I = 0x2

.field public static final AVIOCTRL_QUALITY_LOW:I = 0x4

.field public static final AVIOCTRL_QUALITY_MAX:I = 0x1

.field public static final AVIOCTRL_QUALITY_MIDDLE:I = 0x3

.field public static final AVIOCTRL_QUALITY_MIN:I = 0x5

.field public static final AVIOCTRL_QUALITY_UNKNOWN:I = 0x0

.field public static final AVIOCTRL_RECORD_DEL:I = 0x11

.field public static final AVIOCTRL_RECORD_DOWNLOAD:I = 0x12

.field public static final AVIOCTRL_RECORD_PLAY_BACKWARD:I = 0x5

.field public static final AVIOCTRL_RECORD_PLAY_END:I = 0x7

.field public static final AVIOCTRL_RECORD_PLAY_FORWARD:I = 0x4

.field public static final AVIOCTRL_RECORD_PLAY_PAUSE:I = 0x0

.field public static final AVIOCTRL_RECORD_PLAY_SEEKTIME:I = 0x6

.field public static final AVIOCTRL_RECORD_PLAY_START:I = 0x10

.field public static final AVIOCTRL_RECORD_PLAY_STEPBACKWARD:I = 0x3

.field public static final AVIOCTRL_RECORD_PLAY_STEPFORWARD:I = 0x2

.field public static final AVIOCTRL_RECORD_PLAY_STOP:I = 0x1

.field public static final AVIOCTRL_SET_AUX:I = 0x21

.field public static final AVIOCTRL_VIDEOMODE_FLIP:I = 0x1

.field public static final AVIOCTRL_VIDEOMODE_FLIP_MIRROR:I = 0x3

.field public static final AVIOCTRL_VIDEOMODE_MIRROR:I = 0x2

.field public static final AVIOCTRL_VIDEOMODE_NORMAL:I = 0x0

.field public static final AVIOTC_RECORDTYPE_ALAM:I = 0x2

.field public static final AVIOTC_RECORDTYPE_FULLTIME:I = 0x1

.field public static final AVIOTC_RECORDTYPE_MANUAL:I = 0x3

.field public static final AVIOTC_RECORDTYPE_OFF:I = 0x0

.field public static final AVIOTC_WIFIAPENC_INVALID:I = 0x0

.field public static final AVIOTC_WIFIAPENC_NONE:I = 0x1

.field public static final AVIOTC_WIFIAPENC_WEP:I = 0x2

.field public static final AVIOTC_WIFIAPENC_WPA2_AES:I = 0x6

.field public static final AVIOTC_WIFIAPENC_WPA2_TKIP:I = 0x5

.field public static final AVIOTC_WIFIAPENC_WPA_AES:I = 0x4

.field public static final AVIOTC_WIFIAPENC_WPA_TKIP:I = 0x3

.field public static final AVIOTC_WIFIAPMODE_ADHOC:I = 0x0

.field public static final AVIOTC_WIFIAPMODE_MANAGED:I = 0x1

.field public static final IOTYPE_EV_GET_CAPABILITIES_REQ:I = -0xfffb00

.field public static final IOTYPE_EV_GET_CAPABILITIES_RESP:I = -0xfffb00

.field public static final IOTYPE_QV_KEY_FRAME_REQ:I = -0xfffaa0

.field public static final IOTYPE_QV_NET_CLOSE_PIC_CHN_REQ:I = -0xfffad9

.field public static final IOTYPE_QV_NET_CLOSE_PIC_CHN_RESP:I = -0xfffad8

.field public static final IOTYPE_QV_NET_GET_CONFIG_REQ:I = -0xfffafe

.field public static final IOTYPE_QV_NET_GET_CONFIG_RESP:I = -0xfffafd

.field public static final IOTYPE_QV_NET_GET_EMAIL_CONFIG_REQ:I = -0xfffaec

.field public static final IOTYPE_QV_NET_GET_EMAIL_CONFIG_RESP:I = -0xfffaeb

.field public static final IOTYPE_QV_NET_GET_EXT_INFOS_REQ:I = -0xfffaba

.field public static final IOTYPE_QV_NET_GET_EXT_INFOS_RESP:I = -0xfffab9

.field public static final IOTYPE_QV_NET_GET_EXT_THRESHOLDS_REQ:I = -0xfffab6

.field public static final IOTYPE_QV_NET_GET_EXT_THRESHOLDS_RESP:I = -0xfffab5

.field public static final IOTYPE_QV_NET_GET_EXT_VALUES_REQ:I = -0xfffab8

.field public static final IOTYPE_QV_NET_GET_EXT_VALUES_RESP:I = -0xfffab7

.field public static final IOTYPE_QV_NET_GET_MOTION_ACTION_REQ:I = -0xfffae8

.field public static final IOTYPE_QV_NET_GET_MOTION_ACTION_RESP:I = -0xfffae7

.field public static final IOTYPE_QV_NET_GET_PARAMS_CONFIG_REQ:I = -0xfffabe

.field public static final IOTYPE_QV_NET_GET_PARAMS_CONFIG_RESP:I = -0xfffabd

.field public static final IOTYPE_QV_NET_GET_TEMP_ALARM_CONFIG_REQ:I = -0xfffaf0

.field public static final IOTYPE_QV_NET_GET_TEMP_ALARM_CONFIG_RESP:I = -0xfffaef

.field public static final IOTYPE_QV_NET_GET_VOICE_ALARM_CONFIG_REQ:I = -0xfffae4

.field public static final IOTYPE_QV_NET_GET_VOICE_ALARM_CONFIG_RESP:I = -0xfffae3

.field public static final IOTYPE_QV_NET_JM_LOOK_SNAP_RESP:I = -0xfffade

.field public static final IOTYPE_QV_NET_LOOK_SNAP_REQ:I = -0xfffadf

.field public static final IOTYPE_QV_NET_PLAY_AUDIO_REQ:I = -0xfffad7

.field public static final IOTYPE_QV_NET_PLAY_AUDIO_RESP:I = -0xfffad0

.field public static final IOTYPE_QV_NET_PUSH_PIC_REPORT:I = -0xfffae0

.field public static final IOTYPE_QV_NET_SEE_SNAP_LIST_REQ:I = -0xfffaf8

.field public static final IOTYPE_QV_NET_SEE_SNAP_LIST_RESP:I = -0xfffaf7

.field public static final IOTYPE_QV_NET_SEE_SNAP_REQ:I = -0xfffaf6

.field public static final IOTYPE_QV_NET_SEE_SNAP_RESP:I = -0xfffaf5

.field public static final IOTYPE_QV_NET_SET_CONFIG_REQ:I = -0xfffafc

.field public static final IOTYPE_QV_NET_SET_CONFIG_RESP:I = -0xfffafb

.field public static final IOTYPE_QV_NET_SET_EMAIL_CONFIG_REQ:I = -0xfffaee

.field public static final IOTYPE_QV_NET_SET_EMAIL_CONFIG_RESP:I = -0xfffaed

.field public static final IOTYPE_QV_NET_SET_EXT_THRESHOLDS_REQ:I = -0xfffab4

.field public static final IOTYPE_QV_NET_SET_EXT_THRESHOLDS_RESP:I = -0xfffab3

.field public static final IOTYPE_QV_NET_SET_LIGHT_CONFIG_REQ:I = -0xfffadd

.field public static final IOTYPE_QV_NET_SET_LIGHT_CONFIG_RESP:I = -0xfffadc

.field public static final IOTYPE_QV_NET_SET_MOTION_ACTION_REQ:I = -0xfffaea

.field public static final IOTYPE_QV_NET_SET_MOTION_ACTION_RESP:I = -0xfffae9

.field public static final IOTYPE_QV_NET_SET_PARAMS_CONFIG_REQ:I = -0xfffac0

.field public static final IOTYPE_QV_NET_SET_PARAMS_CONFIG_RESP:I = -0xfffabf

.field public static final IOTYPE_QV_NET_SET_TEMP_ALARM_CONFIG_REQ:I = -0xfffaf4

.field public static final IOTYPE_QV_NET_SET_TEMP_ALARM_CONFIG_RESP:I = -0xfffaf3

.field public static final IOTYPE_QV_NET_SET_TIME_CONFIG_REQ:I = -0xfffae2

.field public static final IOTYPE_QV_NET_SET_TIME_CONFIG_RESP:I = -0xfffae1

.field public static final IOTYPE_QV_NET_SET_VOICE_ALARM_CONFIG_REQ:I = -0xfffae6

.field public static final IOTYPE_QV_NET_SET_VOICE_ALARM_CONFIG_RESP:I = -0xfffae5

.field public static final IOTYPE_USER_IPCAM_AUDIOSTART:I = 0x300

.field public static final IOTYPE_USER_IPCAM_AUDIOSTOP:I = 0x301

.field public static final IOTYPE_USER_IPCAM_DEVINFO_REQ:I = 0x330

.field public static final IOTYPE_USER_IPCAM_DEVINFO_RESP:I = 0x331

.field public static final IOTYPE_USER_IPCAM_EVENT_REPORT:I = 0x1fff

.field public static final IOTYPE_USER_IPCAM_FORMATEXTSTORAGE_REQ:I = 0x380

.field public static final IOTYPE_USER_IPCAM_FORMATEXTSTORAGE_RESP:I = 0x381

.field public static final IOTYPE_USER_IPCAM_GETAUDIOOUTFORMAT_REQ:I = 0x32a

.field public static final IOTYPE_USER_IPCAM_GETAUDIOOUTFORMAT_RESP:I = 0x32b

.field public static final IOTYPE_USER_IPCAM_GETMOTIONDETECT_REQ:I = 0x326

.field public static final IOTYPE_USER_IPCAM_GETMOTIONDETECT_RESP:I = 0x327

.field public static final IOTYPE_USER_IPCAM_GETRCD_DURATION_REQ:I = 0x316

.field public static final IOTYPE_USER_IPCAM_GETRCD_DURATION_RESP:I = 0x317

.field public static final IOTYPE_USER_IPCAM_GETRECORD_REQ:I = 0x312

.field public static final IOTYPE_USER_IPCAM_GETRECORD_RESP:I = 0x313

.field public static final IOTYPE_USER_IPCAM_GETSTREAMCTRL_REQ:I = 0x322

.field public static final IOTYPE_USER_IPCAM_GETSTREAMCTRL_RESP:I = 0x323

.field public static final IOTYPE_USER_IPCAM_GETSUPPORTSTREAM_REQ:I = 0x328

.field public static final IOTYPE_USER_IPCAM_GETSUPPORTSTREAM_RESP:I = 0x329

.field public static final IOTYPE_USER_IPCAM_GETWIFI_REQ:I = 0x344

.field public static final IOTYPE_USER_IPCAM_GETWIFI_RESP:I = 0x345

.field public static final IOTYPE_USER_IPCAM_GETWIFI_RESP_2:I = 0x347

.field public static final IOTYPE_USER_IPCAM_GET_ENVIRONMENT_REQ:I = 0x362

.field public static final IOTYPE_USER_IPCAM_GET_ENVIRONMENT_RESP:I = 0x363

.field public static final IOTYPE_USER_IPCAM_GET_EVENTCONFIG_REQ:I = 0x400

.field public static final IOTYPE_USER_IPCAM_GET_EVENTCONFIG_RESP:I = 0x401

.field public static final IOTYPE_USER_IPCAM_GET_IRCUT_EBABLE_REQ:I = -0xfffaca

.field public static final IOTYPE_USER_IPCAM_GET_IRCUT_EBABLE_RESP:I = -0xfffac9

.field public static final IOTYPE_USER_IPCAM_GET_TIMEZONE_REQ:I = 0x3a0

.field public static final IOTYPE_USER_IPCAM_GET_TIMEZONE_RESP:I = 0x3a1

.field public static final IOTYPE_USER_IPCAM_GET_VIDEOMODE_REQ:I = 0x372

.field public static final IOTYPE_USER_IPCAM_GET_VIDEOMODE_RESP:I = 0x373

.field public static final IOTYPE_USER_IPCAM_IRCUT_EBABLE_REQ:I = -0xfffacc

.field public static final IOTYPE_USER_IPCAM_IRCUT_EBABLE_RESP:I = -0xfffacb

.field public static final IOTYPE_USER_IPCAM_LISTEVENT_REQ:I = 0x318

.field public static final IOTYPE_USER_IPCAM_LISTEVENT_RESP:I = 0x319

.field public static final IOTYPE_USER_IPCAM_LISTWIFIAP_REQ:I = 0x340

.field public static final IOTYPE_USER_IPCAM_LISTWIFIAP_RESP:I = 0x341

.field public static final IOTYPE_USER_IPCAM_PTZ_COMMAND:I = 0x1001

.field public static final IOTYPE_USER_IPCAM_RECORD_PLAYCONTROL:I = 0x31a

.field public static final IOTYPE_USER_IPCAM_RECORD_PLAYCONTROL_RESP:I = 0x31b

.field public static final IOTYPE_USER_IPCAM_SETMOTIONDETECT_REQ:I = 0x324

.field public static final IOTYPE_USER_IPCAM_SETMOTIONDETECT_RESP:I = 0x325

.field public static final IOTYPE_USER_IPCAM_SETPASSWORD_REQ:I = 0x332

.field public static final IOTYPE_USER_IPCAM_SETPASSWORD_RESP:I = 0x333

.field public static final IOTYPE_USER_IPCAM_SETRCD_DURATION_REQ:I = 0x314

.field public static final IOTYPE_USER_IPCAM_SETRCD_DURATION_RESP:I = 0x315

.field public static final IOTYPE_USER_IPCAM_SETRECORD_REQ:I = 0x310

.field public static final IOTYPE_USER_IPCAM_SETRECORD_RESP:I = 0x311

.field public static final IOTYPE_USER_IPCAM_SETSTREAMCTRL_REQ:I = 0x320

.field public static final IOTYPE_USER_IPCAM_SETSTREAMCTRL_RESP:I = 0x321

.field public static final IOTYPE_USER_IPCAM_SETWIFI_REQ:I = 0x342

.field public static final IOTYPE_USER_IPCAM_SETWIFI_REQ_2:I = 0x346

.field public static final IOTYPE_USER_IPCAM_SETWIFI_RESP:I = 0x343

.field public static final IOTYPE_USER_IPCAM_SET_ENVIRONMENT_REQ:I = 0x360

.field public static final IOTYPE_USER_IPCAM_SET_ENVIRONMENT_RESP:I = 0x361

.field public static final IOTYPE_USER_IPCAM_SET_EVENTCONFIG_REQ:I = 0x402

.field public static final IOTYPE_USER_IPCAM_SET_EVENTCONFIG_RESP:I = 0x403

.field public static final IOTYPE_USER_IPCAM_SET_TIMEZONE_REQ:I = 0x3b0

.field public static final IOTYPE_USER_IPCAM_SET_TIMEZONE_RESP:I = 0x3b1

.field public static final IOTYPE_USER_IPCAM_SET_VIDEOMODE_REQ:I = 0x370

.field public static final IOTYPE_USER_IPCAM_SET_VIDEOMODE_RESP:I = 0x371

.field public static final IOTYPE_USER_IPCAM_SPEAKERSTART:I = 0x350

.field public static final IOTYPE_USER_IPCAM_SPEAKERSTART_RESP:I = -0xffface

.field public static final IOTYPE_USER_IPCAM_SPEAKERSTOP:I = 0x351

.field public static final IOTYPE_USER_IPCAM_START:I = 0x1ff

.field public static final IOTYPE_USER_IPCAM_STOP:I = 0x2ff

.field public static final QV_CMD_GET_DISK_MNG:I = 0x10000015

.field public static final QV_CMD_GET_REC_STATE:I = 0x10000012

.field public static final QV_CMD_GET_TEMP_POWER:I = 0x10000201

.field public static final QV_CMD_OPERATE_SD:I = 0x200

.field public static final QV_CMD_SET_DISK_MNG:I = 0x11b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
