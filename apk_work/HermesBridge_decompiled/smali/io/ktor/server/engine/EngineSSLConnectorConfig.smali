.class public interface abstract Lio/ktor/server/engine/EngineSSLConnectorConfig;
.super Ljava/lang/Object;
.source "EngineConnectorConfigJvm.kt"

# interfaces
.implements Lio/ktor/server/engine/EngineConnectorConfig;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008f\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0018\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0012R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\rR\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lio/ktor/server/engine/EngineSSLConnectorConfig;",
        "Lio/ktor/server/engine/EngineConnectorConfig;",
        "enabledProtocols",
        "",
        "",
        "getEnabledProtocols",
        "()Ljava/util/List;",
        "keyAlias",
        "getKeyAlias",
        "()Ljava/lang/String;",
        "keyStore",
        "Ljava/security/KeyStore;",
        "getKeyStore",
        "()Ljava/security/KeyStore;",
        "keyStorePassword",
        "Lkotlin/Function0;",
        "",
        "getKeyStorePassword",
        "()Lkotlin/jvm/functions/Function0;",
        "keyStorePath",
        "Ljava/io/File;",
        "getKeyStorePath",
        "()Ljava/io/File;",
        "privateKeyPassword",
        "getPrivateKeyPassword",
        "trustStore",
        "getTrustStore",
        "trustStorePath",
        "getTrustStorePath",
        "ktor-server-host-common"
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
.method public abstract getEnabledProtocols()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyAlias()Ljava/lang/String;
.end method

.method public abstract getKeyStore()Ljava/security/KeyStore;
.end method

.method public abstract getKeyStorePassword()Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "[C>;"
        }
    .end annotation
.end method

.method public abstract getKeyStorePath()Ljava/io/File;
.end method

.method public abstract getPrivateKeyPassword()Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "[C>;"
        }
    .end annotation
.end method

.method public abstract getTrustStore()Ljava/security/KeyStore;
.end method

.method public abstract getTrustStorePath()Ljava/io/File;
.end method
