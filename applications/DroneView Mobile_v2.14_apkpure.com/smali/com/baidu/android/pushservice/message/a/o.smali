.class public Lcom/baidu/android/pushservice/message/a/o;
.super Lcom/baidu/android/pushservice/message/a/d;


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/android/pushservice/message/a/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/message/a/o;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/message/a/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;[BLjava/lang/String;)Lcom/baidu/android/pushservice/message/h;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.baidu.android.pushservice.action.CROSS_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "baidu_message_body"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "baidu_message_secur_info"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bd.cross.request.COMMAND_TYPE"

    const-string v2, "bd.cross.command.ULTRON_DELIVER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bd.cross.request.SOURCE_SERVICE"

    const-string v2, "com.baidu.android.pushservice.PushService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bd.cross.request.SOURCE_PACKAGE"

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/a/o;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/baidu/android/pushservice/util/f;

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/a/o;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/baidu/android/pushservice/util/f;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/f;->b()Lcom/baidu/android/pushservice/message/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/android/pushservice/message/k;[B)Lcom/baidu/android/pushservice/message/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I[B[B)Lcom/baidu/android/pushservice/message/h;
    .locals 12

    new-instance v5, Lcom/baidu/android/pushservice/message/h;

    invoke-direct {v5}, Lcom/baidu/android/pushservice/message/h;-><init>()V

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    new-instance v1, Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sget-object v7, Lcom/baidu/android/pushservice/message/a/o;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ultronMsg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "version_require"

    const/4 v8, -0x1

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v1, "command_type"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v9, "command_body"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/baidu/android/pushservice/message/a/o;->b:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ultronMsg, vr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ct: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " b: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "0"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/baidu/android/pushservice/message/a/o;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/baidu/android/pushservice/c/b;->d(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/baidu/android/pushservice/message/a/o;->a:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/android/pushservice/util/s;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    invoke-virtual {v9}, Lcom/baidu/android/pushservice/c/h;->d()I

    move-result v9

    if-ge v9, v8, :cond_0

    const/4 v2, 0x6

    :cond_0
    :goto_0
    if-nez v6, :cond_6

    if-nez v2, :cond_6

    const/4 v9, 0x2

    if-ne v1, v9, :cond_3

    const/4 v1, 0x1

    :goto_1
    iget-object v9, p0, Lcom/baidu/android/pushservice/message/a/o;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v9

    invoke-virtual {v9, v8, v1}, Lcom/baidu/android/pushservice/c/b;->a(IZ)Lcom/baidu/android/pushservice/c/h;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x6

    move v8, v1

    move-object v2, v6

    :goto_2
    if-nez v8, :cond_5

    sget-object v1, Lcom/baidu/android/pushservice/message/a/o;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ultronMsg, handleMsg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v5, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/baidu/android/pushservice/message/a/o;->a(Ljava/lang/String;JLjava/lang/String;[BLjava/lang/String;)Lcom/baidu/android/pushservice/message/h;

    move-result-object v1

    :goto_3
    invoke-virtual {v1, v8}, Lcom/baidu/android/pushservice/message/h;->a(I)V

    :goto_4
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Lcom/baidu/android/pushservice/message/h;->a(I)V

    move-object v1, v5

    goto :goto_4

    :cond_1
    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v1

    move v8, v2

    move-object v2, v1

    goto :goto_2

    :cond_5
    move-object v1, v5

    goto :goto_3

    :cond_6
    move v8, v2

    move-object v2, v6

    goto :goto_2
.end method
