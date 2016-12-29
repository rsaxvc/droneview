.class Lobject/p2pwificam/clientActivity/PlayActivity$28;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$28;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 1275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1280
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$28;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 1281
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$28;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1282
    const v2, 0x7f06019f

    .line 1281
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1282
    const/4 v2, 0x0

    .line 1279
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1282
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1283
    return-void
.end method
