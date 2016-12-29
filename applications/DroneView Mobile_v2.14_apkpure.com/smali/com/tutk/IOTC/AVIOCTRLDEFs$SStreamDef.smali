.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SStreamDef;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SStreamDef"
.end annotation


# instance fields
.field public channel:I

.field public index:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tutk/IOTC/Packet;->byteArrayToShort_Little([BI)S

    move-result v0

    iput v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SStreamDef;->index:I

    .line 1268
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/tutk/IOTC/Packet;->byteArrayToShort_Little([BI)S

    move-result v0

    iput v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SStreamDef;->channel:I

    .line 1269
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CH"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SStreamDef;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
