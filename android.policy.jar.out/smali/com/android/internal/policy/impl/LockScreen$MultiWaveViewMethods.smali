.class Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/MultiWaveView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiWaveViewMethods"
.end annotation


# instance fields
.field private mCameraDisabled:Z

.field private final mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/MultiWaveView;)V
    .locals 4
    .parameter
    .parameter "multiWaveView"

    .prologue
    const/4 v1, 0x1

    .line 189
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    .line 191
    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {p1}, Lcom/android/internal/policy/impl/LockScreen;->access$600(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 193
    .local v0, cameraDisabled:Z
    if-eqz v0, :cond_0

    .line 194
    const-string v2, "LockScreen"

    const-string v3, "Camera disabled by Device Policy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->getTargetResourceId()I

    move-result v2

    const v3, 0x1070010

    if-eq v2, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 218
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 263
    if-eqz p2, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 266
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 222
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "target"

    .prologue
    const/high16 v4, 0x1000

    .line 226
    const-string v1, "LockScreen"

    const-string v2, "Camera onTrigger"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTrigger  target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-nez p2, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 232
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-nez v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$700(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDMLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    const-string v1, "LockScreen"

    const-string v2, "Camera onTrigger dm is not locked"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 244
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 245
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 246
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 248
    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 250
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.APP_MESSAGING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 251
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$1000(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 254
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->ping()V

    .line 278
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->reset(Z)V

    .line 274
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 206
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x107000b

    .line 213
    .local v0, resId:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MultiWaveViewMethods;->mMultiWaveView:Lcom/android/internal/widget/multiwaveview/MultiWaveView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 214
    return-void

    .line 208
    .end local v0           #resId:I
    :cond_0
    const v0, 0x107000e

    goto :goto_0

    .line 211
    :cond_1
    const v0, 0x1070010

    .restart local v0       #resId:I
    goto :goto_0
.end method
