.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetSupportStreamResp;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMsgAVIoctrlGetSupportStreamResp"
.end annotation


# instance fields
.field public mStreamDef:[Lcom/tutk/IOTC/AVIOCTRLDEFs$SStreamDef;

.field public number:J

.field final synthetic this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/AVIOCTRLDEFs;)V
    .locals 0

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetSupportStreamResp;->this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
