.class final Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;
.super Ljava/lang/Object;
.source "DecodeFormatManager.java"


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field static final DATA_MATRIX_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final ONE_D_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final PRODUCT_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final QR_CODE_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 30
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    .line 37
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    .line 38
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Ljava/util/Vector;

    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    .line 44
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 45
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;

    .line 50
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    .line 52
    sget-object v0, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Vector;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "scanFormats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "SCAN_FORMATS"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "scanFormatsString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 61
    sget-object v2, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 63
    :cond_0
    const-string v2, "SCAN_MODE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->parseDecodeFormats(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    return-object v2
.end method

.method static parseDecodeFormats(Landroid/net/Uri;)Ljava/util/Vector;
    .locals 4
    .param p0, "inputUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string v1, "SCAN_FORMATS"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    sget-object v2, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 71
    :cond_0
    const-string v1, "SCAN_MODE"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->parseDecodeFormats(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    return-object v1
.end method

.method private static parseDecodeFormats(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "decodeMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "scanFormats":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 77
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 79
    .local v1, "formats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    .end local v1    # "formats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    :goto_1
    return-object v1

    .line 79
    .restart local v1    # "formats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "format":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v0    # "format":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 87
    .end local v1    # "formats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    :cond_1
    if-eqz p1, :cond_5

    .line 88
    const-string v2, "PRODUCT_MODE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Vector;

    goto :goto_1

    .line 91
    :cond_2
    const-string v2, "QR_CODE_MODE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;

    goto :goto_1

    .line 94
    :cond_3
    const-string v2, "DATA_MATRIX_MODE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    goto :goto_1

    .line 97
    :cond_4
    const-string v2, "ONE_D_MODE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 98
    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    goto :goto_1

    .line 101
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method
