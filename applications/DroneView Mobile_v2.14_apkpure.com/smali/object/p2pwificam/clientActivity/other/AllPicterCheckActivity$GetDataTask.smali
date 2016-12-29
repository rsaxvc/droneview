.class Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;
.super Landroid/os/AsyncTask;
.source "AllPicterCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDataTask"
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
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;-><init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 148
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$6(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Lobject/p2pwificam/clientActivity/other/GridAdapter;

    move-result-object v1

    iget v1, v1, Lobject/p2pwificam/clientActivity/other/GridAdapter;->count:I

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    if-gt v1, v2, :cond_1

    .line 149
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$6(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Lobject/p2pwificam/clientActivity/other/GridAdapter;

    move-result-object v1

    iget v2, v1, Lobject/p2pwificam/clientActivity/other/GridAdapter;->count:I

    add-int/lit8 v2, v2, 0x14

    iput v2, v1, Lobject/p2pwificam/clientActivity/other/GridAdapter;->count:I

    .line 154
    :cond_0
    :goto_0
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 150
    :cond_1
    const/16 v1, 0x14

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$6(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Lobject/p2pwificam/clientActivity/other/GridAdapter;

    move-result-object v3

    iget v3, v3, Lobject/p2pwificam/clientActivity/other/GridAdapter;->count:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 151
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$6(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Lobject/p2pwificam/clientActivity/other/GridAdapter;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lobject/p2pwificam/clientActivity/other/GridAdapter;->count:I

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Void;

    .prologue
    .line 164
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$6(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Lobject/p2pwificam/clientActivity/other/GridAdapter;

    move-result-object v1

    iget v1, v1, Lobject/p2pwificam/clientActivity/other/GridAdapter;->count:I

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    const v1, 0x7f060181

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->showToast(I)V

    .line 167
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$6(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Lobject/p2pwificam/clientActivity/other/GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/other/GridAdapter;->notifyDataSetChanged()V

    .line 168
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$GetDataTask;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->mPullRefreshGridView:Lobject/p2pwificam/gridview/PullToRefreshGridView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$10(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Lobject/p2pwificam/gridview/PullToRefreshGridView;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pwificam/gridview/PullToRefreshGridView;->onRefreshComplete()V

    .line 169
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 170
    return-void
.end method
