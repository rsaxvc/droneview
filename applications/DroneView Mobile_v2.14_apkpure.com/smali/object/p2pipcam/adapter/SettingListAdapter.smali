.class public Lobject/p2pipcam/adapter/SettingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SettingListAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private listContainer:Landroid/view/LayoutInflater;

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "ct"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object v0, p0, Lobject/p2pipcam/adapter/SettingListAdapter;->listContainer:Landroid/view/LayoutInflater;

    .line 21
    iput-object v0, p0, Lobject/p2pipcam/adapter/SettingListAdapter;->context:Landroid/content/Context;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/SettingListAdapter;->listItems:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lobject/p2pipcam/adapter/SettingListAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lobject/p2pipcam/adapter/SettingListAdapter;->listItems:Ljava/util/List;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/SettingListAdapter;->listContainer:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public ClearAll()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lobject/p2pipcam/adapter/SettingListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lobject/p2pipcam/adapter/SettingListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "settingListItem":Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;

    .end local v0    # "settingListItem":Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;
    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;-><init>(Lobject/p2pipcam/adapter/SettingListAdapter;)V

    .line 57
    .restart local v0    # "settingListItem":Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;
    iget-object v1, p0, Lobject/p2pipcam/adapter/SettingListAdapter;->listContainer:Landroid/view/LayoutInflater;

    const v2, 0x7f030056

    .line 58
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    const v1, 0x7f08022a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;->SettingName:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f08022b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 61
    iput-object v1, v0, Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;->SettingImg:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    if-nez p1, :cond_1

    .line 69
    const v1, 0x7f0200b5

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    :goto_1
    iget-object v2, v0, Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;->SettingName:Landroid/widget/TextView;

    iget-object v1, p0, Lobject/p2pipcam/adapter/SettingListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-object p2

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "settingListItem":Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;
    check-cast v0, Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;

    .restart local v0    # "settingListItem":Lobject/p2pipcam/adapter/SettingListAdapter$SettingListItem;
    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lobject/p2pipcam/adapter/SettingListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 72
    const v1, 0x7f0200b2

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 75
    :cond_2
    const v1, 0x7f0200b3

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
