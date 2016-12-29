.class Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PictureActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/PictureActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field frame:Landroid/view/View;

.field id:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field number:Landroid/widget/TextView;

.field pBar:Landroid/widget/ProgressBar;

.field pic:Landroid/widget/ImageView;

.field status:Landroid/widget/TextView;

.field final synthetic this$0:Lobject/p2pipcam/adapter/PictureActivityAdapter;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/adapter/PictureActivityAdapter;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/PictureActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/adapter/PictureActivityAdapter;Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/PictureActivityAdapter;)V

    return-void
.end method
