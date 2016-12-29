.class public Lcom/easyview/tutk/QVConfigStruct;
.super Ljava/lang/Object;
.source "QVConfigStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# static fields
.field public static final QV_CMD_GET_DATETIME:I = 0x10000133

.field public static final QV_CMD_GET_DISK_STATE:I = 0x10000016

.field public static final QV_CMD_GET_EMAIL:I = 0x10000025

.field public static final QV_CMD_GET_MD_ALARM:I = 0x10000018

.field public static final QV_CMD_GET_REC_CONFIG:I = 0x10000011

.field public static final QV_CMD_GET_TIME:I = 0x10000004

.field public static final QV_CMD_OPERATE_SD:I = 0x200

.field public static final QV_CMD_SET_DATETIME:I = 0x133

.field public static final QV_CMD_SET_EMAIL:I = 0x12c

.field public static final QV_CMD_SET_MD_ALARM:I = 0x11d

.field public static final QV_CMD_SET_REC_CONFIG:I = 0x116

.field public static final QV_CMD_SET_TIME:I = 0x108

.field public static final QV_MAX_DISK_NUM:I = 0x8

.field public static final QV_NAME_LEN:I = 0x20


# instance fields
.field public cmd:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public datasize:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
