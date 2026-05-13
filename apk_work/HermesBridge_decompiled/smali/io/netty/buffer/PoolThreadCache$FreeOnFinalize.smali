.class final Lio/netty/buffer/PoolThreadCache$FreeOnFinalize;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FreeOnFinalize"
.end annotation


# instance fields
.field private final cache:Lio/netty/buffer/PoolThreadCache;


# direct methods
.method private constructor <init>(Lio/netty/buffer/PoolThreadCache;)V
    .locals 0
    .param p1, "cache"    # Lio/netty/buffer/PoolThreadCache;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p1, p0, Lio/netty/buffer/PoolThreadCache$FreeOnFinalize;->cache:Lio/netty/buffer/PoolThreadCache;

    .line 498
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PoolThreadCache$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/buffer/PoolThreadCache;
    .param p2, "x1"    # Lio/netty/buffer/PoolThreadCache$1;

    .line 493
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolThreadCache$FreeOnFinalize;-><init>(Lio/netty/buffer/PoolThreadCache;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 505
    const/4 v0, 0x1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$FreeOnFinalize;->cache:Lio/netty/buffer/PoolThreadCache;

    invoke-virtual {v1, v0}, Lio/netty/buffer/PoolThreadCache;->free(Z)V

    .line 508
    nop

    .line 509
    return-void

    .line 507
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/netty/buffer/PoolThreadCache$FreeOnFinalize;->cache:Lio/netty/buffer/PoolThreadCache;

    invoke-virtual {v2, v0}, Lio/netty/buffer/PoolThreadCache;->free(Z)V

    .line 508
    throw v1
.end method
