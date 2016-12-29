.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetRcdDurationResp;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMsgAVIoctrlGetRcdDurationResp"
.end annotation


# instance fields
.field channel:I

.field durasecond:I

.field presecond:I

.field final synthetic this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/AVIOCTRLDEFs;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetRcdDurationResp;->this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
