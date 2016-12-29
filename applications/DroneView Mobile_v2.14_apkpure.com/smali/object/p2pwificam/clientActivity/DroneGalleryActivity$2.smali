.class Lobject/p2pwificam/clientActivity/DroneGalleryActivity$2;
.super Ljava/lang/Object;
.source "DroneGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isGetEventList:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$2(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->queryEventList()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$3(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    .line 188
    :cond_0
    return-void
.end method
