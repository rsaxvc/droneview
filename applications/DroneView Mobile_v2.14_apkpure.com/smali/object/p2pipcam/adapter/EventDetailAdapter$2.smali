.class Lobject/p2pipcam/adapter/EventDetailAdapter$2;
.super Ljava/lang/Object;
.source "EventDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/adapter/EventDetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

.field private final synthetic val$bean:Lobject/p2pipcam/bean/EventDetailBean;


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/EventDetailAdapter;Lobject/p2pipcam/bean/EventDetailBean;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    iput-object p2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->handler:Landroid/os/Handler;

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->count:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v3}, Lobject/p2pipcam/bean/EventDetailBean;->getDid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    .line 246
    .local v0, "camera":Lcom/easyview/basecamera/ICamera;
    iget-object v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v2}, Lobject/p2pipcam/bean/EventDetailBean;->getEventIndex()I

    move-result v1

    .line 247
    .local v1, "index":I
    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-interface {v0, v1, v4, v4}, Lcom/easyview/basecamera/ICamera;->queryEvent(ILjava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 249
    const/4 v2, 0x0

    iput v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->count:I

    .line 250
    iget-object v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->handler:Landroid/os/Handler;

    new-instance v3, Lobject/p2pipcam/adapter/EventDetailAdapter$2$1;

    invoke-direct {v3, p0}, Lobject/p2pipcam/adapter/EventDetailAdapter$2$1;-><init>(Lobject/p2pipcam/adapter/EventDetailAdapter$2;)V

    .line 254
    const-wide/16 v4, 0x3e8

    .line 250
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method showPicture()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 258
    iget-object v4, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lobject/p2pipcam/bean/EventDetailBean;->getPicturePath(Z)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "path":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 261
    iget v4, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->count:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 285
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v4, "Event"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No picture:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v4, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->handler:Landroid/os/Handler;

    new-instance v5, Lobject/p2pipcam/adapter/EventDetailAdapter$2$2;

    invoke-direct {v5, p0}, Lobject/p2pipcam/adapter/EventDetailAdapter$2$2;-><init>(Lobject/p2pipcam/adapter/EventDetailAdapter$2;)V

    .line 267
    const-wide/16 v6, 0x3e8

    .line 263
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 270
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "path"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v4, "status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v4, "time"

    iget-object v5, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v5}, Lobject/p2pipcam/bean/EventDetailBean;->getTimeText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v4, "video"

    iget-object v5, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v5}, Lobject/p2pipcam/bean/EventDetailBean;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;
    invoke-static {v4}, Lobject/p2pipcam/adapter/EventDetailAdapter;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter;)Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "did"

    iget-object v5, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->val$bean:Lobject/p2pipcam/bean/EventDetailBean;

    invoke-virtual {v5}, Lobject/p2pipcam/bean/EventDetailBean;->getDid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v4, "list"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 280
    const-string v4, "date"

    const-string v5, "2015-05-15"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v4, "position"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string v4, "camera_name"

    const-string v5, " "

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v4, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    # getter for: Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;
    invoke-static {v4}, Lobject/p2pipcam/adapter/EventDetailAdapter;->access$0(Lobject/p2pipcam/adapter/EventDetailAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 284
    iget-object v4, p0, Lobject/p2pipcam/adapter/EventDetailAdapter$2;->this$0:Lobject/p2pipcam/adapter/EventDetailAdapter;

    invoke-virtual {v4}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
