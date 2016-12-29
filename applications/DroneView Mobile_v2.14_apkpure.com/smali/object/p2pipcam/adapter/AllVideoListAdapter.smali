.class public Lobject/p2pipcam/adapter/AllVideoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AllVideoListAdapter.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private layout:Landroid/widget/LinearLayout;

.field private plays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/MovieInfo;",
            ">;"
        }
    .end annotation
.end field

.field private posi:I

.field private textView_camer:Landroid/widget/TextView;

.field private textView_name:Landroid/widget/TextView;

.field private textView_size:Landroid/widget/TextView;

.field private textView_time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/MovieInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/MovieInfo;>;"
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->plays:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_name:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_camer:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_time:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_size:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->layout:Landroid/widget/LinearLayout;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->posi:I

    .line 30
    iput-object p2, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->plays:Ljava/util/List;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 32
    iput p3, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->posi:I

    .line 33
    return-void
.end method

.method private getDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 78
    const-string v1, "yyyy-MM-dd  HH:mm:ss"

    .line 77
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->plays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v3, 0x8

    .line 55
    iget-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    const v0, 0x7f080070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_name:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f08006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->layout:Landroid/widget/LinearLayout;

    .line 58
    const v0, 0x7f080071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_time:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f080072

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_size:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f08006f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_camer:Landroid/widget/TextView;

    .line 61
    iget v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->posi:I

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_camer:Landroid/widget/TextView;

    iget-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->plays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/MovieInfo;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/MovieInfo;->getCamerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_0
    iget-object v1, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_name:Landroid/widget/TextView;

    iget-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->plays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/MovieInfo;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/MovieInfo;->getVideoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_size:Landroid/widget/TextView;

    iget-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->plays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/MovieInfo;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/MovieInfo;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_time:Landroid/widget/TextView;

    iget-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->plays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/MovieInfo;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/MovieInfo;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lobject/p2pipcam/adapter/AllVideoListAdapter;->getDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-object p2

    .line 65
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lobject/p2pipcam/adapter/AllVideoListAdapter;->textView_camer:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
