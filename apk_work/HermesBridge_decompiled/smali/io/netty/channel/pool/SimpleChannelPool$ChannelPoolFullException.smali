.class final Lio/netty/channel/pool/SimpleChannelPool$ChannelPoolFullException;
.super Ljava/lang/IllegalStateException;
.source "SimpleChannelPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/pool/SimpleChannelPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChannelPoolFullException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 431
    const-string v0, "ChannelPool full"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/pool/SimpleChannelPool$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/pool/SimpleChannelPool$1;

    .line 428
    invoke-direct {p0}, Lio/netty/channel/pool/SimpleChannelPool$ChannelPoolFullException;-><init>()V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 437
    return-object p0
.end method
