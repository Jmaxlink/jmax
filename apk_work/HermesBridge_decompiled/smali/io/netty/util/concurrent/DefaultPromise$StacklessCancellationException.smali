.class final Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "DefaultPromise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/DefaultPromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StacklessCancellationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2948fde46dbd74dfL


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 872
    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;"
        }
    .end annotation

    .line 882
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;

    invoke-direct {v0}, Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;-><init>()V

    invoke-static {v0, p0, p1}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/DefaultPromise$StacklessCancellationException;

    return-object v0
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 878
    return-object p0
.end method
