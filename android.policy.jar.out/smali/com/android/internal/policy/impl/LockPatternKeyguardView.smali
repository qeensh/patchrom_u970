.class public Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/KeyguardViewBase;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DEBUG:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final FAILED_FACE_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0xf

.field private static final TAG:Ljava/lang/String; = "LockPatternKeyguardView"

.field private static final TRANSPORT_USERACTIVITY_TIMEOUT:I = 0x2710


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final FACELOCK_VIEW_AREA_EMERGENCY_DIALER_TIMEOUT:I

.field private final FACELOCK_VIEW_AREA_SERVICE_TIMEOUT:I

.field private final MSG_HIDE_FACELOCK_AREA_VIEW:I

.field private final MSG_SHOW_FACELOCK_AREA_VIEW:I

.field private mBoundToFaceLockService:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mEnableFallback:Z

.field private mFaceLockAreaView:Landroid/view/View;

.field private final mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceLockConnection:Landroid/content/ServiceConnection;

.field private mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mFaceLockServiceRunning:Z

.field private final mFaceLockServiceRunningLock:Ljava/lang/Object;

.field private final mFaceLockStartupLock:Ljava/lang/Object;

.field private mFailedFaceUnlockAttempts:I

.field private mForgotPattern:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasOverlay:Z

.field private mIsVerifyUnlockOnly:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLockScreen:Landroid/view/View;

.field mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

.field private mRecreateRunnable:Ljava/lang/Runnable;

.field public mRememberPin:Ljava/lang/String;

.field private mRequiresSim:Z

.field private mSavedState:Landroid/os/Parcelable;

.field volatile mScreenOn:Z

.field mShowLockBeforeUnlock:Z

.field private mTransportControlView:Lcom/android/internal/widget/TransportControlView;

.field private mUnlockScreen:Landroid/view/View;

.field private mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

.field private final mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

