.class public Lobject/p2pipcam/utils/AudioBuffer;
.super Ljava/lang/Object;
.source "AudioBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/utils/AudioBuffer$AudioData;
    }
.end annotation


# static fields
.field public static final VALID_FRAME_COUNT:I = 0xa


# instance fields
.field public VALID_LIMIT:I

.field private _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/utils/AudioBuffer$AudioData;",
            ">;"
        }
    .end annotation
.end field

.field private invalid_count:I

.field private is_valid:I

.field private mute_data:[B

.field private valid_count:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x1770

    iput v0, p0, Lobject/p2pipcam/utils/AudioBuffer;->VALID_LIMIT:I

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    .line 21
    const/16 v0, 0xa0

    new-array v0, v0, [B

    iput-object v0, p0, Lobject/p2pipcam/utils/AudioBuffer;->mute_data:[B

    .line 22
    iput v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->valid_count:I

    .line 23
    iput v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->invalid_count:I

    .line 24
    iput v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->is_valid:I

    .line 28
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/utils/Pub;->get_ao_start_thred(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lobject/p2pipcam/utils/AudioBuffer;->VALID_LIMIT:I

    .line 29
    return-void
.end method

.method public static byte2short([BI)S
    .locals 3
    .param p0, "b"    # [B
    .param p1, "start"    # I

    .prologue
    .line 107
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 108
    .local v0, "val":I
    int-to-short v1, v0

    return v1
.end method

.method public static get_peak_val([B)I
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "result":I
    array-length v5, p0

    div-int/lit8 v1, v5, 0x2

    .line 114
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 120
    return v2

    .line 116
    :cond_0
    mul-int/lit8 v5, v0, 0x2

    invoke-static {p0, v5}, Lobject/p2pipcam/utils/AudioBuffer;->byte2short([BI)S

    move-result v4

    .line 117
    .local v4, "val":S
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 118
    .local v3, "v":I
    if-le v3, v2, :cond_1

    move v2, v3

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private is_valid([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 125
    invoke-static {p1}, Lobject/p2pipcam/utils/AudioBuffer;->get_peak_val([B)I

    move-result v0

    .line 126
    .local v0, "peak_val":I
    iget v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->VALID_LIMIT:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    .line 127
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private set_valid(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 33
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v1, v2, p1

    .line 34
    .local v1, "start":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 35
    :cond_0
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 39
    return-void

    .line 37
    :cond_1
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lobject/p2pipcam/utils/AudioBuffer$AudioData;

    const/4 v3, 0x1

    iput v3, v2, Lobject/p2pipcam/utils/AudioBuffer$AudioData;->is_valid:I

    .line 35
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public add([B)Z
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 44
    :cond_0
    invoke-static {}, Lobject/p2pipcam/utils/AudioDataUtil;->getInstance()Lobject/p2pipcam/utils/AudioDataUtil;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lobject/p2pipcam/utils/AudioDataUtil;->WriteData(I[B)V

    .line 45
    new-instance v0, Lobject/p2pipcam/utils/AudioBuffer$AudioData;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/AudioBuffer$AudioData;-><init>(Lobject/p2pipcam/utils/AudioBuffer;)V

    .line 46
    .local v0, "audio":Lobject/p2pipcam/utils/AudioBuffer$AudioData;
    iput-object p1, v0, Lobject/p2pipcam/utils/AudioBuffer$AudioData;->data:[B

    .line 47
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/AudioBuffer;->is_valid([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->invalid_count:I

    .line 50
    iget v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->is_valid:I

    if-nez v1, :cond_1

    .line 52
    iget v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->valid_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->valid_count:I

    .line 53
    iget v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->valid_count:I

    if-lt v1, v4, :cond_1

    .line 55
    const/4 v1, 0x1

    iput v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->is_valid:I

    .line 56
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lobject/p2pipcam/utils/AudioBuffer;->set_valid(I)V

    .line 71
    :cond_1
    :goto_0
    iget v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->is_valid:I

    iput v1, v0, Lobject/p2pipcam/utils/AudioBuffer$AudioData;->is_valid:I

    .line 72
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit p0

    return v3

    .line 61
    :cond_2
    iget v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->is_valid:I

    if-ne v1, v3, :cond_3

    .line 63
    iget v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->invalid_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->invalid_count:I

    .line 64
    iget v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->invalid_count:I

    if-le v1, v4, :cond_1

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->valid_count:I

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->is_valid:I

    goto :goto_0

    .line 42
    .end local v0    # "audio":Lobject/p2pipcam/utils/AudioBuffer$AudioData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    .restart local v0    # "audio":Lobject/p2pipcam/utils/AudioBuffer$AudioData;
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->valid_count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    monitor-exit p0

    .line 103
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    monitor-exit p0

    .line 89
    :goto_0
    return-object v1

    .line 80
    :cond_0
    iget v2, p0, Lobject/p2pipcam/utils/AudioBuffer;->is_valid:I

    if-ne v2, v4, :cond_2

    .line 82
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/utils/AudioBuffer$AudioData;

    .line 83
    .local v0, "data":Lobject/p2pipcam/utils/AudioBuffer$AudioData;
    iget v1, v0, Lobject/p2pipcam/utils/AudioBuffer$AudioData;->is_valid:I

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lobject/p2pipcam/utils/AudioBuffer$AudioData;->data:[B

    monitor-exit p0

    goto :goto_0

    .line 78
    .end local v0    # "data":Lobject/p2pipcam/utils/AudioBuffer$AudioData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 84
    .restart local v0    # "data":Lobject/p2pipcam/utils/AudioBuffer$AudioData;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->mute_data:[B

    monitor-exit p0

    goto :goto_0

    .line 86
    .end local v0    # "data":Lobject/p2pipcam/utils/AudioBuffer$AudioData;
    :cond_2
    iget-object v2, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 87
    :cond_3
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/utils/AudioBuffer$AudioData;

    .line 88
    .restart local v0    # "data":Lobject/p2pipcam/utils/AudioBuffer$AudioData;
    iget v1, v0, Lobject/p2pipcam/utils/AudioBuffer$AudioData;->is_valid:I

    if-ne v1, v4, :cond_4

    iget-object v1, v0, Lobject/p2pipcam/utils/AudioBuffer$AudioData;->data:[B

    monitor-exit p0

    goto :goto_0

    .line 89
    :cond_4
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioBuffer;->mute_data:[B

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioBuffer;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
