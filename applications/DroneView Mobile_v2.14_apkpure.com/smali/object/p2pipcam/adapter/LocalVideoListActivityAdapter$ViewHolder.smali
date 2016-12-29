.class Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LocalVideoListActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field pBar:Landroid/widget/ProgressBar;

.field playvideo:Landroid/widget/ImageView;

.field sum:Landroid/widget/TextView;

.field final synthetic this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)V

    return-void
.end method
