.class Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$3;
.super Ljava/lang/Object;
.source "DroneGalleryActivity.java"

# interfaces
.implements Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$3;->this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnProgress(Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)V
    .locals 2
    .param p1, "item"    # Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    .prologue
    .line 455
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7$3;->this$1:Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;->access$0(Lobject/p2pwificam/clientActivity/DroneGalleryActivity$7;)Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$4(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 456
    return-void
.end method
