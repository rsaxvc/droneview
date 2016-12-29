.class public Lobject/p2pwificam/clientActivity/other/LoadedImage;
.super Ljava/lang/Object;
.source "LoadedImage.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/LoadedImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 17
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/LoadedImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
