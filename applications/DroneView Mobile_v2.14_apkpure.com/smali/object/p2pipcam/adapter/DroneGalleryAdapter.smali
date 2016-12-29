.class public Lobject/p2pipcam/adapter/DroneGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "DroneGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private arrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private canClick:Z

.field private context:Landroid/app/Activity;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "DataSet":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/EventDetailBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->canClick:Z

    .line 45
    iput-object p1, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->context:Landroid/app/Activity;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p2, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->arrayList:Ljava/util/List;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pipcam/adapter/DroneGalleryAdapter;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->canClick:Z

    return v0
.end method


# virtual methods
.method public Add(Lobject/p2pipcam/bean/EventDetailBean;)V
    .locals 2
    .param p1, "bean"    # Lobject/p2pipcam/bean/EventDetailBean;

    .prologue
    .line 52
    iget-object v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->arrayList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public Clear()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    return-void
.end method

.method public delSelected()V
    .locals 4

    .prologue
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "beans":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/EventDetailBean;>;"
    iget-object v2, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 95
    return-void

    .line 87
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 89
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 93
    .restart local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    iget-object v3, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelected()[I
    .locals 6

    .prologue
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 72
    .local v3, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 73
    return-object v3

    .line 67
    .end local v1    # "i":I
    .end local v3    # "result":[I
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 69
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getEventIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    .restart local v1    # "i":I
    .restart local v3    # "result":[I
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getSelectedBeans()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "beans":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/EventDetailBean;>;"
    iget-object v2, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    return-object v1

    .line 78
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 80
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "holder":Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;
    move v4, p1

    .line 125
    .local v4, "pos":I
    if-nez p2, :cond_1

    .line 126
    iget-object v5, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030022

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 127
    new-instance v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;

    .end local v2    # "holder":Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;
    invoke-direct {v2, p0, v9}, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter;Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;)V

    .line 128
    .restart local v2    # "holder":Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;
    const v5, 0x7f0800ea

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    .line 129
    const v5, 0x7f0800ee

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->record_info:Landroid/view/View;

    .line 130
    const v5, 0x7f0800f0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->record_period:Landroid/widget/TextView;

    .line 131
    const v5, 0x7f0800ec

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    .line 132
    const v5, 0x7f0800f1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->down_info:Landroid/view/View;

    .line 133
    const v5, 0x7f0800ef

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->down_sign:Landroid/widget/ImageView;

    .line 134
    const v5, 0x7f0800f3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->down_text:Landroid/widget/TextView;

    .line 135
    const v5, 0x7f0800f2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->down_percent:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    :goto_0
    iget-object v5, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 288
    :cond_0
    :goto_1
    return-object p2

    .line 138
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;
    check-cast v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;

    .restart local v2    # "holder":Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;
    goto :goto_0

    .line 141
    :cond_2
    iget-object v5, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 142
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    iput-object v0, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->bean:Lobject/p2pipcam/bean/EventDetailBean;

    .line 143
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v0, v7}, Lobject/p2pipcam/bean/EventDetailBean;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 145
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 147
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    :goto_2
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getRecordIndex()I

    move-result v5

    if-ltz v5, :cond_5

    .line 156
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->record_info:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->record_period:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getPeriodText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getHaveLocalVideo()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 160
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->down_sign:Landroid/widget/ImageView;

    const v6, 0x7f020118

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->record_period:Landroid/widget/TextView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    new-instance v6, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;

    invoke-direct {v6, p0, v0}, Lobject/p2pipcam/adapter/DroneGalleryAdapter$1;-><init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter;Lobject/p2pipcam/bean/EventDetailBean;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    :goto_3
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    new-instance v6, Lobject/p2pipcam/adapter/DroneGalleryAdapter$3;

    invoke-direct {v6, p0, v0}, Lobject/p2pipcam/adapter/DroneGalleryAdapter$3;-><init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter;Lobject/p2pipcam/bean/EventDetailBean;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->isCanSel()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 246
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 249
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    const v6, 0x7f020136

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    :goto_4
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    new-instance v6, Lobject/p2pipcam/adapter/DroneGalleryAdapter$4;

    invoke-direct {v6, p0, v0}, Lobject/p2pipcam/adapter/DroneGalleryAdapter$4;-><init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter;Lobject/p2pipcam/bean/EventDetailBean;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    :goto_5
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->down_info:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getHaveLocalVideo()I

    move-result v5

    if-nez v5, :cond_0

    .line 278
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v5

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getDid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getRecordIndex()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lobject/p2pipcam/utils/RecordDownTask;->getItem(Ljava/lang/String;I)Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    move-result-object v3

    .line 279
    .local v3, "item":Lobject/p2pipcam/utils/RecordDownTask$TaskItem;
    if-eqz v3, :cond_0

    .line 281
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->down_info:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->downListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    iput-object v5, v3, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->listener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    .line 283
    iput-object v2, v3, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->sender:Ljava/lang/Object;

    .line 284
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->down_percent:Landroid/widget/TextView;

    invoke-virtual {v3}, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->getPercentText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->down_text:Landroid/widget/TextView;

    invoke-virtual {v3}, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 151
    .end local v3    # "item":Lobject/p2pipcam/utils/RecordDownTask$TaskItem;
    :cond_3
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    const v6, 0x7f0200f5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 195
    :cond_4
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->down_sign:Landroid/widget/ImageView;

    const v6, 0x7f020119

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->record_period:Landroid/widget/TextView;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 200
    :cond_5
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->record_info:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    new-instance v6, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;

    invoke-direct {v6, p0, v0, v4}, Lobject/p2pipcam/adapter/DroneGalleryAdapter$2;-><init>(Lobject/p2pipcam/adapter/DroneGalleryAdapter;Lobject/p2pipcam/bean/EventDetailBean;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 252
    :cond_6
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    const v6, 0x7f020137

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 273
    :cond_7
    iget-object v5, v2, Lobject/p2pipcam/adapter/DroneGalleryAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method public setCanClick()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->canClick:Z

    .line 103
    return-void
.end method

.method public setCanSel(Z)V
    .locals 3
    .param p1, "can"    # Z

    .prologue
    .line 58
    iget-object v1, p0, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lobject/p2pipcam/adapter/DroneGalleryAdapter;->notifyDataSetChanged()V

    .line 63
    return-void

    .line 58
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 60
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0, p1}, Lobject/p2pipcam/bean/EventDetailBean;->setCanSel(Z)V

    goto :goto_0
.end method
