.class Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$14;
.super Ljava/lang/Object;
.source "FloatCallVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$14;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$14;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    .line 394
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$14;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    const/4 v2, 0x0

    .line 392
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 396
    return-void
.end method
