.class public interface abstract Lcom/easyview/basecamera/ICamera;
.super Ljava/lang/Object;
.source "ICamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/basecamera/ICamera$IAlarmListener;,
        Lcom/easyview/basecamera/ICamera$IAlarmParamListener;,
        Lcom/easyview/basecamera/ICamera$IDataListener;,
        Lcom/easyview/basecamera/ICamera$IDownloadListener;,
        Lcom/easyview/basecamera/ICamera$IRespondListener;,
        Lcom/easyview/basecamera/ICamera$IWifiParamListener;,
        Lcom/easyview/basecamera/ICamera$IWifiScanListener;,
        Lcom/easyview/basecamera/ICamera$IYUVDataListener;
    }
.end annotation


# virtual methods
.method public abstract RequestParams(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract Start()V
.end method

.method public abstract StartAudio()V
.end method

.method public abstract StartTalk()V
.end method

.method public abstract StartVideo(Lcom/easyview/basecamera/ICamera$IDataListener;)V
.end method

.method public abstract StartVideoYUV(Lcom/easyview/basecamera/ICamera$IYUVDataListener;)V
.end method

.method public abstract Stop()V
.end method

.method public abstract StopAudio()V
.end method

.method public abstract StopTalk()V
.end method

.method public abstract StopVideo()V
.end method

.method public abstract TalkAudioData([BI)V
.end method

.method public abstract clearListener()V
.end method

.method public abstract delEvents([ILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract downRecord(IILcom/easyview/basecamera/ICamera$IDownloadListener;)V
.end method

.method public abstract enablePairing(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract formatTF(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract getAlarmParam(Lcom/easyview/basecamera/ICamera$IAlarmParamListener;)V
.end method

.method public abstract getBrightness()I
.end method

.method public abstract getCaps(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract getContrast()I
.end method

.method public abstract getDefaultWiFiName()Ljava/lang/String;
.end method

.method public abstract getExtThres(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract getMailParam(Lcom/easyview/bean/MailBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract getRotate()I
.end method

.method public abstract getShowOSD()I
.end method

.method public abstract getStoreParam(Lcom/easyview/bean/SdcardBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract getTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract getWiFiName()Ljava/lang/String;
.end method

.method public abstract getWifiParam(Lcom/easyview/bean/WifiBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract isOnline()Z
.end method

.method public abstract playMusic(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract ptzControl(I)V
.end method

.method public abstract queryDeviceInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract queryEvent(ILjava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract queryEventInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract queryEventList(IILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract queryLightValue(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract queryWifiResult(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract recordPlay(Ljava/lang/String;)V
.end method

.method public abstract recordStop()V
.end method

.method public abstract searchEvents(IILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract searchRecordList(JJLcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract searchRecords(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setAlarmParam(Lcom/easyview/bean/AlermBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setBrightness(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setContrast(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setCustomListener(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setExtThres(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setLanguage(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setLightValue(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setMailParam(Lcom/easyview/bean/MailBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setPassword(Ljava/lang/String;Ljava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setResolution(I)V
.end method

.method public abstract setRotate(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setRssi(I)V
.end method

.method public abstract setSensor(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setShowOSD(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setStoreParam(Lcom/easyview/bean/SdcardBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setVideoQuality(I)V
.end method

.method public abstract setWiFiName(Ljava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract setWifiParam(Lcom/easyview/bean/WifiBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract snapShot(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract startRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract stopDownRecord(Lcom/easyview/basecamera/ICamera$IDownloadListener;)V
.end method

.method public abstract stopMusic(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract stopRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract timing()V
.end method

.method public abstract upgradeCheck(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract upgradeDevice(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
.end method

.method public abstract wifiScan(Lcom/easyview/basecamera/ICamera$IWifiScanListener;)V
.end method
