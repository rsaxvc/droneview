.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetRecStateResp;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlGetRecStateResp"
.end annotation


# static fields
.field static chn:I

.field static data_size:I

.field static dwSize:I

.field static nCmd:I


# instance fields
.field ServerSpace:I

.field chnRecordState:I

.field result_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1134
    const v0, 0x10000012

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetRecStateResp;->nCmd:I

    .line 1136
    const/16 v0, 0x14

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetRecStateResp;->data_size:I

    .line 1138
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