.field private volatile mWindowFocused:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .locals 3
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 309
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;-><init>(Landroid/content/Context;)V

    .line 108
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRememberPin:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    .line 127
    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_SHOW_FACELOCK_AREA_VIEW:I

    .line 128
    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_HIDE_FACELOCK_AREA_VIEW:I

    .line 132
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->FACELOCK_VIEW_AREA_EMERGENCY_DIALER_TIMEOUT:I

    .line 137
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->FACELOCK_VIEW_AREA_SERVICE_TIMEOUT:I

    .line 140
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->BACKUP_LOCK_TIMEOUT:I

    .line 143
    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    .line 208
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 214
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 222
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 235
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    .line 242
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    .line 1353
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    .line 1430
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 313
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    .line 314
    const-string v0, "keyguard.no_require_sim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V


    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeEnableFallback(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockAreaWithTimeout(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtWipeDialog(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showTimeoutDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->restoreWidgetState()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    return p1
.end method

.method static synthetic access$2008(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/IFaceLockCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private activateFaceLockIfAble()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 599
    iget v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_2

    move v2, v3

    .line 601
    .local v2, tooManyFaceUnlockTries:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 602
    .local v1, failedBackupAttempts:I
    const/4 v5, 0x5

    if-lt v1, v5, :cond_3

    move v0, v3

    .line 604
    .local v0, backupIsTimedOut:Z
    :goto_1
    if-eqz v2, :cond_0

    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tooManyFaceUnlockTries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->bindToFaceLock()V

    .line 612
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    const-wide/16 v3, 0xbb8

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockAreaWithTimeout(J)V

    .line 618
    :cond_1
    :goto_2
    return-void

    .end local v0           #backupIsTimedOut:Z
    .end local v1           #failedBackupAttempts:I
    .end local v2           #tooManyFaceUnlockTries:Z
    :cond_2
    move v2, v4

    .line 599
    goto :goto_0

    .restart local v1       #failedBackupAttempts:I
    .restart local v2       #tooManyFaceUnlockTries:Z
    :cond_3
    move v0, v4

    .line 602
    goto :goto_1

    .line 616
    .restart local v0       #backupIsTimedOut:Z
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    goto :goto_2
.end method

.method getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 2

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1077
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1080
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 1085
    :goto_0
    return-object v1

    .line 1082
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-eqz v1, :cond_3

    .line 1083
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_0

    .line 1085
    :cond_3
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_0
.end method

.method private getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 6

    .prologue
    .line 1094
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 1096
    .local v2, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_0

    .line 1097
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1122
    .local v0, currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :goto_0
    return-object v0

    .line 1098
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_1

    .line 1099
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1101
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 1102
    .local v1, mode:I
    sparse-switch v1, :sswitch_data_0

    .line 1119
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unlock mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1107
    :sswitch_0
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1108
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1112
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :sswitch_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1113
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1115
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_3
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1117
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1102
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private hideFaceLockArea()V
    .locals 2

    .prologue
    .line 1300
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeFaceLockAreaDisplayMessages()V

    .line 1301
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1302
    return-void
.end method

.method private initializeFaceLockAreaView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    const v0, 0x102029e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    .line 1244
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1245
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Layout does not have faceLockAreaView and FaceLock is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    goto :goto_0
.end method

.method private initializeTransportControlView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1061
    const v0, 0x102029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/TransportControlView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    .line 1062
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-nez v0, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1066
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    .line 1067
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 841
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .line 842
    .local v1, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    const/4 v0, 0x0

    .line 844
    .local v0, secure:Z
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->$SwitchMap$com$android$internal$policy$impl$LockPatternKeyguardView$UnlockMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 861
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 846
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    .line 863
    :goto_0
    return v0

    .line 849
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_0

    move v0, v2

    .line 850
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v3

    .line 849
    goto :goto_1

    .line 852
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 853
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v3

    .line 852
    goto :goto_2

    .line 855
    :pswitch_3
    const/4 v0, 0x1

    .line 856
    goto :goto_0

    .line 858
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    .line 859
    goto :goto_0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 550
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;)V

    .line 551
    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->start()V

    .line 552
    return-void
.end method

.method recreateLockScreen()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 698
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 699
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 703
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 705
    return-void
.end method

.method private recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V
    .locals 2
    .parameter "unlockMode"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 714
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 715
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 717
    return-void
.end method

.method private removeFaceLockAreaDisplayMessages()V
    .locals 2

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1287
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1288
    return-void
.end method

.method private restoreWidgetState()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 651
    :cond_0
    return-void
.end method

.method private saveWidgetState()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v0}, Lcom/android/internal/widget/TransportControlView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    .line 642
    :cond_0
    return-void
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 8

    .prologue
    .line 1153
    const/16 v2, 0x1e

    .line 1154
    .local v2, timeoutInSeconds:I
    const/16 v0, 0xf

    .line 1156
    .local v0, count:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x1040300

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1158
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 7
    .parameter "attempts"
    .parameter "remaining"

    .prologue
    .line 1162
    const/16 v1, 0x1e

    .line 1163
    .local v1, timeoutInSeconds:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v3, 0x1040301

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 1126
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1131
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1132
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1133
    return-void
.end method

.method private showFaceLockArea()V
    .locals 2

    .prologue
    .line 1293
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeFaceLockAreaDisplayMessages()V

    .line 1294
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1295
    return-void
.end method

.method private showFaceLockAreaWithTimeout(J)V
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 1306
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    .line 1307
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1308
    return-void
.end method

.method private showTimeoutDialog()V
    .locals 7

    .prologue
    .line 1136
    const/16 v2, 0x1e

    .line 1137
    .local v2, timeoutInSeconds:I
    const v1, 0x10402fd

    .line 1138
    .local v1, messageId:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v4, :cond_0

    .line 1139
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1141
    const v1, 0x10402ff

    .line 1146
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1149
    .local v0, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    return-void

    .line 1143
    .end local v0           #message:Ljava/lang/String;
    :cond_1
    const v1, 0x10402fe

    goto :goto_0
.end method

.method private showWipeDialog(I)V
    .locals 6
    .parameter "attempts"

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v2, 0x1040302

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    return-void
.end method

.method private stopFaceLockIfRunning()Z
    .locals 1

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-eqz v0, :cond_0

    .line 1255
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 1256
    const/4 v0, 0x1

    .line 1258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stuckOnLockScreenBecauseSimMissing()Z
    .locals 2

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    .locals 7
    .parameter "mode"
    .parameter "force"

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 874
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-eq p1, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-eqz v4, :cond_2

    .line 875
    :cond_0
    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateLockScreen()V

    :cond_2
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v4, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v2

    .local v2, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    if-nez p2, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v2, v4, :cond_4

    .line 885
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLockIfRunning()Z

    move-result v1

    .line 888
    .local v1, restartFaceLock:Z
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V

    .line 890
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    .line 895
    .end local v1           #restartFaceLock:Z
    .end local v2           #unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_4
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v4, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 896
    .local v0, goneScreen:Landroid/view/View;
    :goto_0
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v4, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 900
    .local v3, visibleScreen:Landroid/view/View;
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-object v4, v3

    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->needsInput()Z

    move-result v4

    invoke-interface {v5, v4}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setNeedsInput(Z)V

    .line 907
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v4, :cond_6

    .line 908
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    move-object v4, v0

    .line 909
    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 911
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v3

    .line 912
    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 916
    :cond_6
    if-eqz v0, :cond_7

    .line 917
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 919
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 920
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->requestLayout()V

    .line 922
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_a

    .line 923
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyguard screen must be able to take focus when shown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 895
    .end local v0           #goneScreen:Landroid/view/View;
    .end local v3           #visibleScreen:Landroid/view/View;
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    goto :goto_0

    .line 896
    .restart local v0       #goneScreen:Landroid/view/View;
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    goto :goto_1

    .line 926
    .restart local v3       #visibleScreen:Landroid/view/View;
    :cond_a
    return-void
.end method

.method private usingFaceLock()Z
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindToFaceLock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1313
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-nez v0, :cond_1

    .line 1316
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1320
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Attempt to bind to FaceLock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 816
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 818
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 819
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 820
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 824
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 825
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 826
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 829
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_2

    .line 831
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 836
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 838
    :cond_2
    return-void

    .line 832
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method createLockScreen()Landroid/view/View;
    .locals 6

    .prologue
    .line 929
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 935
    .local v0, lockView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    .line 936
    return-object v0
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 12
    .parameter "unlockMode"

    .prologue
    .line 940
    const/4 v1, 0x0

    .line 945
    .local v1, unlockView:Landroid/view/View;
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v4, :cond_0

    .line 946
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V

    .line 953
    .local v0, view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableFallback(Z)V

    .line 954
    move-object v1, v0

    .line 1054
    .end local v0           #view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    .restart local v1       #unlockView:Landroid/view/View;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    .line 1055
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeFaceLockAreaView(Landroid/view/View;)V

    .line 1056
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object v2, v1

    .line 1057
    :goto_1
    return-object v2

    .line 955
    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v4, :cond_1

    .line 956
    new-instance v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 962
    :cond_1
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v4, :cond_5

    .line 964
    const/4 v11, 0x0

    .line 965
    .local v11, result:Z
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SimUnlockScreen.mRememberPin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mRememberPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getRememberPin()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRememberPin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 974
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRememberPin:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 975
    sget-object v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mRememberPin:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRememberPin:Ljava/lang/String;

    .line 977
    :cond_2
    const-string v4, "1"

    const-string v5, "ril.modem_reset"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRememberPin:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 979
    :try_start_1
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "goto modem reset procedure"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRememberPin:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 987
    :goto_3
    if-eqz v11, :cond_3

    .line 988
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 990
    new-instance v2, Lcom/android/internal/policy/impl/LockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/LockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 996
    .local v2, lockView:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1001
    .end local v2           #lockView:Landroid/view/View;
    :cond_3
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    .line 1013
    :cond_4
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    .line 1020
    .end local v11           #result:Z
    :cond_5
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v4, :cond_6

    .line 1022
    :try_start_2
    new-instance v3, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/MiuiAccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #unlockView:Landroid/view/View;
    .local v3, unlockView:Landroid/view/View;
    move-object v1, v3

    .line 1042
    .end local v3           #unlockView:Landroid/view/View;
    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    .line 1028
    :catch_0
    move-exception v10

    .line 1029
    .local v10, e:Ljava/lang/IllegalStateException;
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "Couldn\'t instantiate AccountUnlockScreen (IAccountsService isn\'t available)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_1

    .line 1043
    .end local v10           #e:Ljava/lang/IllegalStateException;
    :cond_6
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v4, :cond_7

    .line 1044
    new-instance v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    .line 1051
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown unlock mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 983
    .restart local v11       #result:Z
    :catch_1
    move-exception v4

    goto/16 :goto_3

    .line 970
    :catch_2
    move-exception v4

    goto/16 :goto_2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 563
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 564
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 777
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 778
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 781
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 1266
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1278
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Unhandled message"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :goto_0
    return v0

    .line 1268
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1273
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClockVisibilityChanged()V
    .locals 3

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getSystemUiVisibility()I

    move-result v1

    const v2, -0x800001

    and-int v0, v1, v2

    .line 754
    .local v0, visFlags:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isClockVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x80

    :goto_0
    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setSystemUiVisibility(I)V

    .line 756
    return-void

    .line 754
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 732
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x111001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 733
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 735
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->saveWidgetState()V

    .line 736
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 737
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 738
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 725
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 727
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onDetachedFromWindow()V

    .line 728
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 759
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    const/4 v0, 0x1

    .line 765
    if-ne p1, v0, :cond_0

    .line 766
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 767
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 768
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    .line 770
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 743
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 747
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 749
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 577
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 578
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 579
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 582
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 589
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->saveWidgetState()V

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 593
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 625
    .local v0, runFaceLock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 626
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 627
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 628
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->show()V

    .line 632
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->restoreWidgetState()V

    .line 634
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    .line 635
    :cond_0
    return-void

    .line 628
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 745
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 661
    .local v0, runFaceLock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 662
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    if-nez v1, :cond_0

    move v0, p1

    .line 663
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 664
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    if-nez p1, :cond_2

    .line 666
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 667
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 668
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 664
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 669
    :cond_2
    if-eqz v0, :cond_1

    .line 670
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 684
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v0, :cond_2

    .line 689
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    goto :goto_0
.end method

.method public startFaceLock(Landroid/os/IBinder;IIII)V
    .locals 8
    .parameter "windowToken"
    .parameter "x"
    .parameter "y"
    .parameter "h"
    .parameter "w"

    .prologue
    .line 1390
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1392
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1395
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1400
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 1404
    :cond_0
    monitor-exit v7

    .line 1406
    :cond_1
    :goto_0
    return-void

    .line 1396
    :catch_0
    move-exception v6

    .line 1397
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting FaceLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    monitor-exit v7

    goto :goto_0

    .line 1404
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stopAndUnbindFromFaceLock()V
    .locals 2

    .prologue
    .line 1329
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1330
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 1332
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-eqz v0, :cond_1

    .line 1334
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_0

    .line 1336
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 1351
    :cond_1
    return-void

    .line 1337
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopFaceLock()V
    .locals 5

    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1415
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1416
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1419
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1423
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 1425
    :cond_0
    monitor-exit v2

    .line 1427
    :cond_1
    return-void

    .line 1420
    :catch_0
    move-exception v0

    .line 1421
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LockPatternKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping FaceLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1425
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public verifyUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 800
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 812
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    .line 806
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 809
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 810
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 787
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 790
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 791
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_0
.end method

.method protected createKeyguardScreenCallback()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    return-object v0
.end method

.method getConfiguration()Landroid/content/res/Configuration;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method getUpdateMonitor()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method
