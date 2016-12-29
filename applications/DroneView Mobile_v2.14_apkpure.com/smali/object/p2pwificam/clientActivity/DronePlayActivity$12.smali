.class Lobject/p2pwificam/clientActivity/DronePlayActivity$12;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$12;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$12;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 483
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$12;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 484
    const v2, 0x7f06019f

    .line 483
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    const/4 v2, 0x0

    .line 481
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 485
    return-void
.end method
