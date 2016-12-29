.class public Lobject/p2pipcam/adapter/SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SearchListAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private listContainer:Landroid/view/LayoutInflater;

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ct"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object v0, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listContainer:Landroid/view/LayoutInflater;

    .line 26
    iput-object v0, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->context:Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listItems:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->context:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listContainer:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method private CheckCameraInfo(Ljava/lang/String;)Z
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v3, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 122
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 129
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 124
    :cond_0
    iget-object v3, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "cameraid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    .local v2, "strMac":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    const/4 v3, 0x0

    goto :goto_1

    .line 122
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public AddCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "did"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p3}, Lobject/p2pipcam/adapter/SearchListAdapter;->CheckCameraInfo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 109
    :goto_0
    return v1

    .line 104
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "camera_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "camera_name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "cameraid"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public ClearAll()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemContent(I)Ljava/util/Map;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "searchListItem":Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;
    if-nez p2, :cond_1

    .line 63
    new-instance v0, Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;

    .end local v0    # "searchListItem":Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;
    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;-><init>(Lobject/p2pipcam/adapter/SearchListAdapter;)V

    .line 64
    .restart local v0    # "searchListItem":Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;
    iget-object v2, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listContainer:Landroid/view/LayoutInflater;

    const v3, 0x7f030050

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    const v2, 0x7f080207

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;->devName:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f080208

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;->devID:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :goto_0
    const v2, 0x7f0200b3

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    iget-object v3, v0, Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;->devName:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "camera_name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, v0, Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;->devID:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "cameraid"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lobject/p2pipcam/adapter/SearchListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "cameraid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, "uid":Ljava/lang/String;
    iget-object v2, v0, Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;->devID:Landroid/widget/TextView;

    invoke-static {v1}, Lobject/p2pipcam/utils/Pub;->DisturbUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .end local v1    # "uid":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "searchListItem":Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;
    check-cast v0, Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;

    .restart local v0    # "searchListItem":Lobject/p2pipcam/adapter/SearchListAdapter$SearchListItem;
    goto :goto_0
.end method
