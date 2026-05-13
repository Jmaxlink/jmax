.class final Lio/netty/handler/codec/HeadersUtils$DelegatingNameSet;
.super Ljava/util/AbstractCollection;
.source "HeadersUtils.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/HeadersUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelegatingNameSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final headers:Lio/netty/handler/codec/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/Headers<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/handler/codec/Headers;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "*>;)V"
        }
    .end annotation

    .line 197
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<Ljava/lang/CharSequence;Ljava/lang/CharSequence;*>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 198
    const-string v0, "headers"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/Headers;

    iput-object v0, p0, Lio/netty/handler/codec/HeadersUtils$DelegatingNameSet;->headers:Lio/netty/handler/codec/Headers;

    .line 199
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lio/netty/handler/codec/HeadersUtils$DelegatingNameSet;->headers:Lio/netty/handler/codec/Headers;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/Headers;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lio/netty/handler/codec/HeadersUtils$DelegatingNameSet;->headers:Lio/netty/handler/codec/Headers;

    invoke-interface {v0}, Lio/netty/handler/codec/Headers;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Lio/netty/handler/codec/HeadersUtils$StringIterator;

    iget-object v1, p0, Lio/netty/handler/codec/HeadersUtils$DelegatingNameSet;->headers:Lio/netty/handler/codec/Headers;

    invoke-interface {v1}, Lio/netty/handler/codec/Headers;->names()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/HeadersUtils$StringIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 203
    iget-object v0, p0, Lio/netty/handler/codec/HeadersUtils$DelegatingNameSet;->headers:Lio/netty/handler/codec/Headers;

    invoke-interface {v0}, Lio/netty/handler/codec/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
