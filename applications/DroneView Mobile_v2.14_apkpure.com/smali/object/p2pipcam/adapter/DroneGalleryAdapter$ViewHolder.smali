.class Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DroneGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/DroneGalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field bean:Lobject/p2pipcam/bean/EventDetailBean;

.field downListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

.field down_info:Landroid/view/View;

.field down_percent:Landroid/widget/TextView;

.field down_sign:Landroid/widget/ImageView;

.field down_text:Landroid/widget/TextView;

.field ivPicture:Landroid/widget/ImageView;

.field ivSelect:Landroid/widget/ImageView;

.field record_info:Landroid/view/View;

.field record_period:Landroid/widget/TextView;

.field final synthetic this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)V
    .locals 1

    .prologue
    .line 291
    iput-object p1, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder$1;

    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder$1;-><init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;)V

    iput-object v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->downListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter;Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)V

    return-void
.end method

.method static synthetic access$1(Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    return-object v0
.end method
