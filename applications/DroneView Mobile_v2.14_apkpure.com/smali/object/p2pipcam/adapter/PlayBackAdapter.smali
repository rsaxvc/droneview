.class public Lobject/p2pipcam/adapter/PlayBackAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlayBackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lobject/p2pipcam/bean/PlayBackBean;",
            ">;"
        }
    .end annotation
.end field

.field private holder:Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->arrayList:Ljava/util/ArrayList;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 23
    return-void
.end method


# virtual methods
.method public addPlayBean(Lobject/p2pipcam/bean/PlayBackBean;)V
    .locals 1
    .param p1, "bean"    # Lobject/p2pipcam/bean/PlayBackBean;

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPlayBean(I)Lobject/p2pipcam/bean/PlayBackBean;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/PlayBackBean;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 42
    if-nez p2, :cond_0

    .line 43
    new-instance v1, Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;

    invoke-direct {v1, p0, v3}, Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/PlayBackAdapter;Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;)V

    iput-object v1, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->holder:Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;

    .line 44
    iget-object v1, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030046

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    iget-object v2, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->holder:Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;

    const v1, 0x7f080048

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->holder:Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :goto_0
    iget-object v1, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/PlayBackBean;

    .line 51
    .local v0, "bean":Lobject/p2pipcam/bean/PlayBackBean;
    iget-object v1, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->holder:Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;

    iget-object v1, v1, Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/PlayBackBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-object p2

    .line 48
    .end local v0    # "bean":Lobject/p2pipcam/bean/PlayBackBean;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;

    iput-object v1, p0, Lobject/p2pipcam/adapter/PlayBackAdapter;->holder:Lobject/p2pipcam/adapter/PlayBackAdapter$ViewHolder;

    goto :goto_0
.end method
