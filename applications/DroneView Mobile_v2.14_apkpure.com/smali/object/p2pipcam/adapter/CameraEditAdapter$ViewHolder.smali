.class Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CameraEditAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/CameraEditAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cbx:Landroid/widget/CheckBox;

.field final synthetic this$0:Lobject/p2pipcam/adapter/CameraEditAdapter;

.field tvID:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/adapter/CameraEditAdapter;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/CameraEditAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/adapter/CameraEditAdapter;Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/CameraEditAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/CameraEditAdapter;)V

    return-void
.end method
