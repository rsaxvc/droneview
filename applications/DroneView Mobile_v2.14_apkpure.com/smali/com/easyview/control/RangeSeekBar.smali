.class public Lcom/easyview/control/RangeSeekBar;
.super Landroid/widget/ImageView;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/control/RangeSeekBar$NumberType;,
        Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;,
        Lcom/easyview/control/RangeSeekBar$Thumb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Landroid/widget/ImageView;"
    }
.end annotation


# static fields
.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final BACKGROUND_COLOR:I = -0x777778

.field public static final DEFAULT_COLOR:I

.field public static final INVALID_POINTER_ID:I = 0xff


# instance fields
.field public final IS_MULTI_COLORED:Z

.field public final LEFT_COLOR:I

.field public final MIDDLE_COLOR:I

.field public final RIGHT_COLOR:I

.field public final SINGLE_COLOR:I

.field private final absoluteMaxValue:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final absoluteMaxValuePrim:D

.field private final absoluteMinValue:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final absoluteMinValuePrim:D

.field private final lineHeight:F

.field private listener:Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mActivePointerId:I

.field private mDownMotionX:F

.field private mIsDragging:Z

.field private mScaledTouchSlop:I

.field mTouchProgressOffset:F

.field private normalizedMaxValue:D

.field private normalizedMinValue:D

.field private notifyWhileDragging:Z

.field private final numberType:Lcom/easyview/control/RangeSeekBar$NumberType;

.field private final padding:F

.field private final paint:Landroid/graphics/Paint;

.field private pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

.field private final thumbHalfHeight:F

.field private final thumbHalfWidth:F

.field private final thumbImage:Landroid/graphics/Bitmap;

.field private final thumbPressedImage:Landroid/graphics/Bitmap;

