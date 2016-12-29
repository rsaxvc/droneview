.class Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VideoActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/VideoActivityAdapter;
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

.field final synthetic this$0:Lobject/p2pipcam/adapter/VideoActivityAdapter;

.field videoFlag:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/adapter/VideoActivityAdapter;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/VideoActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/adapter/VideoActivityAdapter;Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/VideoActivityAdapter;)V

    return-void
.end method
