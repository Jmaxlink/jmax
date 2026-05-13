.class final Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutException;
.super Ljava/util/concurrent/TimeoutException;
.source "FixedChannelPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/pool/FixedChannelPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AcquireTimeoutException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 524
    const-string v0, "Acquire operation took longer then configured maximum time"

    invoke-direct {p0, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/pool/FixedChannelPool$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/pool/FixedChannelPool$1;

    .line 521
    invoke-direct {p0}, Lio/netty/channel/pool/FixedChannelPool$AcquireTimeoutException;-><init>()V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 530
    return-object p0
.end method
