.class final enum Lcom/easyview/control/RangeSeekBar$NumberType;
.super Ljava/lang/Enum;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/control/RangeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/easyview/control/RangeSeekBar$NumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$easyview$control$RangeSeekBar$NumberType:[I

.field public static final enum BIG_DECIMAL:Lcom/easyview/control/RangeSeekBar$NumberType;

.field public static final enum BYTE:Lcom/easyview/control/RangeSeekBar$NumberType;

.field public static final enum DOUBLE:Lcom/easyview/control/RangeSeekBar$NumberType;

.field private static final synthetic ENUM$VALUES:[Lcom/easyview/control/RangeSeekBar$NumberType;

.field public static final enum FLOAT:Lcom/easyview/control/RangeSeekBar$NumberType;

.field public static final enum INTEGER:Lcom/easyview/control/RangeSeekBar$NumberType;

.field public static final enum LONG:Lcom/easyview/control/RangeSeekBar$NumberType;

.field public static final enum SHORT:Lcom/easyview/control/RangeSeekBar$NumberType;


# direct methods
.method static synthetic $SWITCH_TABLE$com$easyview$control$RangeSeekBar$NumberType()[I
    .locals 3

    .prologue
    .line 751
    sget-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->$SWITCH_TABLE$com$easyview$control$RangeSeekBar$NumberType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/easyview/control/RangeSeekBar$NumberType;->values()[Lcom/easyview/control/RangeSeekBar$NumberType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->BIG_DECIMAL:Lcom/easyview/control/RangeSeekBar$NumberType;

    invoke-virtual {v1}, Lcom/easyview/control/RangeSeekBar$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->BYTE:Lcom/easyview/control/RangeSeekBar$NumberType;

    invoke-virtual {v1}, Lcom/easyview/control/RangeSeekBar$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->DOUBLE:Lcom/easyview/control/RangeSeekBar$NumberType;

    invoke-virtual {v1}, Lcom/easyview/control/RangeSeekBar$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->FLOAT:Lcom/easyview/control/RangeSeekBar$NumberType;

    invoke-virtual {v1}, Lcom/easyview/control/RangeSeekBar$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->INTEGER:Lcom/easyview/control/RangeSeekBar$NumberType;

    invoke-virtual {v1}, Lcom/easyview/control/RangeSeekBar$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->LONG:Lcom/easyview/control/RangeSeekBar$NumberType;

    invoke-virtual {v1}, Lcom/easyview/control/RangeSeekBar$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->SHORT:Lcom/easyview/control/RangeSeekBar$NumberType;

    invoke-virtual {v1}, Lcom/easyview/control/RangeSeekBar$NumberType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->$SWITCH_TABLE$com$easyview$control$RangeSeekBar$NumberType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 752
    new-instance v0, Lcom/easyview/control/RangeSeekBar$NumberType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v3}, Lcom/easyview/control/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->LONG:Lcom/easyview/control/RangeSeekBar$NumberType;

    new-instance v0, Lcom/easyview/control/RangeSeekBar$NumberType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v4}, Lcom/easyview/control/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->DOUBLE:Lcom/easyview/control/RangeSeekBar$NumberType;

    new-instance v0, Lcom/easyview/control/RangeSeekBar$NumberType;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v5}, Lcom/easyview/control/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->INTEGER:Lcom/easyview/control/RangeSeekBar$NumberType;

    new-instance v0, Lcom/easyview/control/RangeSeekBar$NumberType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v6}, Lcom/easyview/control/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->FLOAT:Lcom/easyview/control/RangeSeekBar$NumberType;

    new-instance v0, Lcom/easyview/control/RangeSeekBar$NumberType;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v7}, Lcom/easyview/control/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->SHORT:Lcom/easyview/control/RangeSeekBar$NumberType;

    new-instance v0, Lcom/easyview/control/RangeSeekBar$NumberType;

    const-string v1, "BYTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/easyview/control/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->BYTE:Lcom/easyview/control/RangeSeekBar$NumberType;

    new-instance v0, Lcom/easyview/control/RangeSeekBar$NumberType;

    const-string v1, "BIG_DECIMAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/easyview/control/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->BIG_DECIMAL:Lcom/easyview/control/RangeSeekBar$NumberType;

    .line 751
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/easyview/control/RangeSeekBar$NumberType;

    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->LONG:Lcom/easyview/control/RangeSeekBar$NumberType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->DOUBLE:Lcom/easyview/control/RangeSeekBar$NumberType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->INTEGER:Lcom/easyview/control/RangeSeekBar$NumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->FLOAT:Lcom/easyview/control/RangeSeekBar$NumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/easyview/control/RangeSeekBar$NumberType;->SHORT:Lcom/easyview/control/RangeSeekBar$NumberType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/easyview/control/RangeSeekBar$NumberType;->BYTE:Lcom/easyview/control/RangeSeekBar$NumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/easyview/control/RangeSeekBar$NumberType;->BIG_DECIMAL:Lcom/easyview/control/RangeSeekBar$NumberType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->ENUM$VALUES:[Lcom/easyview/control/RangeSeekBar$NumberType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromNumber(Ljava/lang/Number;)Lcom/easyview/control/RangeSeekBar$NumberType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Number;",
            ">(TE;)",
            "Lcom/easyview/control/RangeSeekBar$NumberType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 755
    .local p0, "value":Ljava/lang/Number;, "TE;"
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 756
    sget-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->LONG:Lcom/easyview/control/RangeSeekBar$NumberType;

    .line 774
    :goto_0
    return-object v0

    .line 758
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 759
    sget-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->DOUBLE:Lcom/easyview/control/RangeSeekBar$NumberType;

    goto :goto_0

    .line 761
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 762
    sget-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->INTEGER:Lcom/easyview/control/RangeSeekBar$NumberType;

    goto :goto_0

    .line 764
    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 765
    sget-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->FLOAT:Lcom/easyview/control/RangeSeekBar$NumberType;

    goto :goto_0

    .line 767
    :cond_3
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 768
    sget-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->SHORT:Lcom/easyview/control/RangeSeekBar$NumberType;

    goto :goto_0

    .line 770
    :cond_4
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    .line 771
    sget-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->BYTE:Lcom/easyview/control/RangeSeekBar$NumberType;

    goto :goto_0

    .line 773
    :cond_5
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_6

    .line 774
    sget-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->BIG_DECIMAL:Lcom/easyview/control/RangeSeekBar$NumberType;

    goto :goto_0

    .line 776
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/easyview/control/RangeSeekBar$NumberType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/easyview/control/RangeSeekBar$NumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/easyview/control/RangeSeekBar$NumberType;

    return-object v0
.end method

.method public static values()[Lcom/easyview/control/RangeSeekBar$NumberType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/easyview/control/RangeSeekBar$NumberType;->ENUM$VALUES:[Lcom/easyview/control/RangeSeekBar$NumberType;

    array-length v1, v0

    new-array v2, v1, [Lcom/easyview/control/RangeSeekBar$NumberType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toNumber(D)Ljava/lang/Number;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 781
    invoke-static {}, Lcom/easyview/control/RangeSeekBar$NumberType;->$SWITCH_TABLE$com$easyview$control$RangeSeekBar$NumberType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 797
    new-instance v0, Ljava/lang/InstantiationError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 798
    const-string v2, " to a Number object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 797
    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :pswitch_0
    new-instance v0, Ljava/lang/Long;

    double-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 795
    :goto_0
    return-object v0

    .line 785
    :pswitch_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 787
    :pswitch_2
    new-instance v0, Ljava/lang/Integer;

    double-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 789
    :pswitch_3
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1, p2}, Ljava/lang/Float;-><init>(D)V

    goto :goto_0

    .line 791
    :pswitch_4
    new-instance v0, Ljava/lang/Short;

    double-to-int v1, p1

    int-to-short v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    goto :goto_0

    .line 793
    :pswitch_5
    new-instance v0, Ljava/lang/Byte;

    double-to-int v1, p1

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0

    .line 795
    :pswitch_6
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    goto :goto_0

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
