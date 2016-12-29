.class public Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShowLocPicGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private delArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private did:Ljava/lang/String;

.field private holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

.field private inflater:Landroid/view/LayoutInflater;

.field private mode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "did"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->mode:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->delArray:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->did:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method

.method public static byteToInt([B)I
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "s":I
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 218
    .local v1, "s0":I
    const/4 v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    .line 219
    .local v2, "s1":I
    const/4 v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v3, v5, 0xff

    .line 220
    .local v3, "s2":I
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v4, v5, 0xff

    .line 221
    .local v4, "s3":I
    shl-int/lit8 v4, v4, 0x18

    .line 222
    shl-int/lit8 v3, v3, 0x10

    .line 223
    shl-int/lit8 v2, v2, 0x8

    .line 224
    or-int v5, v1, v2

    or-int/2addr v5, v3

    or-int v0, v5, v4

    .line 225
    return v0
.end method

.method private getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 125
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "filePath:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "s":Ljava/lang/String;
    const/16 v4, 0xa

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "date":Ljava/lang/String;
    const/16 v4, 0xb

    const/16 v5, 0x13

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    const-string v6, ":"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "time":Ljava/lang/String;
    move-object v1, v3

    .line 131
    .local v1, "result":Ljava/lang/String;
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "result:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sss:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x10

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-object v1
.end method

.method public static intToByte(I)[B
    .locals 5
    .param p0, "number"    # I

    .prologue
    .line 206
    move v2, p0

    .line 207
    .local v2, "temp":I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 208
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 212
    return-object v0

    .line 209
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    and-int/lit16 v4, v2, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 210
    shr-int/lit8 v2, v2, 0x8

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public DelPics()Ljava/util/ArrayList;
    .locals 14
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
    .line 137
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v11}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v2

    .line 138
    .local v2, "helper":Lobject/p2pipcam/utils/DataBaseHelper;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->delArray:Ljava/util/ArrayList;

    .line 139
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v3, v11, :cond_0

    .line 148
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->delArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 149
    .local v8, "size":I
    const-string v11, "tag"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "delArray.size():"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v8, :cond_2

    .line 183
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->delArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 184
    const/4 v11, 0x0

    iput-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->delArray:Ljava/util/ArrayList;

    .line 185
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    return-object v11

    .line 140
    .end local v8    # "size":I
    :cond_0
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 141
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "path"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 142
    .local v6, "path":Ljava/lang/String;
    const-string v11, "status"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 143
    .local v9, "status":I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_1

    .line 144
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->delArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "path":Ljava/lang/String;
    .end local v9    # "status":I
    .restart local v8    # "size":I
    :cond_2
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->delArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 153
    .restart local v6    # "path":Ljava/lang/String;
    const-string v11, "tag"

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v1, 0x1

    .line 155
    .local v1, "flag":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    if-nez v1, :cond_4

    .line 151
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    :cond_4
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 157
    .restart local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "path"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 158
    .local v7, "path2":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 159
    const-string v10, ""

    .line 160
    .local v10, "type":Ljava/lang/String;
    iget v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->mode:I

    packed-switch v11, :pswitch_data_0

    .line 168
    :goto_3
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->did:Ljava/lang/String;

    invoke-virtual {v2, v11, v7, v10}, Lobject/p2pipcam/utils/DataBaseHelper;->deleteVideoOrPicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 175
    :cond_5
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 176
    iget-object v11, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    sget-object v11, Lobject/p2pwificam/clientActivity/ShowLocalPicGridActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 179
    .end local v0    # "file":Ljava/io/File;
    :cond_6
    const/4 v1, 0x0

    .line 155
    .end local v10    # "type":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 162
    .restart local v10    # "type":Ljava/lang/String;
    :pswitch_0
    const-string v10, "picture"

    .line 163
    goto :goto_3

    .line 165
    :pswitch_1
    const-string v10, "video"

    goto :goto_3

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "bmp"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "path"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    return-void
.end method

.method public getArrayPics()Ljava/util/ArrayList;
    .locals 1
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
    .line 117
    iget-object v0, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 45
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
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 55
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "path"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "path":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 57
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03006d

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    invoke-direct {v5, p0, v7}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;)V

    iput-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    .line 60
    iget-object v6, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    const v5, 0x7f08001e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 61
    iget-object v6, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    .line 62
    const v5, 0x7f08014b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 61
    iput-object v5, v6, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->playvideo:Landroid/widget/ImageView;

    .line 63
    iget-object v6, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    .line 64
    const v5, 0x7f080122

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 63
    iput-object v5, v6, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->img_delHook:Landroid/widget/ImageView;

    .line 65
    iget-object v6, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    .line 66
    const v5, 0x7f080304

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 65
    iput-object v5, v6, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->baFlag:Landroid/widget/TextView;

    .line 67
    iget-object v6, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    .line 68
    const v5, 0x7f080305

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 67
    iput-object v5, v6, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->textView_timeshow:Landroid/widget/TextView;

    .line 69
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 74
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "bmp"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 75
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const-string v5, "status"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 76
    .local v3, "status":I
    const-string v5, "type"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 77
    .local v4, "type":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 78
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->baFlag:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :goto_1
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "adapter  status:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    packed-switch v3, :pswitch_data_0

    .line 97
    :goto_2
    iget v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->mode:I

    packed-switch v5, :pswitch_data_1

    .line 107
    :goto_3
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->textView_timeshow:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-object p2

    .line 71
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "status":I
    .end local v4    # "type":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iput-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    goto :goto_0

    .line 80
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "status":I
    .restart local v4    # "type":I
    :cond_1
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->baFlag:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 85
    :pswitch_0
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->img_delHook:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 87
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    const/high16 v6, 0xff0000

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_2

    .line 90
    :pswitch_1
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->img_delHook:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 92
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_2

    .line 99
    :pswitch_2
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->playvideo:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 102
    :pswitch_3
    iget-object v5, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->holder:Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;

    iget-object v5, v5, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter$ViewHolder;->playvideo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 97
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 113
    iput p1, p0, Lobject/p2pipcam/adapter/ShowLocPicGridViewAdapter;->mode:I

    .line 114
    return-void
.end method
