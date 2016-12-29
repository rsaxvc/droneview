.class Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ShowLocPicGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field baFlag:Landroid/widget/TextView;

.field img:Landroid/widget/ImageView;

.field img_delHook:Landroid/widget/ImageView;

.field playvideo:Landroid/widget/ImageView;

.field textView_timeshow:Landroid/widget/TextView;

.field final synthetic this$0:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;)V

    return-void
.end method
