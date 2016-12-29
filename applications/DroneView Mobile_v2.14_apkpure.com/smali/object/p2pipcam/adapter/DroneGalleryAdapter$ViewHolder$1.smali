.class Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "DroneGalleryAdapter.java"

# interfaces
.implements Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder$1;->this$1:Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder$1;)Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder$1;->this$1:Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;

    return-object v0
.end method


# virtual methods
.method public OnProgress(Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)V
    .locals 2
    .param p1, "item"    # Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    .prologue
    .line 305
    iget-object v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder$1;->this$1:Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;

    # getter for: Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;
    invoke-static {v0}, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->access$1(Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;)Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    move-result-object v0

    # getter for: Lobject/p2pipcam/adapter/DroneGalleryAdapter;->context:Landroid/app/Activity;
    invoke-static {v0}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->access$0(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder$1$1;

    invoke-direct {v1, p0, p1}, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder$1$1;-><init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder$1;Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method
