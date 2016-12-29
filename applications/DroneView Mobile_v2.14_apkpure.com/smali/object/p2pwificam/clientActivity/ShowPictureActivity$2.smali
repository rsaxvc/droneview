.class Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ShowPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/ShowPictureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    .line 109
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v9, 0x43480000    # 200.0f

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 112
    const-string v2, "tag"

    const-string v3, "(%f, %f) -> (%f, %f) %f %f "

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/high16 v2, -0x3c380000    # -400.0f

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    .line 115
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$6(Lobject/p2pwificam/clientActivity/ShowPictureActivity;I)V

    .line 116
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)I

    move-result v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$2(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easyview/camera/EVBaseCamera;->getEventDetailList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    invoke-static {v2, v7}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$6(Lobject/p2pwificam/clientActivity/ShowPictureActivity;I)V

    .line 117
    :cond_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)I

    move-result v3

    # invokes: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->getBmp(I)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$7(Lobject/p2pwificam/clientActivity/ShowPictureActivity;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->image:Landroid/widget/ImageView;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$8(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    :cond_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->tvTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$1(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, " %d / %d "

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$2(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easyview/camera/EVBaseCamera;->getEventDetailList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    const/high16 v2, 0x43c80000    # 400.0f

    cmpl-float v2, p3, v2

    if-lez v2, :cond_5

    .line 123
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$6(Lobject/p2pwificam/clientActivity/ShowPictureActivity;I)V

    .line 124
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)I

    move-result v2

    if-gez v2, :cond_3

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$2(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easyview/camera/EVBaseCamera;->getEventDetailList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$6(Lobject/p2pwificam/clientActivity/ShowPictureActivity;I)V

    .line 125
    :cond_3
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)I

    move-result v3

    # invokes: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->getBmp(I)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$7(Lobject/p2pwificam/clientActivity/ShowPictureActivity;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->image:Landroid/widget/ImageView;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$8(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    :cond_4
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->tvTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$1(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, " %d / %d "

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->position:I
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$2;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$2(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easyview/camera/EVBaseCamera;->getEventDetailList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 147
    :cond_6
    :goto_0
    return v1

    .line 139
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v9

    if-gtz v2, :cond_6

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v9

    if-gtz v2, :cond_6

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto :goto_0
.end method
