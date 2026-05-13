.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod;
.super Ljava/lang/Object;
.source "ReferenceCountedOpenSslContext.java"

# interfaces
.implements Lio/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncPrivateKeyMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;
    }
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private final keyMethod:Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;)V
    .locals 0
    .param p1, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p2, "keyMethod"    # Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 1058
    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;

    .line 1059
    return-void
.end method


# virtual methods
.method public decrypt(J[BLio/netty/internal/tcnative/ResultCallback;)V
    .locals 3
    .param p1, "ssl"    # J
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B",
            "Lio/netty/internal/tcnative/ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 1075
    .local p4, "resultCallback":Lio/netty/internal/tcnative/ResultCallback;, "Lio/netty/internal/tcnative/ResultCallback<[B>;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-static {v0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$400(Lio/netty/handler/ssl/OpenSslEngineMap;J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 1076
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;

    invoke-interface {v1, v0, p3}, Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;->decrypt(Ljavax/net/ssl/SSLEngine;[B)Lio/netty/util/concurrent/Future;

    move-result-object v1

    new-instance v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;

    invoke-direct {v2, v0, p1, p2, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;JLio/netty/internal/tcnative/ResultCallback;)V

    .line 1077
    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    nop

    .end local v0    # "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    goto :goto_0

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-interface {p4, p1, p2, v0}, Lio/netty/internal/tcnative/ResultCallback;->onError(JLjava/lang/Throwable;)V

    .line 1081
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :goto_0
    return-void
.end method

.method public sign(JI[BLio/netty/internal/tcnative/ResultCallback;)V
    .locals 3
    .param p1, "ssl"    # J
    .param p3, "signatureAlgorithm"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI[B",
            "Lio/netty/internal/tcnative/ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 1064
    .local p5, "resultCallback":Lio/netty/internal/tcnative/ResultCallback;, "Lio/netty/internal/tcnative/ResultCallback<[B>;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-static {v0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$400(Lio/netty/handler/ssl/OpenSslEngineMap;J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 1065
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod;->keyMethod:Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;

    invoke-interface {v1, v0, p3, p4}, Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;->sign(Ljavax/net/ssl/SSLEngine;I[B)Lio/netty/util/concurrent/Future;

    move-result-object v1

    new-instance v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;

    invoke-direct {v2, v0, p1, p2, p5}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;JLio/netty/internal/tcnative/ResultCallback;)V

    .line 1066
    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    nop

    .end local v0    # "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    goto :goto_0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-interface {p5, p1, p2, v0}, Lio/netty/internal/tcnative/ResultCallback;->onError(JLjava/lang/Throwable;)V

    .line 1070
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :goto_0
    return-void
.end method
