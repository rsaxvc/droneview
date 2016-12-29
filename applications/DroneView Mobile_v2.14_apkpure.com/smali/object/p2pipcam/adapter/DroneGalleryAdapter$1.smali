.class Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;
.super Ljava/lang/Object;
.source "DroneGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/adapter/DroneGalleryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

.field private final synthetic val$bean:Lobject/p2pipcam/bean/EventDetailBean;


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter;Lobject/p2pipcam/bean/EventDetailBean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    iput-object p2, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v5, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    # getter for: Lobject/p2pipcam/adapter/DroneGalleryAdapter;->canClick:Z
    invoke-static {v5}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->access$1(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v5, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v5}, Lobject/p2pipcam/bean/EventDetailBean;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "bpath":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 176
    .local v1, "currentapiVersion":I
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isSupportMediaCodecHardDecoder()Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v3, "it":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 181
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, "video/avi"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v5, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    # getter for: Lobject/p2pipcam/adapter/DroneGalleryAdapter;->context:Landroid/app/Activity;
    invoke-static {v5}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->access$0(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    .end local v3    # "it":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    # getter for: Lobject/p2pipcam/adapter/DroneGalleryAdapter;->context:Landroid/app/Activity;
    invoke-static {v5}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->access$0(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "did"

    iget-object v6, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v6}, Lobject/p2pipcam/bean/EventDetailBean;->getDid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v5, "filepath"

    iget-object v6, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v6}, Lobject/p2pipcam/bean/EventDetailBean;->getVideoPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v5, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    # getter for: Lobject/p2pipcam/adapter/DroneGalleryAdapter;->context:Landroid/app/Activity;
    invoke-static {v5}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->access$0(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 190
    iget-object v5, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    # getter for: Lobject/p2pipcam/adapter/DroneGalleryAdapter;->context:Landroid/app/Activity;
    invoke-static {v5}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->access$0(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f040001

    const v7, 0x7f040005

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method