.field private final thumbWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 68
    const/16 v0, 0xff

    const/16 v1, 0x33

    const/16 v2, 0xb5

    const/16 v3, 0xe5

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/easyview/control/RangeSeekBar;->DEFAULT_COLOR:I

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Landroid/content/Context;)V
    .locals 7
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    .local p1, "absoluteMinValue":Ljava/lang/Number;, "TT;"
    .local p2, "absoluteMaxValue":Ljava/lang/Number;, "TT;"
    const/16 v6, 0xff

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    .line 54
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

    .line 56
    iput-boolean v4, p0, Lcom/easyview/control/RangeSeekBar;->notifyWhileDragging:Z

    .line 105
    iput v6, p0, Lcom/easyview/control/RangeSeekBar;->mActivePointerId:I

    .line 129
    iput-object p1, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    .line 130
    iput-object p2, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValue:Ljava/lang/Number;

    .line 131
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValuePrim:D

    .line 132
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValuePrim:D

    .line 133
    invoke-static {p1}, Lcom/easyview/control/RangeSeekBar$NumberType;->fromNumber(Ljava/lang/Number;)Lcom/easyview/control/RangeSeekBar$NumberType;

    move-result-object v0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->numberType:Lcom/easyview/control/RangeSeekBar$NumberType;

    .line 134
    iput-boolean v3, p0, Lcom/easyview/control/RangeSeekBar;->IS_MULTI_COLORED:Z

    .line 135
    const/16 v0, 0x33

    const/16 v1, 0xb5

    const/16 v2, 0xe5

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->SINGLE_COLOR:I

    .line 136
    iput v3, p0, Lcom/easyview/control/RangeSeekBar;->LEFT_COLOR:I

    .line 137
    iput v3, p0, Lcom/easyview/control/RangeSeekBar;->MIDDLE_COLOR:I

    .line 138
    iput v3, p0, Lcom/easyview/control/RangeSeekBar;->RIGHT_COLOR:I

    .line 139
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    sget v1, Lcom/easyview/common/R$drawable;->seek_thumb_normal:I

    .line 139
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    .line 141
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 142
    sget v1, Lcom/easyview/common/R$drawable;->seek_thumb_pressed:I

    .line 141
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 143
    iget-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbWidth:F

    .line 144
    iget v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbWidth:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfWidth:F

    .line 145
    iget-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfHeight:F

    .line 146
    const v0, 0x3e99999a    # 0.3f

    iget v1, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->lineHeight:F

    .line 147
    iget v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfWidth:F

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    .line 151
    invoke-virtual {p0, v4}, Lcom/easyview/control/RangeSeekBar;->setFocusable(Z)V

    .line 152
    invoke-virtual {p0, v4}, Lcom/easyview/control/RangeSeekBar;->setFocusableInTouchMode(Z)V

    .line 153
    invoke-direct {p0}, Lcom/easyview/control/RangeSeekBar;->init()V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Landroid/content/Context;III)V
    .locals 7
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "singleColor"    # I
    .param p5, "thumbNormal_ResID"    # I
    .param p6, "thumbPressed_ResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroid/content/Context;",
            "III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    .local p1, "absoluteMinValue":Ljava/lang/Number;, "TT;"
    .local p2, "absoluteMaxValue":Ljava/lang/Number;, "TT;"
    const/16 v6, 0xff

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    invoke-direct {p0, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    .line 54
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

    .line 56
    iput-boolean v4, p0, Lcom/easyview/control/RangeSeekBar;->notifyWhileDragging:Z

    .line 105
    iput v6, p0, Lcom/easyview/control/RangeSeekBar;->mActivePointerId:I

    .line 179
    iput-object p1, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    .line 180
    iput-object p2, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValue:Ljava/lang/Number;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValuePrim:D

    .line 182
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValuePrim:D

    .line 183
    invoke-static {p1}, Lcom/easyview/control/RangeSeekBar$NumberType;->fromNumber(Ljava/lang/Number;)Lcom/easyview/control/RangeSeekBar$NumberType;

    move-result-object v0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->numberType:Lcom/easyview/control/RangeSeekBar$NumberType;

    .line 184
    iput-boolean v3, p0, Lcom/easyview/control/RangeSeekBar;->IS_MULTI_COLORED:Z

    .line 185
    if-gez p4, :cond_0

    .end local p4    # "singleColor":I
    :goto_0
    iput p4, p0, Lcom/easyview/control/RangeSeekBar;->SINGLE_COLOR:I

    .line 187
    iput v3, p0, Lcom/easyview/control/RangeSeekBar;->LEFT_COLOR:I

    .line 188
    iput v3, p0, Lcom/easyview/control/RangeSeekBar;->MIDDLE_COLOR:I

    .line 189
    iput v3, p0, Lcom/easyview/control/RangeSeekBar;->RIGHT_COLOR:I

    .line 190
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    .line 192
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 194
    iget-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbWidth:F

    .line 195
    iget v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbWidth:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfWidth:F

    .line 196
    iget-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfHeight:F

    .line 197
    const v0, 0x3e99999a    # 0.3f

    iget v1, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->lineHeight:F

    .line 198
    iget v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfWidth:F

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    .line 202
    invoke-virtual {p0, v4}, Lcom/easyview/control/RangeSeekBar;->setFocusable(Z)V

    .line 203
    invoke-virtual {p0, v4}, Lcom/easyview/control/RangeSeekBar;->setFocusableInTouchMode(Z)V

    .line 204
    invoke-direct {p0}, Lcom/easyview/control/RangeSeekBar;->init()V

    .line 205
    return-void

    .line 185
    .restart local p4    # "singleColor":I
    :cond_0
    const/16 v0, 0x33

    .line 186
    const/16 v1, 0xb5

    const/16 v2, 0xe5

    .line 185
    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p4

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Landroid/content/Context;IIIII)V
    .locals 6
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "leftColor"    # I
    .param p5, "middleColor"    # I
    .param p6, "rightColor"    # I
    .param p7, "thumbNormal_ResID"    # I
    .param p8, "thumbPressed_ResID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroid/content/Context;",
            "IIIII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    .local p1, "absoluteMinValue":Ljava/lang/Number;, "TT;"
    .local p2, "absoluteMaxValue":Ljava/lang/Number;, "TT;"
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 240
    invoke-direct {p0, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    .line 54
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

    .line 56
    iput-boolean v4, p0, Lcom/easyview/control/RangeSeekBar;->notifyWhileDragging:Z

    .line 105
    iput v3, p0, Lcom/easyview/control/RangeSeekBar;->mActivePointerId:I

    .line 241
    iput-object p1, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    .line 242
    iput-object p2, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValue:Ljava/lang/Number;

    .line 243
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValuePrim:D

    .line 244
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValuePrim:D

    .line 245
    invoke-static {p1}, Lcom/easyview/control/RangeSeekBar$NumberType;->fromNumber(Ljava/lang/Number;)Lcom/easyview/control/RangeSeekBar$NumberType;

    move-result-object v0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->numberType:Lcom/easyview/control/RangeSeekBar$NumberType;

    .line 247
    iput-boolean v4, p0, Lcom/easyview/control/RangeSeekBar;->IS_MULTI_COLORED:Z

    .line 248
    iput v2, p0, Lcom/easyview/control/RangeSeekBar;->SINGLE_COLOR:I

    .line 249
    if-gez p4, :cond_0

    .end local p4    # "leftColor":I
    :goto_0
    iput p4, p0, Lcom/easyview/control/RangeSeekBar;->LEFT_COLOR:I

    .line 251
    if-gez p5, :cond_1

    .end local p5    # "middleColor":I
    :goto_1
    iput p5, p0, Lcom/easyview/control/RangeSeekBar;->MIDDLE_COLOR:I

    .line 253
    if-gez p6, :cond_2

    .end local p6    # "rightColor":I
    :goto_2
    iput p6, p0, Lcom/easyview/control/RangeSeekBar;->RIGHT_COLOR:I

    .line 255
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    .line 257
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 259
    iget-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbWidth:F

    .line 260
    iget v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbWidth:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfWidth:F

    .line 261
    iget-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfHeight:F

    .line 262
    const v0, 0x3e99999a    # 0.3f

    iget v1, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->lineHeight:F

    .line 263
    iget v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfWidth:F

    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    .line 267
    invoke-virtual {p0, v4}, Lcom/easyview/control/RangeSeekBar;->setFocusable(Z)V

    .line 268
    invoke-virtual {p0, v4}, Lcom/easyview/control/RangeSeekBar;->setFocusableInTouchMode(Z)V

    .line 269
    invoke-direct {p0}, Lcom/easyview/control/RangeSeekBar;->init()V

    .line 270
    return-void

    .line 249
    .restart local p4    # "leftColor":I
    .restart local p5    # "middleColor":I
    .restart local p6    # "rightColor":I
    :cond_0
    invoke-static {v3, v3, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p4

    goto :goto_0

    .line 251
    .end local p4    # "leftColor":I
    :cond_1
    invoke-static {v3, v2, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p5

    goto :goto_1

    .line 253
    .end local p5    # "middleColor":I
    :cond_2
    invoke-static {v3, v2, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p6

    goto :goto_2
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 483
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 486
    :cond_0
    return-void
.end method

.method private drawThumb(FZLandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "screenCoord"    # F
    .param p2, "pressed"    # Z
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 611
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 612
    :goto_0
    iget v1, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfWidth:F

    sub-float v1, p1, v1

    .line 613
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfHeight:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 611
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 614
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/easyview/control/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private evalPressedThumb(F)Lcom/easyview/control/RangeSeekBar$Thumb;
    .locals 5
    .param p1, "touchX"    # F

    .prologue
    .line 624
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    const/4 v2, 0x0

    .line 625
    .local v2, "result":Lcom/easyview/control/RangeSeekBar$Thumb;, "Lcom/easyview/control/RangeSeekBar$Thumb;"
    iget-wide v3, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, p1, v3, v4}, Lcom/easyview/control/RangeSeekBar;->isInThumbRange(FD)Z

    move-result v1

    .line 626
    .local v1, "minThumbPressed":Z
    iget-wide v3, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, p1, v3, v4}, Lcom/easyview/control/RangeSeekBar;->isInThumbRange(FD)Z

    move-result v0

    .line 627
    .local v0, "maxThumbPressed":Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 631
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    sget-object v2, Lcom/easyview/control/RangeSeekBar$Thumb;->MIN:Lcom/easyview/control/RangeSeekBar$Thumb;

    .line 637
    :cond_0
    :goto_0
    return-object v2

    .line 631
    :cond_1
    sget-object v2, Lcom/easyview/control/RangeSeekBar$Thumb;->MAX:Lcom/easyview/control/RangeSeekBar$Thumb;

    goto :goto_0

    .line 632
    :cond_2
    if-eqz v1, :cond_3

    .line 633
    sget-object v2, Lcom/easyview/control/RangeSeekBar$Thumb;->MIN:Lcom/easyview/control/RangeSeekBar$Thumb;

    .line 634
    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    .line 635
    sget-object v2, Lcom/easyview/control/RangeSeekBar$Thumb;->MAX:Lcom/easyview/control/RangeSeekBar$Thumb;

    goto :goto_0
.end method

.method private final init()V
    .locals 1

    .prologue
    .line 273
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 273
    iput v0, p0, Lcom/easyview/control/RangeSeekBar;->mScaledTouchSlop:I

    .line 275
    return-void
.end method

.method private isInThumbRange(FD)Z
    .locals 2
    .param p1, "touchX"    # F
    .param p2, "normalizedThumbValue"    # D

    .prologue
    .line 651
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    invoke-direct {p0, p2, p3}, Lcom/easyview/control/RangeSeekBar;->normalizedToScreen(D)F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/easyview/control/RangeSeekBar;->thumbHalfWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizedToScreen(D)F
    .locals 5
    .param p1, "normalizedCoord"    # D

    .prologue
    .line 717
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    iget v0, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private normalizedToValue(D)Ljava/lang/Number;
    .locals 7
    .param p1, "normalized"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .prologue
    .line 689
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    iget-object v0, p0, Lcom/easyview/control/RangeSeekBar;->numberType:Lcom/easyview/control/RangeSeekBar$NumberType;

    iget-wide v1, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValuePrim:D

    .line 690
    iget-wide v3, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v5, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v3, v5

    mul-double/2addr v3, p1

    add-double/2addr v1, v3

    .line 689
    invoke-virtual {v0, v1, v2}, Lcom/easyview/control/RangeSeekBar$NumberType;->toNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method private final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 456
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 457
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 458
    .local v1, "pointerId":I
    iget v3, p0, Lcom/easyview/control/RangeSeekBar;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 462
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 463
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/easyview/control/RangeSeekBar;->mDownMotionX:F

    .line 464
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/easyview/control/RangeSeekBar;->mActivePointerId:I

    .line 466
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 462
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private screenToNormalized(F)D
    .locals 9
    .param p1, "screenCoord"    # F

    .prologue
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    const/high16 v8, 0x40000000    # 2.0f

    const-wide/16 v3, 0x0

    .line 728
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getWidth()I

    move-result v2

    .line 729
    .local v2, "width":I
    int-to-float v5, v2

    iget v6, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    mul-float/2addr v6, v8

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 734
    :goto_0
    return-wide v3

    .line 733
    :cond_0
    iget v5, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    sub-float v5, p1, v5

    int-to-float v6, v2

    iget v7, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-double v0, v5

    .line 734
    .local v0, "result":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    goto :goto_0
.end method

.method private final trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 469
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    iget v2, p0, Lcom/easyview/control/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 470
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 471
    .local v1, "x":F
    sget-object v2, Lcom/easyview/control/RangeSeekBar$Thumb;->MIN:Lcom/easyview/control/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/easyview/control/RangeSeekBar;->pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/easyview/control/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    invoke-direct {p0, v1}, Lcom/easyview/control/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/easyview/control/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    sget-object v2, Lcom/easyview/control/RangeSeekBar$Thumb;->MAX:Lcom/easyview/control/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/easyview/control/RangeSeekBar;->pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/easyview/control/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    invoke-direct {p0, v1}, Lcom/easyview/control/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/easyview/control/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_0
.end method

.method private valueToNormalized(Ljava/lang/Number;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    .local p1, "value":Ljava/lang/Number;, "TT;"
    const-wide/16 v0, 0x0

    .line 701
    iget-wide v2, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 705
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v0, v2

    .line 706
    iget-wide v2, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    .line 705
    div-double/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getAbsoluteMaxValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    iget-object v0, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValue:Ljava/lang/Number;

    return-object v0
.end method

.method public getAbsoluteMinValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    iget-object v0, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    return-object v0
.end method

.method public getSelectedMaxValue()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    iget-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v0, v1}, Lcom/easyview/control/RangeSeekBar;->normalizedToValue(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedMinValue()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    iget-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v0, v1}, Lcom/easyview/control/RangeSeekBar;->normalizedToValue(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public isNotifyWhileDragging()Z
    .locals 1

    .prologue
    .line 278
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    iget-boolean v0, p0, Lcom/easyview/control/RangeSeekBar;->notifyWhileDragging:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    const/high16 v9, 0x3f000000    # 0.5f

    .line 525
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 526
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 527
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 528
    iget-boolean v4, p0, Lcom/easyview/control/RangeSeekBar;->IS_MULTI_COLORED:Z

    if-nez v4, :cond_0

    .line 530
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    .line 531
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/easyview/control/RangeSeekBar;->lineHeight:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v9

    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    sub-float/2addr v6, v7

    .line 532
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/easyview/control/RangeSeekBar;->lineHeight:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v9

    .line 530
    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 533
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 534
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 536
    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v4, v5}, Lcom/easyview/control/RangeSeekBar;->normalizedToScreen(D)F

    move-result v4

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 537
    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v4, v5}, Lcom/easyview/control/RangeSeekBar;->normalizedToScreen(D)F

    move-result v4

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 539
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/easyview/control/RangeSeekBar;->SINGLE_COLOR:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 540
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 565
    .end local v0    # "rect":Landroid/graphics/RectF;
    :goto_0
    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v4, v5}, Lcom/easyview/control/RangeSeekBar;->normalizedToScreen(D)F

    move-result v4

    .line 566
    sget-object v5, Lcom/easyview/control/RangeSeekBar$Thumb;->MIN:Lcom/easyview/control/RangeSeekBar$Thumb;

    iget-object v6, p0, Lcom/easyview/control/RangeSeekBar;->pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

    invoke-virtual {v5, v6}, Lcom/easyview/control/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 565
    invoke-direct {p0, v4, v5, p1}, Lcom/easyview/control/RangeSeekBar;->drawThumb(FZLandroid/graphics/Canvas;)V

    .line 568
    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v4, v5}, Lcom/easyview/control/RangeSeekBar;->normalizedToScreen(D)F

    move-result v4

    .line 569
    sget-object v5, Lcom/easyview/control/RangeSeekBar$Thumb;->MAX:Lcom/easyview/control/RangeSeekBar$Thumb;

    iget-object v6, p0, Lcom/easyview/control/RangeSeekBar;->pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

    invoke-virtual {v5, v6}, Lcom/easyview/control/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 568
    invoke-direct {p0, v4, v5, p1}, Lcom/easyview/control/RangeSeekBar;->drawThumb(FZLandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    .line 542
    :cond_0
    :try_start_1
    new-instance v2, Landroid/graphics/RectF;

    iget v4, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    .line 543
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/easyview/control/RangeSeekBar;->lineHeight:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v9

    .line 544
    iget-wide v6, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v6, v7}, Lcom/easyview/control/RangeSeekBar;->normalizedToScreen(D)F

    move-result v6

    .line 545
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/easyview/control/RangeSeekBar;->lineHeight:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v9

    .line 542
    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 546
    .local v2, "rectR":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/easyview/control/RangeSeekBar;->LEFT_COLOR:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 547
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 549
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    .line 550
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/easyview/control/RangeSeekBar;->lineHeight:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v9

    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    sub-float/2addr v6, v7

    .line 551
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/easyview/control/RangeSeekBar;->lineHeight:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v9

    .line 549
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 553
    .local v3, "rectY":Landroid/graphics/RectF;
    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v4, v5}, Lcom/easyview/control/RangeSeekBar;->normalizedToScreen(D)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 554
    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v4, v5}, Lcom/easyview/control/RangeSeekBar;->normalizedToScreen(D)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 555
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/easyview/control/RangeSeekBar;->MIDDLE_COLOR:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 556
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 557
    new-instance v1, Landroid/graphics/RectF;

    .line 558
    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v4, v5}, Lcom/easyview/control/RangeSeekBar;->normalizedToScreen(D)F

    move-result v4

    .line 559
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/easyview/control/RangeSeekBar;->lineHeight:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v9

    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/easyview/control/RangeSeekBar;->padding:F

    sub-float/2addr v6, v7

    .line 560
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/easyview/control/RangeSeekBar;->lineHeight:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v9

    .line 557
    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 561
    .local v1, "rectG":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/easyview/control/RangeSeekBar;->RIGHT_COLOR:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 525
    .end local v1    # "rectG":Landroid/graphics/RectF;
    .end local v2    # "rectR":Landroid/graphics/RectF;
    .end local v3    # "rectY":Landroid/graphics/RectF;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 509
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    monitor-enter p0

    const/16 v1, 0xc8

    .line 510
    .local v1, "width":I
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 513
    :cond_0
    iget-object v2, p0, Lcom/easyview/control/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 514
    .local v0, "height":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 517
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/easyview/control/RangeSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    .line 509
    .end local v0    # "height":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcelable;

    .prologue
    .line 594
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 595
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SUPER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 596
    const-string v1, "MIN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    .line 597
    const-string v1, "MAX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    .line 598
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 580
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 581
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SUPER"

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 582
    const-string v1, "MIN"

    iget-wide v2, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 583
    const-string v1, "MAX"

    iget-wide v2, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 584
    return-object v0
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 492
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easyview/control/RangeSeekBar;->mIsDragging:Z

    .line 493
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 500
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easyview/control/RangeSeekBar;->mIsDragging:Z

    .line 501
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 452
    :goto_0
    return v4

    .line 374
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 375
    .local v0, "action":I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v4, v5

    .line 452
    goto :goto_0

    .line 378
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/easyview/control/RangeSeekBar;->mActivePointerId:I

    .line 379
    iget v4, p0, Lcom/easyview/control/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 380
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/easyview/control/RangeSeekBar;->mDownMotionX:F

    .line 381
    iget v4, p0, Lcom/easyview/control/RangeSeekBar;->mDownMotionX:F

    invoke-direct {p0, v4}, Lcom/easyview/control/RangeSeekBar;->evalPressedThumb(F)Lcom/easyview/control/RangeSeekBar$Thumb;

    move-result-object v4

    iput-object v4, p0, Lcom/easyview/control/RangeSeekBar;->pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

    .line 383
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

    if-nez v4, :cond_2

    .line 384
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {p0, v5}, Lcom/easyview/control/RangeSeekBar;->setPressed(Z)V

    .line 386
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->invalidate()V

    .line 387
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->onStartTrackingTouch()V

    .line 388
    invoke-direct {p0, p1}, Lcom/easyview/control/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 389
    invoke-direct {p0}, Lcom/easyview/control/RangeSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 392
    .end local v2    # "pointerIndex":I
    :pswitch_2
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

    if-eqz v4, :cond_1

    .line 393
    iget-boolean v4, p0, Lcom/easyview/control/RangeSeekBar;->mIsDragging:Z

    if-eqz v4, :cond_4

    .line 394
    invoke-direct {p0, p1}, Lcom/easyview/control/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 407
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/easyview/control/RangeSeekBar;->notifyWhileDragging:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->listener:Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v4, :cond_1

    .line 408
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->listener:Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;

    .line 409
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v7

    .line 408
    invoke-interface {v4, p0, v6, v7}, Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;->onRangeSeekBarValuesChanged(Lcom/easyview/control/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 397
    :cond_4
    iget v4, p0, Lcom/easyview/control/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 398
    .restart local v2    # "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 399
    .local v3, "x":F
    iget v4, p0, Lcom/easyview/control/RangeSeekBar;->mDownMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/easyview/control/RangeSeekBar;->mScaledTouchSlop:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 400
    invoke-virtual {p0, v5}, Lcom/easyview/control/RangeSeekBar;->setPressed(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->invalidate()V

    .line 402
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->onStartTrackingTouch()V

    .line 403
    invoke-direct {p0, p1}, Lcom/easyview/control/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 404
    invoke-direct {p0}, Lcom/easyview/control/RangeSeekBar;->attemptClaimDrag()V

    goto :goto_2

    .line 414
    .end local v2    # "pointerIndex":I
    .end local v3    # "x":F
    :pswitch_3
    iget-boolean v6, p0, Lcom/easyview/control/RangeSeekBar;->mIsDragging:Z

    if-eqz v6, :cond_5

    .line 415
    invoke-direct {p0, p1}, Lcom/easyview/control/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 416
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->onStopTrackingTouch()V

    .line 417
    invoke-virtual {p0, v4}, Lcom/easyview/control/RangeSeekBar;->setPressed(Z)V

    .line 425
    :goto_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/easyview/control/RangeSeekBar;->pressedThumb:Lcom/easyview/control/RangeSeekBar$Thumb;

    .line 426
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->invalidate()V

    .line 427
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->listener:Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v4, :cond_1

    .line 428
    iget-object v4, p0, Lcom/easyview/control/RangeSeekBar;->listener:Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;

    .line 429
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v7

    .line 428
    invoke-interface {v4, p0, v6, v7}, Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;->onRangeSeekBarValuesChanged(Lcom/easyview/control/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 421
    :cond_5
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->onStartTrackingTouch()V

    .line 422
    invoke-direct {p0, p1}, Lcom/easyview/control/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 423
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->onStopTrackingTouch()V

    goto :goto_3

    .line 433
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 435
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/easyview/control/RangeSeekBar;->mDownMotionX:F

    .line 436
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/easyview/control/RangeSeekBar;->mActivePointerId:I

    .line 437
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 441
    .end local v1    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/easyview/control/RangeSeekBar;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 442
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 445
    :pswitch_6
    iget-boolean v6, p0, Lcom/easyview/control/RangeSeekBar;->mIsDragging:Z

    if-eqz v6, :cond_6

    .line 446
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->onStopTrackingTouch()V

    .line 447
    invoke-virtual {p0, v4}, Lcom/easyview/control/RangeSeekBar;->setPressed(Z)V

    .line 449
    :cond_6
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setNormalizedMaxValue(D)V
    .locals 6
    .param p1, "value"    # D

    .prologue
    .line 675
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    const-wide/16 v0, 0x0

    .line 676
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 675
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    .line 677
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->invalidate()V

    .line 678
    return-void
.end method

.method public setNormalizedMinValue(D)V
    .locals 6
    .param p1, "value"    # D

    .prologue
    .line 662
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    const-wide/16 v0, 0x0

    .line 663
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMaxValue:D

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 662
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->normalizedMinValue:D

    .line 664
    invoke-virtual {p0}, Lcom/easyview/control/RangeSeekBar;->invalidate()V

    .line 665
    return-void
.end method

.method public setNotifyWhileDragging(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 288
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    iput-boolean p1, p0, Lcom/easyview/control/RangeSeekBar;->notifyWhileDragging:Z

    .line 289
    return-void
.end method

.method public setOnRangeSeekBarChangeListener(Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    .local p1, "listener":Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;, "Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener<TT;>;"
    iput-object p1, p0, Lcom/easyview/control/RangeSeekBar;->listener:Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;

    .line 93
    return-void
.end method

.method public setSelectedMaxValue(Ljava/lang/Number;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    .local p1, "value":Ljava/lang/Number;, "TT;"
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 359
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/easyview/control/RangeSeekBar;->setNormalizedMaxValue(D)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-direct {p0, p1}, Lcom/easyview/control/RangeSeekBar;->valueToNormalized(Ljava/lang/Number;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/easyview/control/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_0
.end method

.method public setSelectedMinValue(Ljava/lang/Number;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/easyview/control/RangeSeekBar;, "Lcom/easyview/control/RangeSeekBar<TT;>;"
    .local p1, "value":Ljava/lang/Number;, "TT;"
    const-wide/16 v4, 0x0

    .line 331
    iget-wide v0, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v2, p0, Lcom/easyview/control/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v0, v2

    cmpl-double v0, v4, v0

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0, v4, v5}, Lcom/easyview/control/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-direct {p0, p1}, Lcom/easyview/control/RangeSeekBar;->valueToNormalized(Ljava/lang/Number;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/easyview/control/RangeSeekBar;->setNormalizedMinValue(D)V

    goto :goto_0
.end method
