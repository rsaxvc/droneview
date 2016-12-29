.class public Lobject/p2pipcam/adapter/EventDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/EventDetailAdapter$MyOnLongListener;,
        Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
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

.field private context:Landroid/app/Activity;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/adapter/EventDetailAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pipcam/adapter/EventDetailAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->getPictureList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getPictureList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v4, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 176
    return-object v1

    .line 165
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 167
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getPicturePath()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "path":Ljava/lang/String;
    const-string v5, "Event"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Picture Path:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "path"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v5, "video"

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getVideoPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v5, "time"

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getTimeText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addAlarmLog(Lobject/p2pipcam/bean/EventDetailBean;)V
    .locals 1
    .param p1, "alarmLogBean"    # Lobject/p2pipcam/bean/EventDetailBean;

    .prologue
    .line 147
    iget-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    return-void
.end method

.method public delSelected()V
    .locals 4

    .prologue
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "beans":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/EventDetailBean;>;"
    iget-object v2, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    invoke-virtual {p0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    .line 126
    return-void

    .line 115
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 117
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 121
    .restart local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->removePicture()V

    .line 122
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->remove()V

    .line 123
    iget-object v3, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 180
    const/4 v3, 0x0

    .line 182
    .local v3, "holder":Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 183
    iget-object v5, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030025

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 184
    new-instance v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;

    .end local v3    # "holder":Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
    invoke-direct {v3, p0, v7}, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/EventDetailAdapter;Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;)V

    .line 185
    .restart local v3    # "holder":Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
    const v5, 0x7f080105

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->eventTime:Landroid/widget/TextView;

    .line 186
    const v5, 0x7f080108

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->eventType:Landroid/widget/TextView;

    .line 187
    const v5, 0x7f0800ee

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->record_info:Landroid/view/View;

    .line 188
    const v5, 0x7f0800ec

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    .line 189
    const v5, 0x7f080100

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    .line 190
    const v5, 0x7f0800f0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->record_period:Landroid/widget/TextView;

    .line 191
    const v5, 0x7f080101

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPlay:Landroid/widget/ImageView;

    .line 192
    const v5, 0x7f080102

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivDown:Landroid/widget/ImageView;

    .line 193
    const v5, 0x7f0800f1

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->down_info:Landroid/view/View;

    .line 194
    const v5, 0x7f0800f3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->down_text:Landroid/widget/TextView;

    .line 195
    const v5, 0x7f0800f2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->down_percent:Landroid/widget/TextView;

    .line 196
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    :goto_0
    iget-object v5, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 202
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->eventTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getTimeText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->eventType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getEventText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lobject/p2pipcam/bean/EventDetailBean;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 206
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 208
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 210
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    new-instance v6, Lobject/p2pipcam/adapter/EventDetailAdapter$1;

    invoke-direct {v6, p0, v0, p1}, Lobject/p2pipcam/adapter/EventDetailAdapter$1;-><init>(Lobject/p2pipcam/adapter/EventDetailAdapter;Lobject/p2pipcam/bean/EventDetailBean;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :goto_1
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getRecordIndex()I

    move-result v5

    if-ltz v5, :cond_4

    .line 290
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->record_info:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->record_period:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getPeriodText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPlay:Landroid/widget/ImageView;

    new-instance v6, Lobject/p2pipcam/adapter/EventDetailAdapter$3;

    invoke-direct {v6, p0, v0}, Lobject/p2pipcam/adapter/EventDetailAdapter$3;-><init>(Lobject/p2pipcam/adapter/EventDetailAdapter;Lobject/p2pipcam/bean/EventDetailBean;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivDown:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getHaveLocalVideo()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 366
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivDown:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPlay:Landroid/widget/ImageView;

    const v6, 0x7f0200c8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivDown:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    :goto_2
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->down_info:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 408
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getHaveLocalVideo()I

    move-result v5

    if-nez v5, :cond_0

    .line 412
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v5

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getDid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->getRecordIndex()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lobject/p2pipcam/utils/RecordDownTask;->getItem(Ljava/lang/String;I)Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    move-result-object v4

    .line 413
    .local v4, "item":Lobject/p2pipcam/utils/RecordDownTask$TaskItem;
    if-eqz v4, :cond_0

    .line 415
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->down_info:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->downListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    iput-object v5, v4, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->listener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    .line 417
    iput-object v3, v4, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->sender:Ljava/lang/Object;

    .line 418
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->down_percent:Landroid/widget/TextView;

    invoke-virtual {v4}, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->getPercentText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->down_text:Landroid/widget/TextView;

    invoke-virtual {v4}, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    .end local v4    # "item":Lobject/p2pipcam/utils/RecordDownTask$TaskItem;
    :cond_0
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->isCanSel()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 425
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 428
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    const v6, 0x7f020136

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 433
    :goto_3
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    new-instance v6, Lobject/p2pipcam/adapter/EventDetailAdapter$5;

    invoke-direct {v6, p0, v0}, Lobject/p2pipcam/adapter/EventDetailAdapter$5;-><init>(Lobject/p2pipcam/adapter/EventDetailAdapter;Lobject/p2pipcam/bean/EventDetailBean;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    :goto_4
    iput-object v0, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->bean:Lobject/p2pipcam/bean/EventDetailBean;

    .line 489
    return-object p2

    .line 198
    .end local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "holder":Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
    check-cast v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;

    .restart local v3    # "holder":Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
    goto/16 :goto_0

    .line 238
    .restart local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    const v6, 0x7f0200f5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPicture:Landroid/widget/ImageView;

    new-instance v6, Lobject/p2pipcam/adapter/EventDetailAdapter$2;

    invoke-direct {v6, p0, v0}, Lobject/p2pipcam/adapter/EventDetailAdapter$2;-><init>(Lobject/p2pipcam/adapter/EventDetailAdapter;Lobject/p2pipcam/bean/EventDetailBean;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 371
    :cond_3
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPlay:Landroid/widget/ImageView;

    const v6, 0x7f0200f6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    move-object v2, v3

    .line 373
    .local v2, "h":Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivDown:Landroid/widget/ImageView;

    new-instance v6, Lobject/p2pipcam/adapter/EventDetailAdapter$4;

    invoke-direct {v6, p0, v0}, Lobject/p2pipcam/adapter/EventDetailAdapter$4;-><init>(Lobject/p2pipcam/adapter/EventDetailAdapter;Lobject/p2pipcam/bean/EventDetailBean;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 402
    .end local v2    # "h":Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;
    :cond_4
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->record_info:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivDown:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 431
    :cond_5
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    const v6, 0x7f020137

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 449
    :cond_6
    iget-object v5, v3, Lobject/p2pipcam/adapter/EventDetailAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 161
    return-void

    .line 155
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 157
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->remove()V

    goto :goto_0
.end method

.method public removeLast(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    .line 141
    return-void

    .line 132
    :cond_1
    iget-object v3, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 133
    .local v2, "index":I
    if-eqz v2, :cond_0

    .line 134
    add-int/lit8 v2, v2, -0x1

    .line 135
    iget-object v3, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 136
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->removePicture()V

    .line 137
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->remove()V

    .line 138
    iget-object v3, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reverseSelect()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    .line 111
    return-void

    .line 99
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 101
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/EventDetailBean;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setSelected(Z)V

    goto :goto_0

    .line 107
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setSelected(Z)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    .line 96
    return-void

    .line 91
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 93
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setSelected(Z)V

    goto :goto_0
.end method

.method public setCanSel(Z)V
    .locals 3
    .param p1, "can"    # Z

    .prologue
    .line 83
    iget-object v1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lobject/p2pipcam/adapter/EventDetailAdapter;->notifyDataSetChanged()V

    .line 88
    return-void

    .line 83
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 85
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0, p1}, Lobject/p2pipcam/bean/EventDetailBean;->setCanSel(Z)V

    goto :goto_0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/EventDetailBean;>;"
    iput-object p1, p0, Lobject/p2pipcam/adapter/EventDetailAdapter;->arrayList:Ljava/util/List;

    .line 145
    return-void
.end method
