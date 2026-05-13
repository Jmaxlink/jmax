.class public Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
.super Ljava/lang/Object;
.source "CorsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/cors/CorsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-direct {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 325
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "origins"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 317
    return-void
.end method


# virtual methods
.method public allowCredentials()Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->allowCredentials()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 360
    return-object p0
.end method

.method public allowNullOrigin()Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->allowNullOrigin()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 333
    return-object p0
.end method

.method public varargs allowedRequestHeaders([Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "headers"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->allowedRequestHeaders([Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 387
    return-object p0
.end method

.method public varargs allowedRequestMethods([Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "methods"    # [Lio/netty/handler/codec/http/HttpMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->allowedRequestMethods([Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 378
    return-object p0
.end method

.method public build()Lio/netty/handler/codec/http/cors/CorsConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->build()Lio/netty/handler/codec/http/cors/CorsConfig;

    move-result-object v0

    return-object v0
.end method

.method public disable()Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->disable()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 342
    return-object p0
.end method

.method public varargs exposeHeaders([Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "headers"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->exposeHeaders([Ljava/lang/String;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 351
    return-object p0
.end method

.method public maxAge(J)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "max"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->maxAge(J)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 369
    return-object p0
.end method

.method public noPreflightResponseHeaders()Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 422
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->noPreflightResponseHeaders()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 423
    return-object p0
.end method

.method public preflightResponseHeader(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lio/netty/handler/codec/http/cors/CorsConfig$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    .local p2, "value":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightResponseHeader(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 405
    return-object p0
.end method

.method public varargs preflightResponseHeader(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightResponseHeader(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 396
    return-object p0
.end method

.method public preflightResponseHeader(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lio/netty/handler/codec/http/cors/CorsConfig$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    .local p2, "valueGenerator":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->preflightResponseHeader(Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;)Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 414
    return-object p0
.end method

.method public shortCurcuit()Lio/netty/handler/codec/http/cors/CorsConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    iget-object v0, p0, Lio/netty/handler/codec/http/cors/CorsConfig$Builder;->builder:Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/cors/CorsConfigBuilder;->shortCircuit()Lio/netty/handler/codec/http/cors/CorsConfigBuilder;

    .line 440
    return-object p0
.end method
