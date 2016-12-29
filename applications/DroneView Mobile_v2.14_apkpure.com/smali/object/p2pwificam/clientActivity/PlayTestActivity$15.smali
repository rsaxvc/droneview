.class Lobject/p2pwificam/clientActivity/PlayTestActivity$15;
.super Ljava/lang/Object;
.source "PlayTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$15;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 1165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1169
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$15;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 1170
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$15;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1171
    const/4 v2, 0x0

    .line 1168
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1171
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1172
    return-void
.end method
