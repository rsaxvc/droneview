.class public Lcom/easyview/tutk/WifiAPListStruct;
.super Ljava/lang/Object;
.source "WifiAPListStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public count:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public list:[Lcom/easyview/tutk/WifiAPStruct;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/easyview/tutk/WifiAPStruct;

    iput-object v0, p0, Lcom/easyview/tutk/WifiAPListStruct;->list:[Lcom/easyview/tutk/WifiAPStruct;

    .line 9
    return-void
.end method


# virtual methods
.method public read(Lstruct/StructUnpacker;)V
    .locals 4
    .param p1, "up"    # Lstruct/StructUnpacker;

    .prologue
    .line 17
    :try_start_0
    invoke-virtual {p1, p0}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 18
    iget v2, p0, Lcom/easyview/tutk/WifiAPListStruct;->count:I

    if-lez v2, :cond_0

    .line 20
    iget v2, p0, Lcom/easyview/tutk/WifiAPListStruct;->count:I

    new-array v2, v2, [Lcom/easyview/tutk/WifiAPStruct;

    iput-object v2, p0, Lcom/easyview/tutk/WifiAPListStruct;->list:[Lcom/easyview/tutk/WifiAPStruct;

    .line 21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/easyview/tutk/WifiAPListStruct;->count:I

    if-lt v1, v2, :cond_1

    .line 31
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 23
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/easyview/tutk/WifiAPListStruct;->list:[Lcom/easyview/tutk/WifiAPStruct;

    new-instance v3, Lcom/easyview/tutk/WifiAPStruct;

    invoke-direct {v3}, Lcom/easyview/tutk/WifiAPStruct;-><init>()V

    aput-object v3, v2, v1

    .line 24
    iget-object v2, p0, Lcom/easyview/tutk/WifiAPListStruct;->list:[Lcom/easyview/tutk/WifiAPStruct;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_1
.end method
