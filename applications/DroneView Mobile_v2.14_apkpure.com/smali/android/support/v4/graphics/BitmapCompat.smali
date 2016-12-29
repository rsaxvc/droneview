.class public Landroid/support/v4/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/BitmapCompat$BaseBitmapImpl;,
        Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;,
        Landroid/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .local v0, "version":I
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 66
    new-instance v1, Landroid/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v1, Landroid/support/v4/graphics/BitmapCompat$BaseBitmapImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/BitmapCompat$BaseBitmapImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    sget-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hasMipMap"    # Z

    .prologue
    .line 77
    sget-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    .line 78
    return-void
.end method
