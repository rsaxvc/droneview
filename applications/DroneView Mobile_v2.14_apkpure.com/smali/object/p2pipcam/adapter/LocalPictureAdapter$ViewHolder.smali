.class Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LocalPictureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/LocalPictureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field pBar:Landroid/widget/ProgressBar;

.field sum:Landroid/widget/TextView;

.field final synthetic this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/adapter/LocalPictureAdapter;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/LocalPictureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/adapter/LocalPictureAdapter;Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/LocalPictureAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/LocalPictureAdapter;)V

    return-void
.end method
