.class Lobject/p2pwificam/clientActivity/DronePlayActivity$11;
.super Ljava/lang/Thread;
.source "DronePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;->takePicture(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$11;->val$bmp:Landroid/graphics/Bitmap;

    .line 447
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$11;->val$bmp:Landroid/graphics/Bitmap;

    # invokes: Lobject/p2pwificam/clientActivity/DronePlayActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$84(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/graphics/Bitmap;)V

    .line 450
    return-void
.end method
