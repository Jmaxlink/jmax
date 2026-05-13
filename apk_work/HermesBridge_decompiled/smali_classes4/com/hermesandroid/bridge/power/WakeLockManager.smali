.class public final Lcom/hermesandroid/bridge/power/WakeLockManager;
.super Ljava/lang/Object;
.source "WakeLockManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWakeLockManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WakeLockManager.kt\ncom/hermesandroid/bridge/power/WakeLockManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u000f\u001a\u00020\nH\u0002J2\u0010\u0010\u001a\u0002H\u0011\"\u0004\u0008\u0000\u0010\u00112\u001c\u0010\u0012\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0018\u00010\u0008R\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/power/WakeLockManager;",
        "",
        "()V",
        "HOLD_MS",
        "",
        "powerManager",
        "Landroid/os/PowerManager;",
        "wakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "acquireWakeLock",
        "",
        "forceRelease",
        "init",
        "context",
        "Landroid/content/Context;",
        "releaseWakeLock",
        "wakeForAction",
        "T",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HOLD_MS:J = 0xbb8L

.field public static final INSTANCE:Lcom/hermesandroid/bridge/power/WakeLockManager;

.field private static powerManager:Landroid/os/PowerManager;

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/power/WakeLockManager;

    invoke-direct {v0}, Lcom/hermesandroid/bridge/power/WakeLockManager;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->INSTANCE:Lcom/hermesandroid/bridge/power/WakeLockManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final declared-synchronized acquireWakeLock()V
    .locals 6

    monitor-enter p0

    .line 38
    :try_start_0
    sget-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->powerManager:Landroid/os/PowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 39
    .local v0, "pm":Landroid/os/PowerManager;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    move-object v2, v1

    .line 60
    .local v2, "it":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    .line 39
    .local v3, "$i$a$-takeIf-WakeLockManager$acquireWakeLock$1":I
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    .end local v2    # "it":Landroid/os/PowerManager$WakeLock;
    .end local v3    # "$i$a$-takeIf-WakeLockManager$acquireWakeLock$1":I
    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 41
    .end local p0    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    :cond_2
    nop

    .line 42
    nop

    .line 45
    const-string v1, "hermes:bridge_action"

    .line 41
    const v2, 0x3000000a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 46
    move-object v2, v1

    .line 60
    .local v2, "$this$acquireWakeLock_u24lambda_u241":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    .line 46
    .local v3, "$i$a$-apply-WakeLockManager$acquireWakeLock$2":I
    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 41
    .end local v2    # "$this$acquireWakeLock_u24lambda_u241":Landroid/os/PowerManager$WakeLock;
    .end local v3    # "$i$a$-apply-WakeLockManager$acquireWakeLock$2":I
    sput-object v1, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 37
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized releaseWakeLock()V
    .locals 5

    monitor-enter p0

    .line 51
    nop

    .line 52
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    move-object v2, v1

    .line 60
    .local v2, "it":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    .line 52
    .local v3, "$i$a$-takeIf-WakeLockManager$releaseWakeLock$1":I
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    .end local v2    # "it":Landroid/os/PowerManager$WakeLock;
    .end local v3    # "$i$a$-takeIf-WakeLockManager$releaseWakeLock$1":I
    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 50
    .end local p0    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    :cond_1
    :goto_1
    :try_start_1
    sput-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 50
    :goto_2
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final forceRelease()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/hermesandroid/bridge/power/WakeLockManager;->releaseWakeLock()V

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->powerManager:Landroid/os/PowerManager;

    .line 15
    return-void
.end method

