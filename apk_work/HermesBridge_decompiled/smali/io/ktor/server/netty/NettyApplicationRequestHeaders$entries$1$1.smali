.class public final Lio/ktor/server/netty/NettyApplicationRequestHeaders$entries$1$1;
.super Ljava/lang/Object;
.source "NettyApplicationRequestHeaders.kt"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/NettyApplicationRequestHeaders;->entries()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00030\u0001R\u0014\u0010\u0004\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "io/ktor/server/netty/NettyApplicationRequestHeaders$entries$1$1",
        "",
        "",
        "",
        "key",
        "getKey",
        "()Ljava/lang/String;",
        "value",
        "getValue",
        "()Ljava/util/List;",
        "ktor-server-netty"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Ljava/lang/String;

.field final synthetic this$0:Lio/ktor/server/netty/NettyApplicationRequestHeaders;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/ktor/server/netty/NettyApplicationRequestHeaders;)V
    .locals 0
    .param p1, "$it"    # Ljava/lang/String;
    .param p2, "$receiver"    # Lio/ktor/server/netty/NettyApplicationRequestHeaders;

    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders$entries$1$1;->$it:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders$entries$1$1;->this$0:Lio/ktor/server/netty/NettyApplicationRequestHeaders;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationRequestHeaders$entries$1$1;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 27
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders$entries$1$1;->$it:Ljava/lang/String;

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationRequestHeaders$entries$1$1;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders$entries$1$1;->this$0:Lio/ktor/server/netty/NettyApplicationRequestHeaders;

    invoke-static {v0}, Lio/ktor/server/netty/NettyApplicationRequestHeaders;->access$getHeaders$p(Lio/ktor/server/netty/NettyApplicationRequestHeaders;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationRequestHeaders$entries$1$1;->$it:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "headers.getAll(it)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
