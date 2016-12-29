.class public Lobject/p2pipcam/adapter/SettingDialogListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingDialogListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "arraylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p2, p0, Lobject/p2pipcam/adapter/SettingDialogListViewAdapter;->arrayList:Ljava/util/ArrayList;

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/SettingDialogListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lobject/p2pipcam/adapter/SettingDialogListViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "holder":Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 43
    iget-object v2, p0, Lobject/p2pipcam/adapter/SettingDialogListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03005e

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    new-instance v1, Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;

    .end local v1    # "holder":Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;
    invoke-direct {v1, p0, v4}, Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/SettingDialogListViewAdapter;Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;)V

    .line 46
    .restart local v1    # "holder":Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;
    const v2, 0x7f080292

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :goto_0
    iget-object v2, p0, Lobject/p2pipcam/adapter/SettingDialogListViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "content":Ljava/lang/String;
    iget-object v2, v1, Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-object p2

    .line 49
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;
    check-cast v1, Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;

    .restart local v1    # "holder":Lobject/p2pipcam/adapter/SettingDialogListViewAdapter$ViewHolder;
    goto :goto_0
.end method
