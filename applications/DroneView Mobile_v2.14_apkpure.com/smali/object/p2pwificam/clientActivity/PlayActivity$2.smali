.class Lobject/p2pwificam/clientActivity/PlayActivity$2;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v10, 0x28

    const/4 v6, 0x6

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 855
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f08013b

    if-ne v4, v5, :cond_5

    .line 857
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, "openLockPWD":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 862
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const v5, 0x7f060199

    invoke-virtual {v4, v5}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToast(I)V

    .line 863
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$4(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 920
    .end local v1    # "openLockPWD":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 865
    .restart local v1    # "openLockPWD":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_2

    .line 867
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const v5, 0x7f06019a

    invoke-virtual {v4, v5}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToast(I)V

    .line 868
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$4(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 871
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_3

    .line 873
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const v5, 0x7f06019a

    invoke-virtual {v4, v5}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToast(I)V

    .line 874
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$4(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 881
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 883
    const-string v4, "ViewRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "openLockPWD = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$5(Lobject/p2pwificam/clientActivity/PlayActivity;)Lobject/p2pipcam/bean/LockBean;

    move-result-object v4

    invoke-virtual {v4, v1}, Lobject/p2pipcam/bean/LockBean;->setOpenLockPwd(Ljava/lang/String;)V

    .line 886
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$5(Lobject/p2pwificam/clientActivity/PlayActivity;)Lobject/p2pipcam/bean/LockBean;

    move-result-object v4

    invoke-virtual {v4, v7}, Lobject/p2pipcam/bean/LockBean;->setCmd(I)V

    .line 888
    const-string v4, "ViewRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lockbean.toString() 11111111111111= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$5(Lobject/p2pwificam/clientActivity/PlayActivity;)Lobject/p2pipcam/bean/LockBean;

    move-result-object v6

    invoke-virtual {v6}, Lobject/p2pipcam/bean/LockBean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/16 v4, 0x30

    new-array v2, v4, [B

    .line 890
    .local v2, "ret":[B
    const/16 v4, 0x326

    invoke-static {v4}, Lobject/p2pipcam/bean/LockBean;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 892
    .local v0, "data":[B
    invoke-static {v0, v7, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 893
    invoke-static {v10}, Lobject/p2pipcam/bean/LockBean;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 894
    invoke-static {v0, v7, v2, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$5(Lobject/p2pwificam/clientActivity/PlayActivity;)Lobject/p2pipcam/bean/LockBean;

    move-result-object v4

    invoke-virtual {v4}, Lobject/p2pipcam/bean/LockBean;->arrary()[B

    move-result-object v0

    .line 896
    const/16 v4, 0x8

    invoke-static {v0, v7, v2, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 898
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$6(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x30

    invoke-static {v4, v2, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->DoorBellCmd(Ljava/lang/String;[BI)I

    .line 900
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 904
    .end local v0    # "data":[B
    .end local v2    # "ret":[B
    :cond_4
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$4(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 906
    .end local v1    # "openLockPWD":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f080137

    if-ne v4, v5, :cond_6

    .line 907
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 909
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 910
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 916
    .end local v3    # "text":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0
.end method
