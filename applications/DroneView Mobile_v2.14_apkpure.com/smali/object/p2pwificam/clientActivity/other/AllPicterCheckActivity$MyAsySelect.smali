.class Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;
.super Landroid/os/AsyncTask;
.source "AllPicterCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAsySelect"
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
.method constructor <init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 62
    new-instance v0, Lobject/p2pwificam/clientActivity/other/FindImage;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/IPcamer/pic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Lobject/p2pwificam/clientActivity/other/FindImage;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "findImage":Lobject/p2pwificam/clientActivity/other/FindImage;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/other/FindImage;->getList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$2(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;Ljava/util/List;)V

    .line 66
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/16 v4, 0x8

    .line 71
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    new-instance v1, Lobject/p2pwificam/clientActivity/other/GridAdapter;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lobject/p2pwificam/clientActivity/other/GridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$4(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;Lobject/p2pwificam/clientActivity/other/GridAdapter;)V

    .line 74
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->gridView:Landroid/widget/GridView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$5(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->adapter:Lobject/p2pwificam/clientActivity/other/GridAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$6(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Lobject/p2pwificam/clientActivity/other/GridAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->gridView:Landroid/widget/GridView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$5(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/GridView;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(I)V

    .line 76
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$7(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$7(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->listpath:Ljava/util/List;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$3(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$1(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 79
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # invokes: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->getDataFromOther()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$8(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V

    .line 80
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$9(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$1(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 83
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$9(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    const v1, 0x7f060180

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->showToast(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 54
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$0(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;Landroid/app/ProgressDialog;)V

    .line 55
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$1(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 56
    const v2, 0x7f06017f

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$MyAsySelect;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    # getter for: Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->access$1(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 58
    return-void
.end method
