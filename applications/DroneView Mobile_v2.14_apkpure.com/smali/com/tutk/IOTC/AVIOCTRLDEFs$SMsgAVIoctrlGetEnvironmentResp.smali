.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetEnvironmentResp;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMsgAVIoctrlGetEnvironmentResp"
.end annotation


# instance fields
.field channel:I

.field mode:B

.field reserved:[B

.field final synthetic this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/AVIOCTRLDEFs;)V
    .locals 1

    .prologue
    .line 984
    iput-object p1, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetEnvironmentResp;->this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetEnvironmentResp;->reserved:[B

    return-void
.end method
