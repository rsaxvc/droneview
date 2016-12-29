.class public Lobject/p2pwificam/clientActivity/MyRender;
.super Ljava/lang/Object;
.source "MyRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field bNeedSleep:Z

.field mHeight:I

.field mUByteBuffer:Ljava/nio/ByteBuffer;

.field mVByteBuffer:Ljava/nio/ByteBuffer;

.field mWidth:I

.field mYByteBuffer:Ljava/nio/ByteBuffer;

.field private nCount:I

.field positionBuffer:Ljava/nio/FloatBuffer;

.field final positionBufferData:[F

.field positionSlot:I

.field programHandle:I

.field texRangeSlot:I

.field textCoodBuffer:Ljava/nio/FloatBuffer;

.field final textCoodBufferData:[F

.field texture:[I

.field textureSlot:[I

.field vertexShader:I

.field yuvData:[B

.field yuvFragmentShader:I


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 8
    .param p1, "paramGLSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    .line 18
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/MyRender;->mUByteBuffer:Ljava/nio/ByteBuffer;

    .line 19
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/MyRender;->mVByteBuffer:Ljava/nio/ByteBuffer;

    .line 20
    iput v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    .line 21
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/MyRender;->mYByteBuffer:Ljava/nio/ByteBuffer;

    .line 22
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionBuffer:Ljava/nio/FloatBuffer;

    .line 24
    iput v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionSlot:I

    .line 25
    iput v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    .line 26
    iput v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->texRangeSlot:I

    .line 27
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->texture:[I

    .line 28
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->textureSlot:[I

    .line 29
    iput v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->vertexShader:I

    .line 30
    iput v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->yuvFragmentShader:I

    .line 32
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/MyRender;->yuvData:[B

    .line 35
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/MyRender;->textCoodBuffer:Ljava/nio/FloatBuffer;

    .line 37
    const/4 v2, 0x1

    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->bNeedSleep:Z

    .line 38
    iput v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->nCount:I

    .line 42
    const/16 v2, 0x10

    new-array v1, v2, [F

    .line 44
    .local v1, "arrayOfFloat1":[F
    aput v4, v1, v5

    .line 45
    const/4 v2, 0x1

    aput v4, v1, v2

    .line 46
    const/4 v2, 0x2

    aput v4, v1, v2

    .line 47
    const/4 v2, 0x3

    aput v3, v1, v2

    .line 49
    const/4 v2, 0x4

    aput v4, v1, v2

    .line 50
    const/4 v2, 0x5

    aput v3, v1, v2

    .line 51
    const/4 v2, 0x6

    aput v4, v1, v2

    .line 52
    const/4 v2, 0x7

    aput v3, v1, v2

    .line 54
    const/16 v2, 0x8

    aput v3, v1, v2

    .line 55
    const/16 v2, 0x9

    aput v4, v1, v2

    .line 56
    const/16 v2, 0xa

    aput v4, v1, v2

    .line 57
    const/16 v2, 0xb

    aput v3, v1, v2

    .line 59
    const/16 v2, 0xc

    aput v3, v1, v2

    .line 60
    const/16 v2, 0xd

    aput v3, v1, v2

    .line 61
    const/16 v2, 0xe

    aput v4, v1, v2

    .line 62
    const/16 v2, 0xf

    aput v3, v1, v2

    .line 64
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->textCoodBufferData:[F

    .line 66
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 68
    .local v0, "arrayOfFloat":[F
    aput v7, v0, v5

    .line 69
    const/4 v2, 0x1

    aput v3, v0, v2

    .line 70
    const/4 v2, 0x2

    aput v4, v0, v2

    .line 71
    const/4 v2, 0x3

    aput v3, v0, v2

    .line 73
    const/4 v2, 0x4

    aput v7, v0, v2

    .line 74
    const/4 v2, 0x5

    aput v7, v0, v2

    .line 75
    const/4 v2, 0x6

    aput v4, v0, v2

    .line 76
    const/4 v2, 0x7

    aput v3, v0, v2

    .line 78
    const/16 v2, 0x8

    aput v3, v0, v2

    .line 79
    const/16 v2, 0x9

    aput v3, v0, v2

    .line 80
    const/16 v2, 0xa

    aput v4, v0, v2

    .line 81
    const/16 v2, 0xb

    aput v3, v0, v2

    .line 83
    const/16 v2, 0xc

    aput v3, v0, v2

    .line 84
    const/16 v2, 0xd

    aput v7, v0, v2

    .line 85
    const/16 v2, 0xe

    aput v4, v0, v2

    .line 86
    const/16 v2, 0xf

    aput v3, v0, v2

    .line 88
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionBufferData:[F

    .line 90
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 92
    return-void
.end method

.method public static compileShader(Ljava/lang/String;I)I
    .locals 5
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "paramInt"    # I

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 97
    .local v1, "i":I
    if-eqz v1, :cond_0

    .line 99
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 100
    .local v0, "arrayOfInt":[I
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 101
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 102
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 103
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 105
    const-string v2, "compileShader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "compile shader err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 107
    const/4 v1, 0x0

    .line 110
    .end local v0    # "arrayOfInt":[I
    :cond_0
    return v1
.end method


# virtual methods
.method public createShaders()J
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 115
    const-string v1, "uniform sampler2D Ytex;\n"

    .line 116
    .local v1, "fragmentShaderCode":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "uniform sampler2D Utex;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "uniform sampler2D Vtex;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "precision mediump float;  \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "varying vec4 VaryingTexCoord0; \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "vec4 color;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "void main()\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "{\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "float yuv0 = (texture2D(Ytex,VaryingTexCoord0.xy)).r;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "float yuv1 = (texture2D(Utex,VaryingTexCoord0.xy)).r;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "float yuv2 = (texture2D(Vtex,VaryingTexCoord0.xy)).r;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "color.r = yuv0 + 1.4022 * yuv2 - 0.7011;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "color.r = (color.r < 0.0) ? 0.0 : ((color.r > 1.0) ? 1.0 : color.r);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "color.g = yuv0 - 0.3456 * yuv1 - 0.7145 * yuv2 + 0.53005;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "color.g = (color.g < 0.0) ? 0.0 : ((color.g > 1.0) ? 1.0 : color.g);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "color.b = yuv0 + 1.771 * yuv1 - 0.8855;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "color.b = (color.b < 0.0) ? 0.0 : ((color.b > 1.0) ? 1.0 : color.b);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "gl_FragColor = color;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "}\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v4, "uniform mat4 uMVPMatrix;   \n"

    .line 137
    .local v4, "vertexShaderCode":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "attribute vec4 vPosition;  \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "attribute vec4 myTexCoord; \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "varying vec4 VaryingTexCoord0; \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "void main(){               \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "VaryingTexCoord0 = myTexCoord; \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "gl_Position = vPosition; \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "}  \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    new-array v0, v9, [I

    .line 146
    .local v0, "arrayOfInt":[I
    const v5, 0x8b31

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/MyRender;->compileShader(Ljava/lang/String;I)I

    move-result v2

    .line 147
    .local v2, "i":I
    iput v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->vertexShader:I

    .line 148
    if-nez v2, :cond_0

    .line 149
    const-string v5, "createShaders"

    const-string v6, "failed when compileShader(vertex)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    const v5, 0x8b30

    invoke-static {v1, v5}, Lobject/p2pwificam/clientActivity/MyRender;->compileShader(Ljava/lang/String;I)I

    move-result v3

    .line 152
    .local v3, "j":I
    iput v3, p0, Lobject/p2pwificam/clientActivity/MyRender;->yuvFragmentShader:I

    .line 153
    if-nez v3, :cond_1

    .line 154
    const-string v5, "createShaders"

    const-string v6, "failed when compileShader(fragment)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    iput v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    .line 156
    iget v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    iget v6, p0, Lobject/p2pwificam/clientActivity/MyRender;->vertexShader:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 157
    iget v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    iget v6, p0, Lobject/p2pwificam/clientActivity/MyRender;->yuvFragmentShader:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 158
    iget v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 159
    iget v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    const v6, 0x8b82

    invoke-static {v5, v6, v0, v8}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 161
    aget v5, v0, v8

    if-nez v5, :cond_2

    .line 163
    const-string v5, "createShaders"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "link program err:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    invoke-static {v7}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MyRender;->destroyShaders()J

    .line 167
    :cond_2
    iget v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    const-string v6, "myTexCoord"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->texRangeSlot:I

    .line 169
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->textureSlot:[I

    iget v6, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    const-string v7, "Ytex"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    aput v6, v5, v8

    .line 170
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->textureSlot:[I

    iget v6, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    const-string v7, "Utex"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    aput v6, v5, v9

    .line 171
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->textureSlot:[I

    iget v6, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    const-string v7, "Vtex"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    aput v6, v5, v10

    .line 173
    iget v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    const-string v6, "vPosition"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionSlot:I

    .line 175
    const-string v5, "aaaaa"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "texRangeSlot: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lobject/p2pwificam/clientActivity/MyRender;->texRangeSlot:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v5, "aaaaa"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "positionSlot: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionSlot:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v5, "aaaaa"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "textureSlot[0]: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MyRender;->textureSlot:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v5, "aaaaa"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "textureSlot[1]: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MyRender;->textureSlot:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v5, "aaaaa"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "textureSlot[2]: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MyRender;->textureSlot:[I

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-wide/16 v5, 0x0

    return-wide v5
.end method

.method public destroyShaders()J
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    if-eqz v0, :cond_0

    .line 188
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    iget v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->yuvFragmentShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 189
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    iget v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->vertexShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 190
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 191
    iput v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    .line 193
    :cond_0
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->yuvFragmentShader:I

    if-eqz v0, :cond_1

    .line 195
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->yuvFragmentShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 196
    iput v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->yuvFragmentShader:I

    .line 198
    :cond_1
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->vertexShader:I

    if-eqz v0, :cond_2

    .line 200
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->vertexShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 201
    iput v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->vertexShader:I

    .line 203
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public draw(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I
    .locals 7
    .param p1, "paramByteBuffer1"    # Ljava/nio/ByteBuffer;
    .param p2, "paramByteBuffer2"    # Ljava/nio/ByteBuffer;
    .param p3, "paramByteBuffer3"    # Ljava/nio/ByteBuffer;
    .param p4, "paramInt1"    # I
    .param p5, "paramInt2"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 210
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 211
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 212
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->programHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 213
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 214
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 215
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->texture:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0, p4, p5, p1}, Lobject/p2pwificam/clientActivity/MyRender;->loadTexture(IIILjava/nio/Buffer;)I

    .line 216
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 218
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->texture:[I

    aget v0, v0, v5

    shr-int/lit8 v2, p4, 0x1

    shr-int/lit8 v4, p5, 0x1

    invoke-virtual {p0, v0, v2, v4, p2}, Lobject/p2pwificam/clientActivity/MyRender;->loadTexture(IIILjava/nio/Buffer;)I

    .line 219
    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 221
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->texture:[I

    aget v0, v0, v6

    shr-int/lit8 v2, p4, 0x1

    shr-int/lit8 v4, p5, 0x1

    invoke-virtual {p0, v0, v2, v4, p3}, Lobject/p2pwificam/clientActivity/MyRender;->loadTexture(IIILjava/nio/Buffer;)I

    .line 222
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->textureSlot:[I

    aget v0, v0, v3

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 223
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->textureSlot:[I

    aget v0, v0, v5

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 224
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->textureSlot:[I

    aget v0, v0, v6

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 226
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 228
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionSlot:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 231
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->textCoodBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->texRangeSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 234
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->texRangeSlot:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->textCoodBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 236
    const/4 v0, 0x5

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 237
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 239
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->texRangeSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 241
    return v3
.end method

.method public loadTexture(IIILjava/nio/Buffer;)I
    .locals 9
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I
    .param p3, "paramInt3"    # I
    .param p4, "paramBuffer"    # Ljava/nio/Buffer;

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/16 v2, 0x1909

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 246
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 247
    const/16 v3, 0x2801

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 248
    const/16 v3, 0x2800

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 249
    const/16 v3, 0x2802

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 250
    const/16 v3, 0x2803

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 251
    const/16 v7, 0x1401

    move v3, p2

    move v4, p3

    move v5, v1

    move v6, v2

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 252
    return v1
.end method

.method public loadVBOs()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->textCoodBufferData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->textCoodBuffer:Ljava/nio/FloatBuffer;

    .line 258
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->textCoodBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->textCoodBufferData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionBufferData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionBuffer:Ljava/nio/FloatBuffer;

    .line 261
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionBufferData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    return v2
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "paramGL10"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 269
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->mYByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->mUByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->mVByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 273
    :cond_0
    monitor-exit p0

    .line 291
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->bNeedSleep:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 279
    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :cond_2
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->bNeedSleep:Z

    .line 288
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mYByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->mUByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/MyRender;->mVByteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    iget v5, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lobject/p2pwificam/clientActivity/MyRender;->draw(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I

    .line 271
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 280
    :catch_0
    move-exception v6

    .line 282
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "paramGL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 296
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "paramGL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "paramEGLConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x0

    .line 300
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 301
    const/4 v0, 0x3

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->texture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 302
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MyRender;->createShaders()J

    .line 303
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MyRender;->loadVBOs()I

    .line 304
    return-void
.end method

.method public unloadVBOs()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MyRender;->positionBuffer:Ljava/nio/FloatBuffer;

    .line 311
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method writeSample([BII)I
    .locals 6
    .param p1, "paramArrayOfByte"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 316
    monitor-enter p0

    .line 317
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 319
    :cond_0
    :try_start_0
    const-string v0, "writesample"

    const-string v2, "invalid param"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    monitor-exit p0

    move v0, v1

    .line 360
    :goto_0
    return v0

    .line 326
    :cond_1
    iget v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    if-ne p2, v1, :cond_2

    iget v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    if-eq p3, v1, :cond_3

    .line 328
    :cond_2
    iput p2, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    .line 329
    iput p3, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    .line 330
    iget v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    iget v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mYByteBuffer:Ljava/nio/ByteBuffer;

    .line 331
    iget v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    iget v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mUByteBuffer:Ljava/nio/ByteBuffer;

    .line 332
    iget v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    iget v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mVByteBuffer:Ljava/nio/ByteBuffer;

    .line 333
    const-string v1, "writesample"

    const-string v2, "allocate (%d,%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mYByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_4

    .line 339
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mYByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 340
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mYByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iget v3, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    iget v4, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    mul-int/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 341
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mYByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 344
    :cond_4
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mUByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_5

    .line 346
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mUByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mUByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    iget v3, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    mul-int/2addr v2, v3

    iget v3, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    iget v4, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 348
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mUByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 351
    :cond_5
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mVByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_6

    .line 353
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mVByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 354
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mVByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    iget v3, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x4

    iget v3, p0, Lobject/p2pwificam/clientActivity/MyRender;->mWidth:I

    iget v4, p0, Lobject/p2pwificam/clientActivity/MyRender;->mHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 355
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->mVByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/MyRender;->bNeedSleep:Z

    .line 360
    monitor-exit p0

    goto/16 :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
