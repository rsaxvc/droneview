.class public Lobject/p2pipcam/utils/Pub;
.super Ljava/lang/Object;
.source "Pub.java"


# static fields
.field private static _appType:I

.field private static _auto_run:I

.field private static _context:Landroid/content/Context;

.field private static _isReverseLandscape:Z

.field private static _mapEventRes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static _mapEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _save_log_file:Z

.field private static _set_wifi:I

.field private static _set_wifi_id:Ljava/lang/String;

.field private static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    .line 66
    sput v1, Lobject/p2pipcam/utils/Pub;->_appType:I

    .line 212
    sput-boolean v1, Lobject/p2pipcam/utils/Pub;->_save_log_file:Z

    .line 392
    sput v1, Lobject/p2pipcam/utils/Pub;->_auto_run:I

    .line 402
    sput v1, Lobject/p2pipcam/utils/Pub;->_set_wifi:I

    .line 403
    const-string v0, ""

    sput-object v0, Lobject/p2pipcam/utils/Pub;->_set_wifi_id:Ljava/lang/String;

    .line 664
    sput-boolean v1, Lobject/p2pipcam/utils/Pub;->_isReverseLandscape:Z

    .line 873
    sput-boolean v1, Lobject/p2pipcam/utils/Pub;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DisturbUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 309
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "XXXXX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static OpenLockScreen(Ljava/lang/String;II)Z
    .locals 8
    .param p0, "did"    # Ljava/lang/String;
    .param p1, "alarmNum"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 767
    sget-object v5, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const-string v6, "isFirst"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 768
    .local v2, "preference":Landroid/content/SharedPreferences;
    const-string v5, "activity"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 770
    .local v0, "activity":Ljava/lang/Boolean;
    const-string v5, "BridgeService"

    const-string v6, "callBack_AlarmNotify did:==========11111111111111111111111111111111111111"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v5, "BridgeService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "activity  ==="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 787
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 788
    .local v1, "in":Landroid/content/Intent;
    const/16 v4, 0x22

    if-ne p2, v4, :cond_1

    .line 792
    sget-object v4, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const-class v5, Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 800
    :cond_0
    :goto_0
    const-string v4, "camera_type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 802
    const-string v4, "stream_type"

    .line 803
    const/4 v5, 0x3

    .line 802
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 804
    const-string v4, "camera_name"

    const-string v5, "IPCAM"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    const-string v4, "cameraid"

    invoke-virtual {v1, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    const-string v4, "camera_user"

    const-string v5, "admin"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    const-string v4, "camera_pwd"

    const-string v5, "admin"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const-string v4, "camera_type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    const-string v4, "play_type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 810
    const-string v4, "play_mode"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 811
    const/high16 v4, 0x10040000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 812
    sget-object v4, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 816
    .end local v1    # "in":Landroid/content/Intent;
    :goto_1
    return v3

    .line 795
    .restart local v1    # "in":Landroid/content/Intent;
    :cond_1
    const/16 v4, 0x28

    if-ne p2, v4, :cond_0

    .line 798
    sget-object v4, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const-class v5, Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .end local v1    # "in":Landroid/content/Intent;
    :cond_2
    move v3, v4

    .line 816
    goto :goto_1
.end method

.method public static byte2int([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "start"    # I

    .prologue
    .line 314
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static byte2short([BI)S
    .locals 3
    .param p0, "b"    # [B
    .param p1, "start"    # I

    .prologue
    .line 318
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 319
    .local v0, "val":I
    int-to-short v1, v0

    return v1
.end method

.method public static getAcceptLicense(Landroid/content/Context;)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 248
    const-string v2, "system"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 249
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "accept_license"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 250
    .local v1, "val":I
    return v1
.end method

.method public static getAutoRun(Landroid/content/Context;)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 235
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 236
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "auto_run"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 237
    .local v1, "val":I
    return v1
.end method

.method public static getAviTrackCount(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 694
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 696
    .local v1, "extractor":Landroid/media/MediaExtractor;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    return v2

    .line 697
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCallTime(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 266
    const-string v3, "system"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 267
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string v3, "CallTime_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 269
    .local v2, "val":I
    return v2
.end method

.method public static getCameraUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 139
    const-string v1, "camera_info"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v1, "camera_user"

    const-string v2, "admin"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDIDNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "did"    # Ljava/lang/String;

    .prologue
    .line 436
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "s":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 439
    const/4 v1, 0x1

    aget-object p0, v0, v1

    .line 441
    .end local p0    # "did":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getDebug()Z
    .locals 1

    .prologue
    .line 880
    sget-boolean v0, Lobject/p2pipcam/utils/Pub;->isDebug:Z

    return v0
.end method

.method public static getDeviceState(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 281
    const-string v2, "device"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 283
    .local v1, "val":I
    return v1
.end method

.method public static getEventRes(I)I
    .locals 2
    .param p0, "eventType"    # I

    .prologue
    .line 389
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getEventText(II)Ljava/lang/String;
    .locals 7
    .param p0, "eventType"    # I
    .param p1, "val"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 360
    sget-object v1, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    sget-object v1, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 363
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_1

    .line 365
    sparse-switch p0, :sswitch_data_0

    .line 373
    :cond_1
    :goto_0
    return-object v0

    .line 367
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(%d.%dRH)"

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    rem-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 369
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(%d.%d\u2103)"

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    rem-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 370
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(%d.%dV)"

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    rem-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 365
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x20 -> :sswitch_0
        0x21 -> :sswitch_1
        0x27 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getEventText()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    return-object v0
.end method

.method public static getEventTypeText(I)Ljava/lang/String;
    .locals 2
    .param p0, "eventType"    # I

    .prologue
    .line 355
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPackageIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "apkName"    # Ljava/lang/String;

    .prologue
    .line 676
    sget-object v4, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 678
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 679
    .local v3, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 688
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 681
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v1, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 682
    .local v1, "name":Ljava/lang/String;
    const-string v4, "pub"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "package:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 685
    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_1

    .line 679
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSaveLogFile()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 215
    sget-object v2, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const-string v3, "system"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "save_log"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 217
    .local v1, "val":Z
    return v1
.end method

.method public static getSaveLogFile(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 221
    const-string v2, "system"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 222
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "save_log"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 223
    .local v1, "val":Z
    return v1
.end method

.method public static getSavePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "rid"    # I

    .prologue
    .line 421
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 422
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWifi(Ljava/lang/String;)I
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 411
    sget-object v2, Lobject/p2pipcam/utils/Pub;->_set_wifi_id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    sget v0, Lobject/p2pipcam/utils/Pub;->_set_wifi:I

    .line 414
    .local v0, "result":I
    sput v1, Lobject/p2pipcam/utils/Pub;->_set_wifi:I

    .line 417
    .end local v0    # "result":I
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getXGToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 295
    const-string v1, "XG_PUSH"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 296
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v1, "TOKEN"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static get_ao_continue_thred(Landroid/content/Context;)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 159
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "output_volume_limit"

    const/16 v3, 0x7d0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 161
    .local v1, "val":I
    const v2, 0xc350

    if-gt v1, v2, :cond_0

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    :cond_0
    const/16 v1, 0x7d0

    .line 162
    :cond_1
    return v1
.end method

.method public static get_ao_start_thred(Landroid/content/Context;)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 145
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "input_volume_limit"

    const/16 v3, 0x1770

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 147
    .local v1, "val":I
    const v2, 0xc350

    if-gt v1, v2, :cond_0

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    :cond_0
    const/16 v1, 0x1770

    .line 148
    :cond_1
    return v1
.end method

.method public static get_auto_run()I
    .locals 1

    .prologue
    .line 399
    sget v0, Lobject/p2pipcam/utils/Pub;->_auto_run:I

    return v0
.end method

.method public static get_event_max_count(Landroid/content/Context;)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 186
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "event_max_count"

    const/16 v3, 0xc8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 188
    .local v1, "val":I
    return v1
.end method

.method public static get_event_notification(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 200
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "event_notification"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 202
    .local v1, "val":Z
    return v1
.end method

.method public static get_event_reserve_days(Landroid/content/Context;)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 173
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "event_reserve_days"

    const/16 v3, 0x1e

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, "val":I
    return v1
.end method

.method public static get_p2p_sn(Lcom/easyview/basecamera/BaseCamera;)I
    .locals 5
    .param p0, "camera"    # Lcom/easyview/basecamera/BaseCamera;

    .prologue
    const/4 v2, 0x1

    .line 426
    invoke-virtual {p0}, Lcom/easyview/basecamera/BaseCamera;->getID()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "p2p":Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "s":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 430
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 432
    :cond_0
    return v2
.end method

.method public static initEventTypeRes(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 377
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02006e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020071

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    const/16 v1, 0x202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020070

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    const/16 v1, 0x102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02006f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02006c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventRes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static initEventTypeText(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 330
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060152

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060153

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060158

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060159

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f06015a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060154

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f06015b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f06015c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f06015d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f06015e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060160

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060161

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f06015f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060162

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060163

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lobject/p2pipcam/utils/Pub;->_mapEventType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static isAppOnForeground(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "packageName":Ljava/lang/String;
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 85
    .local v2, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v4

    .line 87
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 88
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    .line 90
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isBell()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 104
    sget v1, Lobject/p2pipcam/utils/Pub;->_appType:I

    if-ne v1, v0, :cond_0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBell(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 97
    const v2, 0x7f060002

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "appType":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lobject/p2pipcam/utils/Pub;->_appType:I

    .line 99
    sget v2, Lobject/p2pipcam/utils/Pub;->_appType:I

    if-ne v2, v1, :cond_0

    .line 100
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDeviceWifiAp()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 753
    new-instance v3, Lcom/easyview/common/WifiUtils;

    sget-object v5, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/easyview/common/WifiUtils;-><init>(Landroid/content/Context;)V

    .line 754
    .local v3, "wifiUtils":Lcom/easyview/common/WifiUtils;
    invoke-virtual {v3}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "ssid":Ljava/lang/String;
    sget-object v5, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 756
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v5, 0x7f0a0000

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_0

    .line 763
    :goto_1
    return v4

    .line 756
    :cond_0
    aget-object v0, v6, v5

    .line 758
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 760
    const/4 v4, 0x1

    goto :goto_1

    .line 756
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static isDrone()Z
    .locals 2

    .prologue
    .line 116
    sget v0, Lobject/p2pipcam/utils/Pub;->_appType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrone(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 109
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "appType":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lobject/p2pipcam/utils/Pub;->_appType:I

    .line 111
    sget v1, Lobject/p2pipcam/utils/Pub;->_appType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNeedAppBackgroud()Z
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method public static isNeedLowFlow()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 850
    sget-boolean v3, Lobject/p2pipcam/utils/Pub;->isDebug:Z

    if-nez v3, :cond_1

    .line 852
    sget-object v3, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    invoke-static {v3}, Lcom/easyview/common/WifiUtils;->checkWifiConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 862
    .local v0, "bd":Landroid/os/Build;
    .local v1, "model":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 854
    .end local v0    # "bd":Landroid/os/Build;
    .end local v1    # "model":Ljava/lang/String;
    :cond_1
    sget-object v3, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    invoke-static {v3}, Lobject/p2pipcam/utils/Pub;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 856
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 858
    :cond_2
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    .line 859
    .restart local v0    # "bd":Landroid/os/Build;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 862
    .restart local v1    # "model":Ljava/lang/String;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isReverseLandscape()Z
    .locals 1

    .prologue
    .line 667
    sget-boolean v0, Lobject/p2pipcam/utils/Pub;->_isReverseLandscape:Z

    return v0
.end method

.method private static isScreenOn()Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 822
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x14

    if-lt v5, v6, :cond_2

    .line 828
    sget-object v5, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const-string v6, "display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 829
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_1

    move v3, v4

    .line 843
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .local v2, "powerManager":Landroid/os/PowerManager;
    :cond_0
    :goto_1
    return v3

    .line 829
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    .restart local v1    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_1
    aget-object v0, v6, v5

    .line 830
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 831
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v8

    if-eqz v8, :cond_0

    .line 829
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 839
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_2
    sget-object v5, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 840
    .restart local v2    # "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 843
    goto :goto_1
.end method

.method public static isSupportApm()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportBiVoice()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportExt()Z
    .locals 2

    .prologue
    .line 121
    sget v0, Lobject/p2pipcam/utils/Pub;->_appType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportMediaCodecHardDecoder()Z
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 705
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    .line 706
    .local v0, "bd":Landroid/os/Build;
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 707
    .local v7, "model":Ljava/lang/String;
    const-string v11, "pub"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "model:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v11, "SM-G5309W"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v6

    .line 709
    :cond_1
    const-string v11, "Coolpad 8297W"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 710
    const/4 v6, 0x0

    .line 712
    .local v6, "isHardcode":Z
    new-instance v3, Ljava/io/File;

    const-string v11, "/system/etc/media_codecs.xml"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 715
    .local v4, "inFile":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4    # "inFile":Ljava/io/InputStream;
    .local v5, "inFile":Ljava/io/InputStream;
    move-object v4, v5

    .line 720
    .end local v5    # "inFile":Ljava/io/InputStream;
    .restart local v4    # "inFile":Ljava/io/InputStream;
    :goto_1
    if-eqz v4, :cond_0

    .line 723
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    .line 724
    .local v8, "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 725
    .local v10, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v11, "UTF-8"

    invoke-interface {v10, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 726
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 727
    .local v2, "eventType":I
    :goto_2
    const/4 v11, 0x1

    if-eq v2, v11, :cond_0

    .line 728
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 729
    .local v9, "tagName":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 743
    :cond_2
    :goto_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_2

    .line 731
    :pswitch_0
    const-string v11, "MediaCodec"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 732
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, "componentName":Ljava/lang/String;
    const-string v11, "OMX."

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 736
    const-string v11, "OMX.google."

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-nez v11, :cond_2

    .line 738
    const/4 v6, 0x1

    goto :goto_3

    .line 745
    .end local v1    # "componentName":Ljava/lang/String;
    .end local v2    # "eventType":I
    .end local v8    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v11

    goto :goto_0

    .line 716
    :catch_1
    move-exception v11

    goto :goto_1

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static load(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 70
    sput-object p0, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    .line 71
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "appType":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lobject/p2pipcam/utils/Pub;->_appType:I

    .line 73
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->initEventTypeText(Landroid/content/Context;)I

    .line 74
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->initEventTypeRes(Landroid/content/Context;)I

    .line 75
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lobject/p2pipcam/utils/Pub;->setAutoRun(Landroid/content/Context;I)V

    .line 76
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;IIIII)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "event_index"    # I
    .param p3, "event_type"    # I
    .param p4, "event_value"    # I
    .param p5, "event_time"    # I
    .param p6, "file_id"    # I

    .prologue
    .line 512
    invoke-static {p0, p1}, Lobject/p2pipcam/utils/DataBaseHelper;->getCamera(Landroid/content/Context;Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v7

    .line 513
    .local v7, "camera":Lcom/easyview/basecamera/BaseCamera;
    if-eqz v7, :cond_4

    .line 515
    if-ltz p2, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p6

    move v3, p2

    move v4, p3

    move v5, p5

    move v6, p4

    .line 517
    invoke-static/range {v0 .. v6}, Lobject/p2pipcam/utils/DataBaseHelper;->SaveEvent(Landroid/content/Context;Ljava/lang/String;IIIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 519
    const-string v0, "Pub"

    const-string v1, "onEvent,have event"

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->load(Landroid/content/Context;)V

    .line 524
    const/16 v0, 0x22

    if-eq p3, v0, :cond_2

    const/16 v0, 0x28

    if-ne p3, v0, :cond_3

    .line 526
    :cond_2
    invoke-static {p0, p1}, Lobject/p2pipcam/utils/Pub;->getCallTime(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, p5, :cond_0

    .line 528
    const-string v0, "Pub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenLockScreen:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {p0, p1, p5}, Lobject/p2pipcam/utils/Pub;->setCallTime(Landroid/content/Context;Ljava/lang/String;I)V

    .line 530
    const/4 v0, 0x0

    invoke-static {p1, v0, p3}, Lobject/p2pipcam/utils/Pub;->OpenLockScreen(Ljava/lang/String;II)Z

    goto :goto_0

    .line 534
    :cond_3
    invoke-static {p0, v7, p3, p4, p5}, Lobject/p2pipcam/utils/Pub;->showNotification(Landroid/content/Context;Lcom/easyview/basecamera/BaseCamera;III)I

    goto :goto_0

    .line 539
    :cond_4
    const-string v0, "Pub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEvent,not find camera:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static photoSavePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 617
    const-string v0, "ipcamera/picture"

    .line 618
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Photos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    const-string v0, "DroneView/Photo"

    .line 623
    return-object v0
.end method

.method public static photoSavePathFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 627
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->photoSavePath()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 629
    .local v0, "div":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 632
    :cond_0
    return-object v0
.end method

.method public static recordPathFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 649
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->getSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Records"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .local v0, "div":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 653
    :cond_0
    return-object v0
.end method

.method public static recordPathName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 657
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->getSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Records"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .local v0, "div":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 659
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 661
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".avi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setAcceptLicense(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "val"    # I

    .prologue
    .line 241
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 242
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "accept_license"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    return-void
.end method

.method public static setAutoRun(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "val"    # I

    .prologue
    .line 301
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 302
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 303
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "auto_run"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    return-void
.end method

.method public static setCallTime(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "time"    # I

    .prologue
    const/4 v5, 0x0

    .line 258
    const-string v3, "system"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 259
    .local v2, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 260
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "CallTime_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "val"    # Z

    .prologue
    .line 876
    sput-boolean p0, Lobject/p2pipcam/utils/Pub;->isDebug:Z

    .line 877
    return-void
.end method

.method public static setDeviceState(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 274
    const-string v2, "device"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 275
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 276
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    return-void
.end method

.method public static setReverseLandscape(Z)V
    .locals 0
    .param p0, "val"    # Z

    .prologue
    .line 671
    sput-boolean p0, Lobject/p2pipcam/utils/Pub;->_isReverseLandscape:Z

    .line 672
    return-void
.end method

.method public static setSaveLogFile(Z)V
    .locals 5
    .param p0, "val"    # Z

    .prologue
    .line 227
    sget-object v2, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const-string v3, "system"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 228
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "save_log"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    return-void
.end method

.method public static setWifi(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 406
    sput-object p0, Lobject/p2pipcam/utils/Pub;->_set_wifi_id:Ljava/lang/String;

    .line 407
    const/4 v0, 0x1

    sput v0, Lobject/p2pipcam/utils/Pub;->_set_wifi:I

    .line 408
    return-void
.end method

.method public static setXGToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v2, "XG_PUSH"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 289
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 290
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "TOKEN"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    return-void
.end method

.method public static set_ao_continue_thred(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "val"    # I

    .prologue
    .line 166
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 167
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "output_volume_limit"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method

.method public static set_ao_start_thred(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "val"    # I

    .prologue
    .line 152
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "input_volume_limit"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    return-void
.end method

.method public static set_auto_run()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    sput v0, Lobject/p2pipcam/utils/Pub;->_auto_run:I

    .line 396
    return-void
.end method

.method public static set_event_event_notification(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "val"    # Z

    .prologue
    .line 206
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 207
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "event_notification"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method

.method public static set_event_max_count(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "val"    # I

    .prologue
    .line 192
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 193
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "event_max_count"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    return-void
.end method

.method public static set_event_reserve_days(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "val"    # I

    .prologue
    .line 179
    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 180
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "event_reserve_days"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    return-void
.end method

.method public static short2byte(S[BI)V
    .locals 2
    .param p0, "val"    # S
    .param p1, "b"    # [B
    .param p2, "start"    # I

    .prologue
    .line 323
    add-int/lit8 v0, p2, 0x0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 324
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 325
    return-void
.end method

.method public static showNotification(Landroid/content/Context;Lcom/easyview/basecamera/BaseCamera;III)I
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "camera"    # Lcom/easyview/basecamera/BaseCamera;
    .param p2, "event_type"    # I
    .param p3, "event_value"    # I
    .param p4, "event_time"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 446
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 447
    .local v5, "date":Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 448
    .local v6, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 450
    .local v14, "strDate":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/basecamera/BaseCamera;->getName()Ljava/lang/String;

    move-result-object v15

    .line 451
    .local v15, "title":Ljava/lang/String;
    invoke-static/range {p2 .. p3}, Lobject/p2pipcam/utils/Pub;->getEventText(II)Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "content":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lobject/p2pipcam/utils/Pub;->get_p2p_sn(Lcom/easyview/basecamera/BaseCamera;)I

    move-result v17

    add-int/lit8 v9, v17, 0x1

    .line 453
    .local v9, "id":I
    const/4 v7, 0x1

    .line 454
    .local v7, "haveSound":Z
    const v8, 0x7f020010

    .line 455
    .local v8, "icon":I
    new-instance v10, Landroid/content/Intent;

    const-class v17, Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .local v10, "intent":Landroid/content/Intent;
    const/16 v17, 0x22

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v17, 0x28

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 458
    :cond_0
    const-class v17, Lobject/p2pwificam/clientActivity/CallVideoActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 459
    move/from16 v9, p4

    .line 460
    const v8, 0x7f020038

    .line 461
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 462
    const/4 v7, 0x0

    .line 464
    :cond_1
    const v17, 0x8000

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 466
    const-class v17, Lobject/p2pwificam/clientActivity/StartActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 467
    invoke-static/range {p1 .. p1}, Lobject/p2pipcam/utils/Pub;->get_p2p_sn(Lcom/easyview/basecamera/BaseCamera;)I

    move-result v9

    .line 468
    const v8, 0x7f0200eb

    .line 469
    new-instance v17, Ljava/lang/StringBuilder;

    const v18, 0x7f060020

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    add-int/lit16 v0, v0, -0x8000

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/Pub;->getEventText(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 470
    const/4 v7, 0x0

    .line 472
    :cond_2
    const-string v17, "cameraid"

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/basecamera/BaseCamera;->getID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const/high16 v17, 0x14000000

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 475
    const/16 v17, 0x0

    const/high16 v18, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 476
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v16, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f03003d

    invoke-direct/range {v16 .. v18}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 477
    .local v16, "views":Landroid/widget/RemoteViews;
    const v17, 0x7f080177

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 478
    const v17, 0x7f080178

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 479
    const v17, 0x7f080176

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 480
    const v17, 0x7f080179

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 482
    const-string v17, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 484
    .local v11, "nm":Landroid/app/NotificationManager;
    new-instance v17, Landroid/app/Notification$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 485
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v17

    .line 486
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v17

    .line 487
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 491
    .local v3, "builder":Landroid/app/Notification$Builder;
    if-eqz v7, :cond_3

    .line 493
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 496
    :cond_3
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 497
    .local v12, "noti":Landroid/app/Notification;
    if-nez v7, :cond_4

    const v17, 0x8000

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 498
    :cond_4
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x10

    move/from16 v0, v17

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 506
    :cond_5
    const-string v17, "Pub"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "notify:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {v11, v9, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 508
    return v9
.end method

.method public static showNotification1(Lcom/easyview/basecamera/BaseCamera;Lcom/easyview/struct/EVCommandDefs$Event;)V
    .locals 14
    .param p0, "camera"    # Lcom/easyview/basecamera/BaseCamera;
    .param p1, "event"    # Lcom/easyview/struct/EVCommandDefs$Event;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v13, 0x7f020010

    .line 547
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 548
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 549
    .local v2, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 551
    .local v7, "strDate":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/easyview/basecamera/BaseCamera;->getName()Ljava/lang/String;

    move-result-object v8

    .line 552
    .local v8, "title":Ljava/lang/String;
    iget-short v10, p1, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    iget v11, p1, Lcom/easyview/struct/EVCommandDefs$Event;->value:I

    invoke-static {v10, v11}, Lobject/p2pipcam/utils/Pub;->getEventText(II)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "content":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    sget-object v10, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const-class v11, Lobject/p2pwificam/clientActivity/EventDetailActivity;

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 555
    .local v3, "intent":Landroid/content/Intent;
    const-string v10, "cameraid"

    invoke-virtual {p0}, Lcom/easyview/basecamera/BaseCamera;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const/high16 v10, 0x14000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 558
    sget-object v10, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x8000000

    invoke-static {v10, v11, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 559
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/widget/RemoteViews;

    sget-object v10, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f03003d

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 560
    .local v9, "views":Landroid/widget/RemoteViews;
    const v10, 0x7f080177

    invoke-virtual {v9, v10, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 561
    const v10, 0x7f080178

    invoke-virtual {v9, v10, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 562
    const v10, 0x7f080176

    invoke-virtual {v9, v10, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 563
    const v10, 0x7f080179

    invoke-virtual {v9, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 565
    sget-object v10, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 567
    .local v4, "nm":Landroid/app/NotificationManager;
    new-instance v10, Landroid/app/Notification$Builder;

    sget-object v11, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 568
    invoke-virtual {v10, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 569
    invoke-virtual {v10, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 570
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 571
    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 572
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 573
    .local v5, "noti":Landroid/app/Notification;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "android.resource://"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f050002

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 574
    iget v10, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v5, Landroid/app/Notification;->flags:I

    .line 575
    const/4 v10, 0x1

    invoke-virtual {v4, v10, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 576
    return-void
.end method

.method public static snapPathFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 640
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->getSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Snaps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .local v0, "div":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 642
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 644
    :cond_0
    return-object v0
.end method

.method public static videoFileLength(Ljava/lang/String;)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 578
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->videoSavePathFile()Ljava/io/File;

    move-result-object v0

    .line 579
    .local v0, "div":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 593
    :goto_0
    return v3

    .line 582
    :cond_0
    const/4 v3, 0x0

    .line 584
    .local v3, "len":I
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 587
    goto :goto_0

    .line 589
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    long-to-int v3, v4

    goto :goto_0

    .line 590
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v3, v4

    .line 591
    goto :goto_0
.end method

.method public static videoSavePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 598
    const-string v0, "ipcamera/video"

    .line 599
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lobject/p2pipcam/utils/Pub;->_context:Landroid/content/Context;

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Videos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    const-string v0, "DroneView/Video"

    .line 604
    return-object v0
.end method

.method public static videoSavePathFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 608
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->videoSavePath()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 610
    .local v0, "div":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 611
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 613
    :cond_0
    return-object v0
.end method
