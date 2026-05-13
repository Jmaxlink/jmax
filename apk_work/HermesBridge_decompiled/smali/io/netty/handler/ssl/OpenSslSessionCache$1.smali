.class Lio/netty/handler/ssl/OpenSslSessionCache$1;
.super Ljava/util/LinkedHashMap;
.source "OpenSslSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lio/netty/handler/ssl/OpenSslSessionId;",
        "Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6be1b80ac06cecb0L


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/OpenSslSessionCache;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslSessionCache;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/ssl/OpenSslSessionCache;

    .line 55
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslSessionCache$1;->this$0:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lio/netty/handler/ssl/OpenSslSessionId;",
            "Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;",
            ">;)Z"
        }
    .end annotation

    .line 61
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/handler/ssl/OpenSslSessionId;Lio/netty/handler/ssl/OpenSslSessionCache$NativeSslSession;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslSessionCache$1;->this$0:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-static {v0}, Lio/netty/handler/ssl/OpenSslSessionCache;->access$000(Lio/netty/handler/ssl/OpenSslSessionCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 62
    .local v0, "maxSize":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslSessionCache$1;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 63
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslSessionCache$1;->this$0:Lio/netty/handler/ssl/OpenSslSessionCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/ssl/OpenSslSessionId;

    invoke-virtual {v1, v2}, Lio/netty/handler/ssl/OpenSslSessionCache;->removeSessionWithId(Lio/netty/handler/ssl/OpenSslSessionId;)V

    .line 66
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
