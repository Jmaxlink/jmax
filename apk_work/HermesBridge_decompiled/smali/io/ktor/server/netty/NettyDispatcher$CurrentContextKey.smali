.class public final Lio/ktor/server/netty/NettyDispatcher$CurrentContextKey;
.super Ljava/lang/Object;
.source "CIO.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/netty/NettyDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrentContextKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext$Key<",
        "Lio/ktor/server/netty/NettyDispatcher$CurrentContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyDispatcher$CurrentContextKey;",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "Lio/ktor/server/netty/NettyDispatcher$CurrentContext;",
        "()V",
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


# static fields
.field public static final INSTANCE:Lio/ktor/server/netty/NettyDispatcher$CurrentContextKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/netty/NettyDispatcher$CurrentContextKey;

    invoke-direct {v0}, Lio/ktor/server/netty/NettyDispatcher$CurrentContextKey;-><init>()V

    sput-object v0, Lio/ktor/server/netty/NettyDispatcher$CurrentContextKey;->INSTANCE:Lio/ktor/server/netty/NettyDispatcher$CurrentContextKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
