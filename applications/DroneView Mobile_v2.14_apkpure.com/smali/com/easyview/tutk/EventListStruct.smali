.class public Lcom/easyview/tutk/EventListStruct;
.super Ljava/lang/Object;
.source "EventListStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public channel:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public count:B
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public endflag:B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easyview/tutk/EventStruct;",
            ">;"
        }
    .end annotation
.end field

.field public index:B
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public reserved:B
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field

.field public total:I
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/EventListStruct;->eventList:Ljava/util/List;

    .line 12
    return-void
.end method


# virtual methods
.method public read(Lstruct/StructUnpacker;)I
    .locals 4
    .param p1, "up"    # Lstruct/StructUnpacker;

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p1, p0}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 33
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-byte v3, p0, Lcom/easyview/tutk/EventListStruct;->count:B
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v3, :cond_0

    .line 43
    .end local v2    # "i":I
    :goto_1
    iget-byte v3, p0, Lcom/easyview/tutk/EventListStruct;->endflag:B

    return v3

    .line 35
    .restart local v2    # "i":I
    :cond_0
    :try_start_1
    new-instance v1, Lcom/easyview/tutk/EventStruct;

    invoke-direct {v1}, Lcom/easyview/tutk/EventStruct;-><init>()V

    .line 36
    .local v1, "event":Lcom/easyview/tutk/EventStruct;
    invoke-virtual {p1, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 37
    iget-object v3, p0, Lcom/easyview/tutk/EventListStruct;->eventList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lstruct/StructException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "event":Lcom/easyview/tutk/EventStruct;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_1
.end method
