.class Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;
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

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter;Lobject/p2pipcam/bean/EventDetailBean;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    iput-object p2, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    iput p3, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;->val$pos:I

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v3, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    # getter for: Lobject/p2pipcam/adapter/DroneGalleryAdapter;->canClick:Z
    invoke-static {v3}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->access$1(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v3}, Lobject/p2pipcam/bean/EventDetailBean;->getPicturePath()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v3}, Lobject/p2pipcam/bean/EventDetailBean;->getHavePicture()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 210
    const-string v3, "Picture"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PicturePath:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v3, "path"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v3, "status"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v3, "time"

    iget-object v4, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v4}, Lobject/p2pipcam/bean/EventDetailBean;->getTimeText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    # getter for: Lobject/p2pipcam/adapter/DroneGalleryAdapter;->context:Landroid/app/Activity;
    invoke-static {v3}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->access$0(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "did"

    iget-object v4, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v4}, Lobject/p2pipcam/bean/EventDetailBean;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v3, "date"

    const-string v4, "2015-05-15"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v3, "position"

    iget v4, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;->val$pos:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v3, "camera_name"

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v3, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;->this$0:Lobject/p2pipcam/adapter/DroneGalleryAdapter;

    # getter for: Lobject/p2pipcam/adapter/DroneGalleryAdapter;->context:Landroid/app/Activity;
    invoke-static {v3}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->access$0(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
