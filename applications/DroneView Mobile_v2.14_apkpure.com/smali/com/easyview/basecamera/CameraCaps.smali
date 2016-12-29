.class public Lcom/easyview/basecamera/CameraCaps;
.super Ljava/lang/Object;
.source "CameraCaps.java"


# static fields
.field private static final EV_CAP_BABYCAM_INFO:B = 0x2t

.field private static final EV_CAP_BIVOICE:B = 0x4t

.field private static final EV_CAP_PLAY_AUDIO:B = 0x1t

.field private static final EV_CAP_UNLOCK:B = 0x8t


# instance fields
.field private _caps:Lcom/easyview/struct/EV_CAPS_STRUCT;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/easyview/struct/EV_CAPS_STRUCT;

    invoke-direct {v0}, Lcom/easyview/struct/EV_CAPS_STRUCT;-><init>()V

    iput-object v0, p0, Lcom/easyview/basecamera/CameraCaps;->_caps:Lcom/easyview/struct/EV_CAPS_STRUCT;

    .line 10
    return-void
.end method

.method private isSupport(B)Z
    .locals 3
    .param p1, "bit_val"    # B

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/easyview/basecamera/CameraCaps;->_caps:Lcom/easyview/struct/EV_CAPS_STRUCT;

    iget-object v2, v2, Lcom/easyview/struct/EV_CAPS_STRUCT;->caps:[B

    aget-byte v2, v2, v1

    and-int v0, v2, p1

    .line 29
    .local v0, "val":I
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public isSupportBabyCamInfo()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v2, p0, Lcom/easyview/basecamera/CameraCaps;->_caps:Lcom/easyview/struct/EV_CAPS_STRUCT;

    iget-object v2, v2, Lcom/easyview/struct/EV_CAPS_STRUCT;->caps:[B

    aget-byte v2, v2, v1

    and-int/lit8 v0, v2, 0x2

    .line 39
    .local v0, "val":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupportBiVoice()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/easyview/basecamera/CameraCaps;->isSupport(B)Z

    move-result v0

    return v0
.end method

.method public isSupportPlayAudio()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    iget-object v3, p0, Lcom/easyview/basecamera/CameraCaps;->_caps:Lcom/easyview/struct/EV_CAPS_STRUCT;

    iget-object v3, v3, Lcom/easyview/struct/EV_CAPS_STRUCT;->caps:[B

    aget-byte v3, v3, v2

    and-int/lit8 v0, v3, 0x1

    .line 34
    .local v0, "val":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isSupportUnlock()Z
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/easyview/basecamera/CameraCaps;->isSupport(B)Z

    move-result v0

    return v0
.end method

.method public read(Lstruct/StructUnpacker;)V
    .locals 2
    .param p1, "up"    # Lstruct/StructUnpacker;

    .prologue
    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/easyview/basecamera/CameraCaps;->_caps:Lcom/easyview/struct/EV_CAPS_STRUCT;

    invoke-virtual {p1, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method
