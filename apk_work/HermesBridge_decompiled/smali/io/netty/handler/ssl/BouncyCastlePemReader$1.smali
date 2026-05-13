.class final Lio/netty/handler/ssl/BouncyCastlePemReader$1;
.super Ljava/lang/Object;
.source "BouncyCastlePemReader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/BouncyCastlePemReader;->tryLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lio/netty/handler/ssl/BouncyCastlePemReader$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 5

    .line 77
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 79
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v2, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    .line 80
    invoke-static {v2, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 82
    .local v2, "bcProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/security/Provider;>;"
    const-string v3, "org.bouncycastle.openssl.PEMParser"

    invoke-static {v3, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 83
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    invoke-static {v3}, Lio/netty/handler/ssl/BouncyCastlePemReader;->access$002(Ljava/security/Provider;)Ljava/security/Provider;

    .line 84
    invoke-static {}, Lio/netty/handler/ssl/BouncyCastlePemReader;->access$100()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    const-string v4, "Bouncy Castle provider available"

    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 85
    invoke-static {v0}, Lio/netty/handler/ssl/BouncyCastlePemReader;->access$202(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    nop

    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "bcProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/security/Provider;>;"
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/handler/ssl/BouncyCastlePemReader;->access$100()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Cannot load Bouncy Castle provider"

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    invoke-static {v1}, Lio/netty/handler/ssl/BouncyCastlePemReader;->access$302(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 89
    invoke-static {v0}, Lio/netty/handler/ssl/BouncyCastlePemReader;->access$202(Z)Z

    .line 91
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
