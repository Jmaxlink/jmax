.class public interface abstract Lio/ktor/network/sockets/Configurable;
.super Ljava/lang/Object;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/sockets/Configurable$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/ktor/network/sockets/Configurable<",
        "+TT;TOptions;>;Options:",
        "Lio/ktor/network/sockets/SocketOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0016\u0008\u0000\u0010\u0001 \u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0000*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u00020\u0004J&\u0010\n\u001a\u00028\u00002\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0002\u0008\u000eH\u0016\u00a2\u0006\u0002\u0010\u000fR\u0018\u0010\u0005\u001a\u00028\u0001X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/ktor/network/sockets/Configurable;",
        "T",
        "Options",
        "Lio/ktor/network/sockets/SocketOptions;",
        "",
        "options",
        "getOptions",
        "()Lio/ktor/network/sockets/SocketOptions;",
        "setOptions",
        "(Lio/ktor/network/sockets/SocketOptions;)V",
        "configure",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)Lio/ktor/network/sockets/Configurable;",
        "ktor-network"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract configure(Lkotlin/jvm/functions/Function1;)Lio/ktor/network/sockets/Configurable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TOptions;",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract getOptions()Lio/ktor/network/sockets/SocketOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOptions;"
        }
    .end annotation
.end method

.method public abstract setOptions(Lio/ktor/network/sockets/SocketOptions;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOptions;)V"
        }
    .end annotation
.end method
