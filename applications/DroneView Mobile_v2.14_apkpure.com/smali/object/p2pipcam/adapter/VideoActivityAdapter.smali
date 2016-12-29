.class public Lobject/p2pipcam/adapter/VideoActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public final PHONE:I

.field public final REMOTE:I

.field private context:Landroid/content/Context;

.field private holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

.field private inflater:Landroid/view/LayoutInflater;

.field private isOver:Z

.field public mode:I


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
            "Lobject/p2pipcam/bean/CameraParamsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lobject/p2pipcam/bean/CameraParamsBean;>;"
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput v0, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->mode:I

    .line 27
    iput v0, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->PHONE:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->REMOTE:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->isOver:Z

    .line 33
    iput-object p1, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->context:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->mode:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "arg0"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_2

    .line 55
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030076

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/VideoActivityAdapter;Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;)V

    iput-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    .line 57
    iget-object v9, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    const v8, 0x7f080048

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v9, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 58
    iget-object v9, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    const v8, 0x7f080049

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v9, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->id:Landroid/widget/TextView;

    .line 59
    iget-object v9, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    const v8, 0x7f0800a6

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v9, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->status:Landroid/widget/TextView;

    .line 60
    iget-object v9, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    .line 61
    const v8, 0x7f08017e

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 60
    iput-object v8, v9, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->number:Landroid/widget/TextView;

    .line 62
    iget-object v9, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    const v8, 0x7f08017c

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v9, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->pic:Landroid/widget/ImageView;

    .line 63
    iget-object v9, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    .line 64
    const v8, 0x7f08017d

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 63
    iput-object v8, v9, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->videoFlag:Landroid/widget/ImageView;

    .line 65
    iget-object v9, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    .line 66
    const v8, 0x7f080034

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 65
    iput-object v8, v9, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->pBar:Landroid/widget/ProgressBar;

    .line 67
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    const v9, 0x7f08017b

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->frame:Landroid/view/View;

    .line 68
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->videoFlag:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    sget-object v8, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 75
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getBmp()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getSum()I

    move-result v7

    .line 77
    .local v7, "sum":I
    if-eqz v1, :cond_3

    .line 78
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->pBar:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->pic:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->pic:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->videoFlag:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-boolean v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->isOver:Z

    if-eqz v8, :cond_0

    .line 89
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->pBar:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 91
    :cond_0
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->number:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "did":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v6

    .line 96
    .local v6, "status":I
    packed-switch v6, :pswitch_data_0

    .line 122
    const v5, 0x7f06003a

    .line 124
    .local v5, "resid":I
    :goto_2
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->status:Landroid/widget/TextView;

    iget-object v9, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->id:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->context:Landroid/content/Context;

    invoke-static {v8}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 129
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->id:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lobject/p2pipcam/utils/Pub;->DisturbUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_1
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->mode:I

    packed-switch v8, :pswitch_data_1

    .line 148
    :goto_3
    return-object p2

    .line 70
    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "did":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "resid":I
    .end local v6    # "status":I
    .end local v7    # "sum":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iput-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    goto/16 :goto_0

    .line 84
    .restart local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "sum":I
    :cond_3
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->videoFlag:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->pic:Landroid/widget/ImageView;

    const v9, 0x7f020165

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->pic:Landroid/widget/ImageView;

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 98
    .restart local v3    # "did":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "status":I
    :pswitch_0
    const v5, 0x7f06003b

    .line 99
    .restart local v5    # "resid":I
    goto :goto_2

    .line 101
    .end local v5    # "resid":I
    :pswitch_1
    const v5, 0x7f06003f

    .line 102
    .restart local v5    # "resid":I
    goto :goto_2

    .line 104
    .end local v5    # "resid":I
    :pswitch_2
    const v5, 0x7f06003e

    .line 105
    .restart local v5    # "resid":I
    goto :goto_2

    .line 107
    .end local v5    # "resid":I
    :pswitch_3
    const v5, 0x7f06003c

    .line 108
    .restart local v5    # "resid":I
    goto :goto_2

    .line 110
    .end local v5    # "resid":I
    :pswitch_4
    const v5, 0x7f060040

    .line 111
    .restart local v5    # "resid":I
    goto :goto_2

    .line 113
    .end local v5    # "resid":I
    :pswitch_5
    const v5, 0x7f06003d

    .line 114
    .restart local v5    # "resid":I
    goto :goto_2

    .line 116
    .end local v5    # "resid":I
    :pswitch_6
    const v5, 0x7f060042

    .line 117
    .restart local v5    # "resid":I
    goto :goto_2

    .line 119
    .end local v5    # "resid":I
    :pswitch_7
    const v5, 0x7f060047

    .line 120
    .restart local v5    # "resid":I
    goto/16 :goto_2

    .line 135
    :pswitch_8
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->frame:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->status:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 140
    :pswitch_9
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->frame:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v8, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->holder:Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/VideoActivityAdapter$ViewHolder;->status:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 133
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 156
    iput p1, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->mode:I

    .line 157
    return-void
.end method

.method public setOver(Z)V
    .locals 0
    .param p1, "over"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lobject/p2pipcam/adapter/VideoActivityAdapter;->isOver:Z

    .line 153
    return-void
.end method
