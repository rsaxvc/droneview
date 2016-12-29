.class Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;
.super Ljava/lang/Object;
.source "EventDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$1;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/EventDetailActivity$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$1;

    iput p2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;->val$result:I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 138
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$1;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$1;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v2

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->_mapBean:Ljava/util/Map;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;->val$result:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 139
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$1;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$1;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v3

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$1(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easyview/basecamera/BaseCamera;->GetEventFileID()I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$1;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$1;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v4

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$1(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easyview/basecamera/BaseCamera;->getID()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;->val$result:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/easyview/table/EventTable;->getPicturePath(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "picPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 144
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setHavePicture(I)V

    .line 145
    invoke-virtual {v0, v1}, Lobject/p2pipcam/bean/EventDetailBean;->setPicturePath(Ljava/lang/String;)V

    .line 148
    .end local v1    # "picPath":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$1;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$1;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v2

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$2(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Lobject/p2pipcam/adapter/EventDetailAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;->this$1:Lobject/p2pwificam/clientActivity/EventDetailActivity$1;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$1;)Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-result-object v2

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->adapter:Lobject/p2pipcam/adapter/EventDetailAdapter;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$2(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Lobject/p2pipcam/adapter/EventDetailAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    .line 149
    :cond_1
    return-void
.end method
