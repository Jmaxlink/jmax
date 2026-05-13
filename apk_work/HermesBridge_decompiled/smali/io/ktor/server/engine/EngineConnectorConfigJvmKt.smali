.class public final Lio/ktor/server/engine/EngineConnectorConfigJvmKt;
.super Ljava/lang/Object;
.source "EngineConnectorConfigJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001aY\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0008\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u000e\u0008\u0008\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00010\u000c\u00a2\u0006\u0002\u0008\u000eH\u0086\u0008\u00f8\u0001\u0000\u001a\u0012\u0010\u000f\u001a\u00020\u0010*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0013"
    }
    d2 = {
        "sslConnector",
        "",
        "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
        "keyStore",
        "Ljava/security/KeyStore;",
        "keyAlias",
        "",
        "keyStorePassword",
        "Lkotlin/Function0;",
        "",
        "privateKeyPassword",
        "builder",
        "Lkotlin/Function1;",
        "Lio/ktor/server/engine/EngineSSLConnectorBuilder;",
        "Lkotlin/ExtensionFunctionType;",
        "withPort",
        "Lio/ktor/server/engine/EngineConnectorConfig;",
        "otherPort",
        "",
        "ktor-server-host-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final sslConnector(Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;Ljava/security/KeyStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p0, "$this$sslConnector"    # Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "keyAlias"    # Ljava/lang/String;
    .param p3, "keyStorePassword"    # Lkotlin/jvm/functions/Function0;
    .param p4, "privateKeyPassword"    # Lkotlin/jvm/functions/Function0;
    .param p5, "builder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
            "Ljava/security/KeyStore;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "[C>;",
            "Lkotlin/jvm/functions/Function0<",
            "[C>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/engine/EngineSSLConnectorBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyAlias"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyStorePassword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privateKeyPassword"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    .local v0, "$i$f$sslConnector":I
    invoke-virtual {p0}, Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;->getConnectors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    invoke-direct {v2, p1, p2, p3, p4}, Lio/ktor/server/engine/EngineSSLConnectorBuilder;-><init>(Ljava/security/KeyStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public static final withPort(Lio/ktor/server/engine/EngineConnectorConfig;I)Lio/ktor/server/engine/EngineConnectorConfig;
    .locals 1
    .param p0, "$this$withPort"    # Lio/ktor/server/engine/EngineConnectorConfig;
    .param p1, "otherPort"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    nop

    .line 96
    instance-of v0, p0, Lio/ktor/server/engine/EngineSSLConnectorBuilder;

    if-eqz v0, :cond_0

    new-instance v0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$1;-><init>(Lio/ktor/server/engine/EngineConnectorConfig;I)V

    check-cast v0, Lio/ktor/server/engine/EngineConnectorConfig;

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$2;

    invoke-direct {v0, p0, p1}, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$2;-><init>(Lio/ktor/server/engine/EngineConnectorConfig;I)V

    check-cast v0, Lio/ktor/server/engine/EngineConnectorConfig;

    .line 102
    :goto_0
    return-object v0
.end method
