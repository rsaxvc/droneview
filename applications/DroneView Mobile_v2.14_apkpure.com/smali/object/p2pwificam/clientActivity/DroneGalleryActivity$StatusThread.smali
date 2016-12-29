.class Lobject/p2pwificam/clientActivity/DroneGalleryActivity$StatusThread;
.super Ljava/lang/Thread;
.source "DroneGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusThread"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 556
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 559
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_get_events_idle_count:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$32(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)I

    move-result v1

    if-lez v1, :cond_0

    .line 561
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_get_events_idle_count:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$32(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$33(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;I)V

    .line 568
    :cond_0
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
