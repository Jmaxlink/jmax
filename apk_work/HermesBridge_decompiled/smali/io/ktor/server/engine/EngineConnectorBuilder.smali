.class public Lio/ktor/server/engine/EngineConnectorBuilder;
.super Ljava/lang/Object;
.source "EngineConnectorConfig.kt"

# interfaces
.implements Lio/ktor/server/engine/EngineConnectorConfig;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/ktor/server/engine/EngineConnectorBuilder;",
        "Lio/ktor/server/engine/EngineConnectorConfig;",
        "type",
        "Lio/ktor/server/engine/ConnectorType;",
        "(Lio/ktor/server/engine/ConnectorType;)V",
        "host",
        "",
        "getHost",
        "()Ljava/lang/String;",
        "setHost",
        "(Ljava/lang/String;)V",
        "port",
        "",
        "getPort",
        "()I",
        "setPort",
        "(I)V",
        "getType",
        "()Lio/ktor/server/engine/ConnectorType;",
        "toString",
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
.field private host:Ljava/lang/String;

.field private port:I

.field private final type:Lio/ktor/server/engine/ConnectorType;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/ktor/server/engine/EngineConnectorBuilder;-><init>(Lio/ktor/server/engine/ConnectorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/server/engine/ConnectorType;)V
    .locals 1
    .param p1, "type"    # Lio/ktor/server/engine/ConnectorType;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/ktor/server/engine/EngineConnectorBuilder;->type:Lio/ktor/server/engine/ConnectorType;

    .line 61
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lio/ktor/server/engine/EngineConnectorBuilder;->host:Ljava/lang/String;

    .line 62
    const/16 v0, 0x50

    iput v0, p0, Lio/ktor/server/engine/EngineConnectorBuilder;->port:I

    .line 58
    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/server/engine/ConnectorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 58
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 59
    sget-object p1, Lio/ktor/server/engine/ConnectorType;->Companion:Lio/ktor/server/engine/ConnectorType$Companion;

    invoke-virtual {p1}, Lio/ktor/server/engine/ConnectorType$Companion;->getHTTP()Lio/ktor/server/engine/ConnectorType;

    move-result-object p1

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/server/engine/EngineConnectorBuilder;-><init>(Lio/ktor/server/engine/ConnectorType;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 62
    iget v0, p0, Lio/ktor/server/engine/EngineConnectorBuilder;->port:I

    return v0
.end method

.method public getType()Lio/ktor/server/engine/ConnectorType;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/ktor/server/engine/EngineConnectorBuilder;->type:Lio/ktor/server/engine/ConnectorType;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lio/ktor/server/engine/EngineConnectorBuilder;->host:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 62
    iput p1, p0, Lio/ktor/server/engine/EngineConnectorBuilder;->port:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/ktor/server/engine/EngineConnectorBuilder;->getType()Lio/ktor/server/engine/ConnectorType;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/server/engine/ConnectorType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/server/engine/EngineConnectorBuilder;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/server/engine/EngineConnectorBuilder;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
