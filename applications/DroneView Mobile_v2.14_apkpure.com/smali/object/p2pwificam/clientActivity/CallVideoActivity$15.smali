.class Lobject/p2pwificam/clientActivity/CallVideoActivity$15;
.super Ljava/lang/Object;
.source "CallVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$15;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$15;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    .line 461
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$15;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06019f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 459
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 462
    return-void
.end method
