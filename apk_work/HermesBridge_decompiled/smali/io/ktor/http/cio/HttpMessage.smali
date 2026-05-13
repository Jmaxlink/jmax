.class public abstract Lio/ktor/http/cio/HttpMessage;
.super Ljava/lang/Object;
.source "RequestResponse.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0017\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0006\u0010\u000c\u001a\u00020\u000bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lio/ktor/http/cio/HttpMessage;",
        "Ljava/io/Closeable;",
        "Lio/ktor/utils/io/core/Closeable;",
        "headers",
        "Lio/ktor/http/cio/HttpHeadersMap;",
        "builder",
        "Lio/ktor/http/cio/internals/CharArrayBuilder;",
        "(Lio/ktor/http/cio/HttpHeadersMap;Lio/ktor/http/cio/internals/CharArrayBuilder;)V",
        "getHeaders",
        "()Lio/ktor/http/cio/HttpHeadersMap;",
        "close",
        "",
        "release",
        "ktor-http-cio"
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
.field private final builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

.field private final headers:Lio/ktor/http/cio/HttpHeadersMap;


# direct methods
.method public constructor <init>(Lio/ktor/http/cio/HttpHeadersMap;Lio/ktor/http/cio/internals/CharArrayBuilder;)V
    .locals 1
    .param p1, "headers"    # Lio/ktor/http/cio/HttpHeadersMap;
    .param p2, "builder"    # Lio/ktor/http/cio/internals/CharArrayBuilder;

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/ktor/http/cio/HttpMessage;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    .line 17
    iput-object p2, p0, Lio/ktor/http/cio/HttpMessage;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    .line 15
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lio/ktor/http/cio/HttpMessage;->release()V

    .line 33
    return-void
.end method

.method public final getHeaders()Lio/ktor/http/cio/HttpHeadersMap;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/ktor/http/cio/HttpMessage;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    return-object v0
.end method

.method public final release()V
    .locals 1

    .line 24
    iget-object v0, p0, Lio/ktor/http/cio/HttpMessage;->builder:Lio/ktor/http/cio/internals/CharArrayBuilder;

    invoke-virtual {v0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->release()V

    .line 25
    iget-object v0, p0, Lio/ktor/http/cio/HttpMessage;->headers:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-virtual {v0}, Lio/ktor/http/cio/HttpHeadersMap;->release()V

    .line 26
    return-void
.end method
