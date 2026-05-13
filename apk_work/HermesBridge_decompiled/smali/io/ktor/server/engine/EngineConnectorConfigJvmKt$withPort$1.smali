.class public final Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;
.super Ljava/lang/Object;
.source "EngineConnectorConfigJvm.kt"

# interfaces
.implements Lio/ktor/server/engine/EngineSSLConnectorConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/EngineConnectorConfigJvmKt;->withPort(Lio/ktor/server/engine/EngineConnectorConfig;I)Lio/ktor/server/engine/EngineConnectorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000C\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0004X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u0004X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0012\u0010\u000c\u001a\u00020\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001aX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0014R\u0014\u0010\u001f\u001a\u0004\u0018\u00010\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u000fR\u0014\u0010!\u001a\u0004\u0018\u00010\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0018R\u0012\u0010#\u001a\u00020$X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&\u00a8\u0006\'"
    }
    d2 = {
        "io/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1",
        "Lio/ktor/server/engine/EngineSSLConnectorConfig;",
        "enabledProtocols",
        "",
        "",
        "getEnabledProtocols",
        "()Ljava/util/List;",
        "host",
        "getHost",
        "()Ljava/lang/String;",
        "keyAlias",
        "getKeyAlias",
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
        "port",
        "",
        "getPort",
        "()I",
        "privateKeyPassword",
        "getPrivateKeyPassword",
        "trustStore",
        "getTrustStore",
        "trustStorePath",
        "getTrustStorePath",
        "type",
        "Lio/ktor/server/engine/ConnectorType;",
        "getType",
        "()Lio/ktor/server/engine/ConnectorType;",
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


# instance fields
.field private final synthetic $$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

.field private final port:I


# direct methods
.method constructor <init>(Lio/ktor/server/engine/EngineConnectorConfig;I)V
    .locals 1
    .param p1, "$receiver"    # Lio/ktor/server/engine/EngineConnectorConfig;
    .param p2, "$otherPort"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    iput-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->$$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    .line 97
    iput p2, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->port:I

    .line 96
    return-void
.end method


# virtual methods
.method public getEnabledProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->$$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-virtual {v0}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->getEnabledProtocols()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->$$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-virtual {v0}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->$$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-virtual {v0}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->getKeyAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStore()Ljava/security/KeyStore;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->$$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-virtual {v0}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStorePassword()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "[C>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->$$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-virtual {v0}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->getKeyStorePassword()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStorePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->$$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-virtual {v0}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->getKeyStorePath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 97
    iget v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->port:I

    return v0
.end method

.method public getPrivateKeyPassword()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "[C>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->$$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-virtual {v0}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->getPrivateKeyPassword()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStore()Ljava/security/KeyStore;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->$$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-virtual {v0}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->getTrustStore()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStorePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->$$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-virtual {v0}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->getTrustStorePath()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lio/ktor/server/engine/ConnectorType;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;->$$delegate_0:Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-virtual {v0}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->getType()Lio/ktor/server/engine/ConnectorType;

    move-result-object v0

    return-object v0
.end method
