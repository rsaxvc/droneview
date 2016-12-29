.class public Lcom/tutk/IOTC/RDTAPIs;
.super Ljava/lang/Object;
.source "RDTAPIs.java"


# static fields
.field public static final API_ER_ANDROID_NULL:I = -0x2710

.field public static final RDT_ER_ALREADY_INITIALIZED:I = -0x2711

.field public static final RDT_ER_EXCEED_MAX_CHANNEL:I = -0x2712

.field public static final RDT_ER_FAIL_CREATE_MUTEX:I = -0x2715

.field public static final RDT_ER_FAIL_CREATE_THREAD:I = -0x2714

.field public static final RDT_ER_INVALID_RDT_ID:I = -0x2718

.field public static final RDT_ER_MEM_INSUFF:I = -0x2713

.field public static final RDT_ER_NOT_INITIALIZED:I = -0x2710

.field public static final RDT_ER_NoERROR:I = 0x0

.field public static final RDT_ER_RCV_DATA_END:I = -0x2719

.field public static final RDT_ER_RDT_DESTROYED:I = -0x2716

.field public static final RDT_ER_TIMEOUT:I = -0x2717

.field public static ms_verRDTApis:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/tutk/IOTC/RDTAPIs;->ms_verRDTApis:J

    .line 81
    :try_start_0
    const-string v1, "RDTAPIs"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 82
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 83
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLibrary(RDTAPIs),"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native RDT_Create(III)I
.end method

.method public static native RDT_DeInitialize()I
.end method

.method public static native RDT_Destroy(I)I
.end method

.method public static native RDT_GetRDTApiVer()I
.end method

.method public static native RDT_Initialize()I
.end method

.method public static native RDT_Read(I[BII)I
.end method

.method public static native RDT_Status_Check(ILcom/tutk/IOTC/St_RDT_Status;)I
.end method

.method public static native RDT_Write(I[BI)I
.end method
