.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlEventConfig;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMsgAVIoctrlEventConfig"
.end annotation


# instance fields
.field channel:J

.field ftp:B

.field localIO:B

.field mail:B

.field p2pPushMsg:B

.field final synthetic this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/AVIOCTRLDEFs;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlEventConfig;->this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