.method public final wakeForAction(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;

    iget v1, v0, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;

    invoke-direct {v0, p0, p2}, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;-><init>(Lcom/hermesandroid/bridge/power/WakeLockManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 17
    iget v2, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->label:I

    const-wide/16 v3, 0xbb8

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object v1, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/hermesandroid/bridge/power/WakeLockManager;

    .local v1, "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .end local v1    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    :pswitch_1
    iget-object p1, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$1:Ljava/lang/Object;

    iget-object v1, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/hermesandroid/bridge/power/WakeLockManager;

    .restart local v1    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v1    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    :pswitch_2
    iget p1, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->I$0:I

    .local p1, "alreadyAwake":Z
    iget-object v2, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/hermesandroid/bridge/power/WakeLockManager;

    .local v2, "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v2

    move v2, p1

    move-object p1, v0

    goto :goto_3

    .line 29
    :catchall_0
    move-exception v5

    move-object v8, v2

    move v2, p1

    move-object p1, v5

    move-object v5, v8

    goto/16 :goto_5

    .line 17
    .end local v2    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    .end local p1    # "alreadyAwake":Z
    :pswitch_3
    iget p1, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->I$0:I

    .restart local p1    # "alreadyAwake":Z
    iget-object v2, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .local v2, "block":Lkotlin/jvm/functions/Function1;
    iget-object v5, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/hermesandroid/bridge/power/WakeLockManager;

    .local v5, "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "block":Lkotlin/jvm/functions/Function1;
    .end local v5    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    .end local p1    # "alreadyAwake":Z
    :pswitch_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    .restart local v5    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    move-object v2, p1

    .line 18
    .restart local v2    # "block":Lkotlin/jvm/functions/Function1;
    sget-object p1, Lcom/hermesandroid/bridge/power/WakeLockManager;->powerManager:Landroid/os/PowerManager;

    .line 19
    .local p1, "pm":Landroid/os/PowerManager;
    const/4 v6, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v6

    .line 21
    .local p1, "alreadyAwake":Z
    :goto_1
    if-nez p1, :cond_3

    .line 22
    invoke-direct {v5}, Lcom/hermesandroid/bridge/power/WakeLockManager;->acquireWakeLock()V

    .line 23
    iput-object v5, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$1:Ljava/lang/Object;

    iput p1, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->I$0:I

    iput v6, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->label:I

    const-wide/16 v6, 0x96

    invoke-static {v6, v7, p2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_2

    .line 17
    return-object v1

    .line 26
    :cond_2
    :goto_2
    nop

    .line 27
    :cond_3
    :try_start_1
    iput-object v5, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$1:Ljava/lang/Object;

    iput p1, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->I$0:I

    const/4 v6, 0x2

    iput v6, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->label:I

    invoke-interface {v2, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "block":Lkotlin/jvm/functions/Function1;
    if-ne v6, v1, :cond_4

    .line 17
    return-object v1

    .line 27
    :cond_4
    move v2, p1

    move-object p1, v6

    .line 29
    .end local p1    # "alreadyAwake":Z
    .local v2, "alreadyAwake":Z
    :goto_3
    if-nez v2, :cond_6

    .line 30
    .end local v2    # "alreadyAwake":Z
    iput-object v5, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->label:I

    invoke-static {v3, v4, p2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    .line 17
    return-object v1

    .line 30
    :cond_5
    move-object v1, v5

    .line 31
    .end local v5    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    .restart local v1    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    :goto_4
    invoke-direct {v1}, Lcom/hermesandroid/bridge/power/WakeLockManager;->releaseWakeLock()V

    .line 33
    .end local v1    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    :cond_6
    nop

    .line 26
    return-object p1

    .line 29
    .restart local v5    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    .restart local p1    # "alreadyAwake":Z
    :catchall_1
    move-exception v2

    move-object v8, v2

    move v2, p1

    move-object p1, v8

    .end local p1    # "alreadyAwake":Z
    .restart local v2    # "alreadyAwake":Z
    :goto_5
    if-nez v2, :cond_8

    .line 30
    .end local v2    # "alreadyAwake":Z
    iput-object v5, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, p2, Lcom/hermesandroid/bridge/power/WakeLockManager$wakeForAction$1;->label:I

    invoke-static {v3, v4, p2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    .line 17
    return-object v1

    .line 30
    :cond_7
    move-object v1, v5

    .line 31
    .end local v5    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    .restart local v1    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    :goto_6
    invoke-direct {v1}, Lcom/hermesandroid/bridge/power/WakeLockManager;->releaseWakeLock()V

    .end local v1    # "this":Lcom/hermesandroid/bridge/power/WakeLockManager;
    :cond_8
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
