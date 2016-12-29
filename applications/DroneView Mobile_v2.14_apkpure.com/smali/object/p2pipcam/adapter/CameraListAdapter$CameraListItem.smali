.class public final Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;
.super Ljava/lang/Object;
.source "CameraListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/CameraListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CameraListItem"
.end annotation


# instance fields
.field public devID:Landroid/widget/TextView;

.field public devName:Landroid/widget/TextView;

.field public devStatus:Landroid/widget/TextView;

.field public devType:Landroid/widget/TextView;

.field public imgBtnAlarm:Landroid/widget/ImageButton;

.field public imgBtnLight:Landroid/widget/ImageButton;

.field public imgBtnSetting:Landroid/widget/ImageButton;

.field public imgSnapShot:Landroid/widget/ImageView;

.field public leftBtn:Landroid/widget/Button;

.field final synthetic this$0:Lobject/p2pipcam/adapter/CameraListAdapter;


# direct methods
.method public constructor <init>(Lobject/p2pipcam/adapter/CameraListAdapter;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lobject/p2pipcam/adapter/CameraListAdapter$CameraListItem;->this$0:Lobject/p2pipcam/adapter/CameraListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
