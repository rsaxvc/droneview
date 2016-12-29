.class Lobject/p2pwificam/clientActivity/VideoActivity$2;
.super Landroid/os/AsyncTask;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/VideoActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/VideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/VideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    .line 101
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/VideoActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 119
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    invoke-static {v4}, Lobject/p2pipcam/utils/Pub;->recordPathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 120
    .local v0, "div":Ljava/io/File;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/VideoActivity;->getVideoFile(Ljava/io/File;)V
    invoke-static {v4, v0}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$5(Lobject/p2pwificam/clientActivity/VideoActivity;Ljava/io/File;)V

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 133
    const/4 v4, 0x0

    return-object v4

    .line 122
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/MovieInfo;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$6(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 129
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lobject/p2pipcam/bean/CameraParamsBean;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lobject/p2pipcam/bean/CameraParamsBean;->setSum(I)V

    .line 130
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->maps:Ljava/util/Map;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$7(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/Map;

    move-result-object v5

    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lobject/p2pipcam/bean/CameraParamsBean;

    invoke-virtual {v4}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    sget-object v4, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lobject/p2pipcam/bean/CameraParamsBean;

    invoke-virtual {v4}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v5

    .line 125
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$6(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lobject/p2pipcam/bean/MovieInfo;

    invoke-virtual {v4}, Lobject/p2pipcam/bean/MovieInfo;->getCamerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$6(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lobject/p2pipcam/bean/MovieInfo;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/VideoActivity$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$2(Lobject/p2pwificam/clientActivity/VideoActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 138
    sput v4, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 139
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$0(Lobject/p2pwificam/clientActivity/VideoActivity;)Lobject/p2pipcam/adapter/VideoActivityAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/VideoActivityAdapter;->notifyDataSetChanged()V

    .line 140
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$6(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    .line 143
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 144
    const v3, 0x7f0601ac

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 147
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$6(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 155
    return-void

    .line 148
    :cond_1
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "camerName="

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$6(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lobject/p2pipcam/bean/MovieInfo;

    invoke-virtual {v1}, Lobject/p2pipcam/bean/MovieInfo;->getCamerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string v3, "   videoName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 151
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$6(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lobject/p2pipcam/bean/MovieInfo;

    invoke-virtual {v1}, Lobject/p2pipcam/bean/MovieInfo;->getVideoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  path="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 152
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->playList:Ljava/util/List;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$6(Lobject/p2pwificam/clientActivity/VideoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lobject/p2pipcam/bean/MovieInfo;

    invoke-virtual {v1}, Lobject/p2pipcam/bean/MovieInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$1(Lobject/p2pwificam/clientActivity/VideoActivity;Landroid/app/ProgressDialog;)V

    .line 104
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$2(Lobject/p2pwificam/clientActivity/VideoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    const v2, 0x7f0601ab

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$3(Lobject/p2pwificam/clientActivity/VideoActivity;Ljava/util/List;)V

    .line 107
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$4(Lobject/p2pwificam/clientActivity/VideoActivity;Ljava/util/Map;)V

    .line 108
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/VideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$2(Lobject/p2pwificam/clientActivity/VideoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 109
    return-void
.end method
