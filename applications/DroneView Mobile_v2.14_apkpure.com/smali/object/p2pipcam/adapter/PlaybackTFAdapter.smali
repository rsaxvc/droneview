.class public Lobject/p2pipcam/adapter/PlaybackTFAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "PlaybackTFAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;,
        Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;
    }
.end annotation


# instance fields
.field private childMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field count:I

.field private groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field isfirst:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 125
    iput v0, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->count:I

    .line 126
    iput-boolean v0, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->isfirst:Z

    .line 28
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 27
    iput-object v0, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->childMap:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method public addGroupAndChild(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v1, "qq"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->childMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 133
    const-string v1, "qq"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2      list = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->childMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->isfirst:Z

    .line 147
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v1, "qq"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->childMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->childMap:Ljava/util/Map;

    iget-object v1, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildFilePath(II)Ljava/lang/String;
    .locals 3
    .param p1, "gposition"    # I
    .param p2, "cposition"    # I

    .prologue
    .line 150
    iget-object v2, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->childMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 152
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 41
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "holder":Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;
    if-nez p4, :cond_0

    .line 49
    iget-object v2, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030044

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 51
    new-instance v0, Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;

    .end local v0    # "holder":Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;
    invoke-direct {v0, p0, v4}, Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;-><init>(Lobject/p2pipcam/adapter/PlaybackTFAdapter;Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;)V

    .line 53
    .restart local v0    # "holder":Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;
    const v2, 0x7f0801e2

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    iput-object v2, v0, Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;->content:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v2, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->childMap:Ljava/util/Map;

    iget-object v3, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, "path":Ljava/lang/String;
    iget-object v2, v0, Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object p4

    .line 56
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;
    check-cast v0, Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;

    .restart local v0    # "holder":Lobject/p2pipcam/adapter/PlaybackTFAdapter$CViewHolder;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->childMap:Ljava/util/Map;

    iget-object v1, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupTitleAndSum(I)[Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 156
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 157
    .local v2, "s":[Ljava/lang/String;
    iget-object v3, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, "key":Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 159
    iget-object v3, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->childMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 160
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 161
    return-object v2
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "holder":Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;
    if-nez p3, :cond_1

    .line 91
    new-instance v1, Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;

    .end local v1    # "holder":Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;
    invoke-direct {v1, p0, v5}, Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;-><init>(Lobject/p2pipcam/adapter/PlaybackTFAdapter;Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;)V

    .line 92
    .restart local v1    # "holder":Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;
    iget-object v3, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030045

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 94
    const v3, 0x7f0801e3

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;->tvdate:Landroid/widget/TextView;

    .line 95
    const v3, 0x7f0801e4

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;->tvsum:Landroid/widget/TextView;

    .line 96
    const v3, 0x7f080078

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;->img:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    :goto_0
    if-eqz p2, :cond_2

    .line 102
    iget-object v3, v1, Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;->img:Landroid/widget/ImageView;

    const v4, 0x7f020014

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_1
    iget-object v3, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->groupList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->childMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    .local v0, "childList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, v1, Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;->tvdate:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    if-eqz v0, :cond_0

    .line 110
    iget-object v3, v1, Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;->tvsum:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-object p3

    .line 99
    .end local v0    # "childList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;
    check-cast v1, Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;

    .restart local v1    # "holder":Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;
    goto :goto_0

    .line 104
    :cond_2
    iget-object v3, v1, Lobject/p2pipcam/adapter/PlaybackTFAdapter$GViewHolder;->img:Landroid/widget/ImageView;

    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method
