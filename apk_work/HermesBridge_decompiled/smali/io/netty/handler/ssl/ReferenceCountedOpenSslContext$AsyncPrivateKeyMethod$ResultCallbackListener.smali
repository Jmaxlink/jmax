.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;
.super Ljava/lang/Object;
.source "ReferenceCountedOpenSslContext.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultCallbackListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final engine:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

.field private final resultCallback:Lio/netty/internal/tcnative/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/internal/tcnative/ResultCallback<",
            "[B>;"
        }
    .end annotation
.end field

.field private final ssl:J


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;JLio/netty/internal/tcnative/ResultCallback;)V
    .locals 0
    .param p1, "engine"    # Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .param p2, "ssl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;",
            "J",
            "Lio/netty/internal/tcnative/ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 1089
    .local p4, "resultCallback":Lio/netty/internal/tcnative/ResultCallback;, "Lio/netty/internal/tcnative/ResultCallback<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;->engine:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    .line 1091
    iput-wide p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;->ssl:J

    .line 1092
    iput-object p4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;->resultCallback:Lio/netty/internal/tcnative/ResultCallback;

    .line 1093
    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "[B>;)V"
        }
    .end annotation

    .line 1097
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<[B>;"
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1098
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 1100
    :try_start_0
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$500([B)[B

    move-result-object v1

    .line 1101
    .local v1, "result":[B
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;->resultCallback:Lio/netty/internal/tcnative/ResultCallback;

    iget-wide v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;->ssl:J

    invoke-interface {v2, v3, v4, v1}, Lio/netty/internal/tcnative/ResultCallback;->onSuccess(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    return-void

    .line 1103
    .end local v1    # "result":[B
    :catch_0
    move-exception v1

    .line 1104
    .local v1, "e":Ljava/security/SignatureException;
    move-object v0, v1

    .line 1105
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;->engine:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-virtual {v2, v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    .line 1108
    .end local v1    # "e":Ljava/security/SignatureException;
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;->resultCallback:Lio/netty/internal/tcnative/ResultCallback;

    iget-wide v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AsyncPrivateKeyMethod$ResultCallbackListener;->ssl:J

    invoke-interface {v1, v2, v3, v0}, Lio/netty/internal/tcnative/ResultCallback;->onError(JLjava/lang/Throwable;)V

    .line 1109
    return-void
.end method
