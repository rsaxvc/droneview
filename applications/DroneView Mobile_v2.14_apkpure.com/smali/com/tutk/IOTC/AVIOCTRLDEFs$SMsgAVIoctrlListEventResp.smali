.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListEventResp;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMsgAVIoctrlListEventResp"
.end annotation


# instance fields
.field channel:I

.field count:B

.field endflag:B

.field index:B

.field reserved:B

.field stEvent:Lcom/tutk/IOTC/AVIOCTRLDEFs$SAvEvent;

.field final synthetic this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;

.field total:I


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/AVIOCTRLDEFs;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListEventResp;->this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
