.class public Lobject/p2pipcam/adapter/PictureActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "PictureActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public final PHONE:I

.field public final REMOTE:I

.field private context:Landroid/content/Context;

.field private holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

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

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput v0, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->mode:I

    .line 28
    iput v0, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->PHONE:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->REMOTE:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->isOver:Z

    .line 34
    iput-object p1, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->context:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method


# virtual methods
.method public addBmpAndSum(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "sum"    # I

    .prologue
    .line 147
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->mode:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "arg0"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    if-nez p2, :cond_2

    .line 57
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 58
    const v9, 0x7f03003f

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/PictureActivityAdapter;Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;)V

    iput-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    .line 60
    iget-object v9, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    const v8, 0x7f080048

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v9, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 61
    iget-object v9, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    const v8, 0x7f080049

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v9, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->id:Landroid/widget/TextView;

    .line 62
    iget-object v9, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    const v8, 0x7f0800a6

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v9, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->status:Landroid/widget/TextView;

    .line 63
    iget-object v9, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    .line 64
    const v8, 0x7f08017e

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 63
    iput-object v8, v9, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->number:Landroid/widget/TextView;

    .line 65
    iget-object v9, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    const v8, 0x7f08017c

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v9, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->pic:Landroid/widget/ImageView;

    .line 66
    iget-object v9, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    .line 67
    const v8, 0x7f080034

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 66
    iput-object v8, v9, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->pBar:Landroid/widget/ProgressBar;

    .line 68
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    const v9, 0x7f08017b

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->frame:Landroid/view/View;

    .line 69
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    sget-object v8, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 74
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getBmp()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 75
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getSum_pic()I

    move-result v7

    .line 76
    .local v7, "sum":I
    if-eqz v1, :cond_3

    .line 77
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->pBar:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 78
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->pic:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-boolean v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->isOver:Z

    if-eqz v8, :cond_0

    .line 84
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->pBar:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 86
    :cond_0
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->number:Landroid/widget/TextView;

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

    .line 87
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "did":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v6

    .line 91
    .local v6, "status":I
    packed-switch v6, :pswitch_data_0

    .line 117
    const v5, 0x7f06003a

    .line 119
    .local v5, "resid":I
    :goto_2
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->status:Landroid/widget/TextView;

    iget-object v9, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->id:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->context:Landroid/content/Context;

    invoke-static {v8}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 123
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->id:Landroid/widget/TextView;

    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lobject/p2pipcam/utils/Pub;->DisturbUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->mode:I

    packed-switch v8, :pswitch_data_1

    .line 142
    :goto_3
    return-object p2

    .line 71
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

    check-cast v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iput-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    goto/16 :goto_0

    .line 81
    .restart local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "sum":I
    :cond_3
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->pic:Landroid/widget/ImageView;

    const v9, 0x7f0200f5

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 93
    .restart local v3    # "did":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "status":I
    :pswitch_0
    const v5, 0x7f06003b

    .line 94
    .restart local v5    # "resid":I
    goto :goto_2

    .line 96
    .end local v5    # "resid":I
    :pswitch_1
    const v5, 0x7f06003f

    .line 97
    .restart local v5    # "resid":I
    goto :goto_2

    .line 99
    .end local v5    # "resid":I
    :pswitch_2
    const v5, 0x7f06003e

    .line 100
    .restart local v5    # "resid":I
    goto :goto_2

    .line 102
    .end local v5    # "resid":I
    :pswitch_3
    const v5, 0x7f06003c

    .line 103
    .restart local v5    # "resid":I
    goto :goto_2

    .line 105
    .end local v5    # "resid":I
    :pswitch_4
    const v5, 0x7f060040

    .line 106
    .restart local v5    # "resid":I
    goto :goto_2

    .line 108
    .end local v5    # "resid":I
    :pswitch_5
    const v5, 0x7f06003d

    .line 109
    .restart local v5    # "resid":I
    goto :goto_2

    .line 111
    .end local v5    # "resid":I
    :pswitch_6
    const v5, 0x7f060042

    .line 112
    .restart local v5    # "resid":I
    goto :goto_2

    .line 114
    .end local v5    # "resid":I
    :pswitch_7
    const v5, 0x7f060047

    .line 115
    .restart local v5    # "resid":I
    goto :goto_2

    .line 129
    :pswitch_8
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->status:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->frame:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 134
    :pswitch_9
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->number:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->status:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v8, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->holder:Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;

    iget-object v8, v8, Lobject/p2pipcam/adapter/PictureActivityAdapter$ViewHolder;->frame:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 91
    nop

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

    .line 127
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
    .line 154
    iput p1, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->mode:I

    .line 155
    return-void
.end method

.method public setOver(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lobject/p2pipcam/adapter/PictureActivityAdapter;->isOver:Z

    .line 151
    return-void
.end method
