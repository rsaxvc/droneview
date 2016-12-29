.class public Lcom/easyview/basecamera/CameraSearchInfo;
.super Ljava/lang/Object;
.source "CameraSearchInfo.java"


# static fields
.field public static final CAMERA_TYPE_PPCN:I = 0x3

.field public static final CAMERA_TYPE_PPCS:I = 0x2

.field public static final CAMERA_TYPE_TUTK:I = 0x1


# instance fields
.field public CameraType:I

.field public ID:Ljava/lang/String;

.field public IP:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
