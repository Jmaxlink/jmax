.class public final Lio/ktor/server/engine/EngineSSLConnectorBuilder;
.super Lio/ktor/server/engine/EngineConnectorBuilder;
.source "EngineConnectorConfigJvm.kt"

# interfaces
.implements Lio/ktor/server/engine/EngineSSLConnectorConfig;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\u0018\u00002\u00020\u00012\u00020\u0002B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\u000bR\"\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\rX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R \u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001b\"\u0004\u0008+\u0010\u001dR\u001c\u0010,\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0017\"\u0004\u0008.\u0010\u0019R\u001c\u0010/\u001a\u0004\u0018\u00010\u001fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010!\"\u0004\u00081\u0010#\u00a8\u00062"
    }
    d2 = {
        "Lio/ktor/server/engine/EngineSSLConnectorBuilder;",
        "Lio/ktor/server/engine/EngineConnectorBuilder;",
        "Lio/ktor/server/engine/EngineSSLConnectorConfig;",
        "keyStore",
        "Ljava/security/KeyStore;",
        "keyAlias",
        "",
        "keyStorePassword",
        "Lkotlin/Function0;",
        "",
        "privateKeyPassword",
        "(Ljava/security/KeyStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "enabledProtocols",
        "",
        "getEnabledProtocols",
        "()Ljava/util/List;",
        "setEnabledProtocols",
        "(Ljava/util/List;)V",
        "getKeyAlias",
        "()Ljava/lang/String;",
        "setKeyAlias",
        "(Ljava/lang/String;)V",
        "getKeyStore",
        "()Ljava/security/KeyStore;",
        "setKeyStore",
        "(Ljava/security/KeyStore;)V",
        "getKeyStorePassword",
        "()Lkotlin/jvm/functions/Function0;",
        "setKeyStorePassword",
        "(Lkotlin/jvm/functions/Function0;)V",
        "keyStorePath",
        "Ljava/io/File;",
        "getKeyStorePath",
        "()Ljava/io/File;",
        "setKeyStorePath",
        "(Ljava/io/File;)V",
        "port",
        "",
        "getPort",
        "()I",
        "setPort",
        "(I)V",
        "getPrivateKeyPassword",
        "setPrivateKeyPassword",
        "trustStore",
        "getTrustStore",
        "setTrustStore",
        "trustStorePath",
        "getTrustStorePath",
        "setTrustStorePath",
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
.field private enabledProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyAlias:Ljava/lang/String;

.field private keyStore:Ljava/security/KeyStore;

.field private keyStorePassword:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "[C>;"
        }
    .end annotation
.end field

.field private keyStorePath:Ljava/io/File;

.field private port:I

.field private privateKeyPassword:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "[C>;"
        }
    .end annotation
.end field

.field private trustStore:Ljava/security/KeyStore;

.field private trustStorePath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "keyAlias"    # Ljava/lang/String;
    .param p3, "keyStorePassword"    # Lkotlin/jvm/functions/Function0;
    .param p4, "privateKeyPassword"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "[C>;",
            "Lkotlin/jvm/functions/Function0<",
            "[C>;)V"
        }
    .end annotation

    const-string v0, "keyStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyAlias"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyStorePassword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privateKeyPassword"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lio/ktor/server/engine/ConnectorType;->Companion:Lio/ktor/server/engine/ConnectorType$Companion;

    invoke-virtual {v0}, Lio/ktor/server/engine/ConnectorType$Companion;->getHTTPS()Lio/ktor/server/engine/ConnectorType;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/server/engine/EngineConnectorBuilder;-><init>(Lio/ktor/server/engine/ConnectorType;)V

    .line 27
    iput-object p1, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->keyStore:Ljava/security/KeyStore;

    .line 28
    iput-object p2, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->keyAlias:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->keyStorePassword:Lkotlin/jvm/functions/Function0;

    .line 30
    iput-object p4, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->privateKeyPassword:Lkotlin/jvm/functions/Function0;

    .line 35
    const/16 v0, 0x1bb

    iput v0, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->port:I

    .line 26
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

    .line 36
    iget-object v0, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->enabledProtocols:Ljava/util/List;

    return-object v0
.end method

.method public getKeyAlias()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->keyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyStore()Ljava/security/KeyStore;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->keyStore:Ljava/security/KeyStore;

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

    .line 29
    iget-object v0, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->keyStorePassword:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getKeyStorePath()Ljava/io/File;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->keyStorePath:Ljava/io/File;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 35
    iget v0, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->port:I

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

    .line 30
    iget-object v0, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->privateKeyPassword:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getTrustStore()Ljava/security/KeyStore;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->trustStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public getTrustStorePath()Ljava/io/File;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->trustStorePath:Ljava/io/File;

    return-object v0
.end method

.method public setEnabledProtocols(Ljava/util/List;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->enabledProtocols:Ljava/util/List;

    return-void
.end method

.method public setKeyAlias(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->keyAlias:Ljava/lang/String;

    return-void
.end method

.method public setKeyStore(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/security/KeyStore;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->keyStore:Ljava/security/KeyStore;

    return-void
.end method

.method public setKeyStorePassword(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "[C>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->keyStorePassword:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public setKeyStorePath(Ljava/io/File;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/io/File;

    .line 32
    iput-object p1, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->keyStorePath:Ljava/io/File;

    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 35
    iput p1, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->port:I

    return-void
.end method

.method public setPrivateKeyPassword(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "[C>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->privateKeyPassword:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public setTrustStore(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/security/KeyStore;

    .line 33
    iput-object p1, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->trustStore:Ljava/security/KeyStore;

    return-void
.end method

.method public setTrustStorePath(Ljava/io/File;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/io/File;

    .line 34
    iput-object p1, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;->trustStorePath:Ljava/io/File;

    return-void
.end method
