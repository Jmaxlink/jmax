.class public final Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$2;
.super Ljava/lang/Object;
.source "EngineConnectorConfigJvm.kt"

# interfaces
.implements Lio/ktor/server/engine/EngineConnectorConfig;


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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "io/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$2",
        "Lio/ktor/server/engine/EngineConnectorConfig;",
        "host",
        "",
        "getHost",
        "()Ljava/lang/String;",
        "port",
        "",
        "getPort",
        "()I",
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
.field private final synthetic $$delegate_0:Lio/ktor/server/engine/EngineConnectorConfig;

.field private final port:I


# direct methods
.method constructor <init>(Lio/ktor/server/engine/EngineConnectorConfig;I)V
    .locals 0
    .param p1, "$receiver"    # Lio/ktor/server/engine/EngineConnectorConfig;
    .param p2, "$otherPort"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$2;->$$delegate_0:Lio/ktor/server/engine/EngineConnectorConfig;

    .line 100
    iput p2, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$2;->port:I

    .line 99
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$2;->$$delegate_0:Lio/ktor/server/engine/EngineConnectorConfig;

    invoke-interface {v0}, Lio/ktor/server/engine/EngineConnectorConfig;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 100
    iget v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$2;->port:I

    return v0
.end method

.method public getType()Lio/ktor/server/engine/ConnectorType;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorConfigJvmKt$withPort$2;->$$delegate_0:Lio/ktor/server/engine/EngineConnectorConfig;

    invoke-interface {v0}, Lio/ktor/server/engine/EngineConnectorConfig;->getType()Lio/ktor/server/engine/ConnectorType;

    move-result-object v0

    return-object v0
.end method
