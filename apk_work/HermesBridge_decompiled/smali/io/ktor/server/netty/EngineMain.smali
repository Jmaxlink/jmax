.class public final Lio/ktor/server/netty/EngineMain;
.super Ljava/lang/Object;
.source "EngineMain.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0007\u00a2\u0006\u0002\u0010\u0008J\u0019\u0010\t\u001a\u00020\u0004*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/ktor/server/netty/EngineMain;",
        "",
        "()V",
        "main",
        "",
        "args",
        "",
        "",
        "([Ljava/lang/String;)V",
        "loadConfiguration",
        "Lio/ktor/server/netty/NettyApplicationEngine$Configuration;",
        "config",
        "Lio/ktor/server/config/ApplicationConfig;",
        "loadConfiguration$ktor_server_netty",
        "ktor-server-netty"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/server/netty/EngineMain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/netty/EngineMain;

    invoke-direct {v0}, Lio/ktor/server/netty/EngineMain;-><init>()V

    sput-object v0, Lio/ktor/server/netty/EngineMain;->INSTANCE:Lio/ktor/server/netty/EngineMain;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p0}, Lio/ktor/server/engine/CommandLineKt;->commandLineEnvironment([Ljava/lang/String;)Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v0

    .line 21
    .local v0, "applicationEnvironment":Lio/ktor/server/engine/ApplicationEngineEnvironment;
    new-instance v1, Lio/ktor/server/netty/NettyApplicationEngine;

    new-instance v2, Lio/ktor/server/netty/EngineMain$main$engine$1;

    invoke-direct {v2, v0}, Lio/ktor/server/netty/EngineMain$main$engine$1;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v0, v2}, Lio/ktor/server/netty/NettyApplicationEngine;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .local v1, "engine":Lio/ktor/server/netty/NettyApplicationEngine;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/ktor/server/netty/NettyApplicationEngine;->start(Z)Lio/ktor/server/netty/NettyApplicationEngine;

    .line 24
    return-void
.end method


# virtual methods
.method public final loadConfiguration$ktor_server_netty(Lio/ktor/server/netty/NettyApplicationEngine$Configuration;Lio/ktor/server/config/ApplicationConfig;)V
    .locals 3
    .param p1, "$this$loadConfiguration"    # Lio/ktor/server/netty/NettyApplicationEngine$Configuration;
    .param p2, "config"    # Lio/ktor/server/config/ApplicationConfig;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string v0, "ktor.deployment"

    invoke-interface {p2, v0}, Lio/ktor/server/config/ApplicationConfig;->config(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v0

    .line 28
    .local v0, "deploymentConfig":Lio/ktor/server/config/ApplicationConfig;
    move-object v1, p1

    check-cast v1, Lio/ktor/server/engine/BaseApplicationEngine$Configuration;

    invoke-static {v1, v0}, Lio/ktor/server/engine/CommandLineKt;->loadCommonConfiguration(Lio/ktor/server/engine/BaseApplicationEngine$Configuration;Lio/ktor/server/config/ApplicationConfig;)V

    .line 29
    const-string v1, "requestQueueLimit"

    invoke-interface {v0, v1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "it":I
    const/4 v2, 0x0

    .line 30
    .local v2, "$i$a$-let-EngineMain$loadConfiguration$1":I
    invoke-virtual {p1, v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->setRequestQueueLimit(I)V

    .line 31
    nop

    .line 29
    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-EngineMain$loadConfiguration$1":I
    :cond_0
    nop

    .line 32
    const-string v1, "runningLimit"

    invoke-interface {v0, v1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "it":I
    const/4 v2, 0x0

    .line 33
    .local v2, "$i$a$-let-EngineMain$loadConfiguration$2":I
    invoke-virtual {p1, v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->setRunningLimit(I)V

    .line 34
    nop

    .line 32
    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-EngineMain$loadConfiguration$2":I
    :cond_1
    nop

    .line 35
    const-string v1, "shareWorkGroup"

    invoke-interface {v0, v1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .local v1, "it":Z
    const/4 v2, 0x0

    .line 36
    .local v2, "$i$a$-let-EngineMain$loadConfiguration$3":I
    invoke-virtual {p1, v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->setShareWorkGroup(Z)V

    .line 37
    nop

    .line 35
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-let-EngineMain$loadConfiguration$3":I
    :cond_2
    nop

    .line 38
    const-string v1, "responseWriteTimeoutSeconds"

    invoke-interface {v0, v1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "it":I
    const/4 v2, 0x0

    .line 39
    .local v2, "$i$a$-let-EngineMain$loadConfiguration$4":I
    invoke-virtual {p1, v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->setResponseWriteTimeoutSeconds(I)V

    .line 40
    nop

    .line 38
    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-EngineMain$loadConfiguration$4":I
    :cond_3
    nop

    .line 41
    const-string v1, "requestReadTimeoutSeconds"

    invoke-interface {v0, v1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "it":I
    const/4 v2, 0x0

    .line 42
    .local v2, "$i$a$-let-EngineMain$loadConfiguration$5":I
    invoke-virtual {p1, v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->setRequestReadTimeoutSeconds(I)V

    .line 43
    nop

    .line 41
    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-EngineMain$loadConfiguration$5":I
    :cond_4
    nop

    .line 44
    const-string v1, "tcpKeepAlive"

    invoke-interface {v0, v1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .local v1, "it":Z
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-let-EngineMain$loadConfiguration$6":I
    invoke-virtual {p1, v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->setTcpKeepAlive(Z)V

    .line 46
    nop

    .line 44
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-let-EngineMain$loadConfiguration$6":I
    :cond_5
    nop

    .line 47
    const-string v1, "maxInitialLineLength"

    invoke-interface {v0, v1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "it":I
    const/4 v2, 0x0

    .line 48
    .local v2, "$i$a$-let-EngineMain$loadConfiguration$7":I
    invoke-virtual {p1, v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->setMaxInitialLineLength(I)V

    .line 49
    nop

    .line 47
    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-EngineMain$loadConfiguration$7":I
    :cond_6
    nop

    .line 50
    const-string v1, "maxHeaderSize"

    invoke-interface {v0, v1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "it":I
    const/4 v2, 0x0

    .line 51
    .local v2, "$i$a$-let-EngineMain$loadConfiguration$8":I
    invoke-virtual {p1, v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->setMaxHeaderSize(I)V

    .line 52
    nop

    .line 50
    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-EngineMain$loadConfiguration$8":I
    :cond_7
    nop

    .line 53
    const-string v1, "maxChunkSize"

    invoke-interface {v0, v1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "it":I
    const/4 v2, 0x0

    .line 54
    .local v2, "$i$a$-let-EngineMain$loadConfiguration$9":I
    invoke-virtual {p1, v1}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->setMaxChunkSize(I)V

    .line 55
    nop

    .line 53
    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-EngineMain$loadConfiguration$9":I
    :cond_8
    nop

    .line 56
    return-void
.end method
