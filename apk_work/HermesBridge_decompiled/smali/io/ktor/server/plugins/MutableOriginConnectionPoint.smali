.class public final Lio/ktor/server/plugins/MutableOriginConnectionPoint;
.super Ljava/lang/Object;
.source "OriginConnectionPoint.kt"

# interfaces
.implements Lio/ktor/http/RequestConnectionPoint;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008,\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003R1\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0097\u008e\u0002\u00a2\u0006\u0018\n\u0004\u0008\r\u0010\u000e\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR+\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u000e\u001a\u0004\u0008\u0010\u0010\n\"\u0004\u0008\u0011\u0010\u000cR+\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u000e\u001a\u0004\u0008\u0014\u0010\n\"\u0004\u0008\u0015\u0010\u000cR+\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0004\u001a\u00020\u00178V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u000e\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR+\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u001e8V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u000e\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R1\u0010%\u001a\u00020\u00172\u0006\u0010\u0004\u001a\u00020\u00178V@VX\u0097\u008e\u0002\u00a2\u0006\u0018\n\u0004\u0008)\u0010\u000e\u0012\u0004\u0008&\u0010\u0008\u001a\u0004\u0008\'\u0010\u001a\"\u0004\u0008(\u0010\u001cR+\u0010*\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u000e\u001a\u0004\u0008+\u0010\n\"\u0004\u0008,\u0010\u000cR+\u0010.\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00081\u0010\u000e\u001a\u0004\u0008/\u0010\n\"\u0004\u00080\u0010\u000cR+\u00102\u001a\u00020\u00172\u0006\u0010\u0004\u001a\u00020\u00178V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00085\u0010\u000e\u001a\u0004\u00083\u0010\u001a\"\u0004\u00084\u0010\u001cR+\u00106\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00089\u0010\u000e\u001a\u0004\u00087\u0010\n\"\u0004\u00088\u0010\u000cR+\u0010:\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008=\u0010\u000e\u001a\u0004\u0008;\u0010\n\"\u0004\u0008<\u0010\u000cR+\u0010>\u001a\u00020\u00172\u0006\u0010\u0004\u001a\u00020\u00178V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008A\u0010\u000e\u001a\u0004\u0008?\u0010\u001a\"\u0004\u0008@\u0010\u001cR+\u0010B\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008E\u0010\u000e\u001a\u0004\u0008C\u0010\n\"\u0004\u0008D\u0010\u000cR+\u0010F\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008I\u0010\u000e\u001a\u0004\u0008G\u0010\n\"\u0004\u0008H\u0010\u000c\u00a8\u0006J"
    }
    d2 = {
        "Lio/ktor/server/plugins/MutableOriginConnectionPoint;",
        "Lio/ktor/http/RequestConnectionPoint;",
        "delegate",
        "(Lio/ktor/http/RequestConnectionPoint;)V",
        "<set-?>",
        "",
        "host",
        "getHost$annotations",
        "()V",
        "getHost",
        "()Ljava/lang/String;",
        "setHost",
        "(Ljava/lang/String;)V",
        "host$delegate",
        "Lio/ktor/server/plugins/AssignableWithDelegate;",
        "localAddress",
        "getLocalAddress",
        "setLocalAddress",
        "localAddress$delegate",
        "localHost",
        "getLocalHost",
        "setLocalHost",
        "localHost$delegate",
        "",
        "localPort",
        "getLocalPort",
        "()I",
        "setLocalPort",
        "(I)V",
        "localPort$delegate",
        "Lio/ktor/http/HttpMethod;",
        "method",
        "getMethod",
        "()Lio/ktor/http/HttpMethod;",
        "setMethod",
        "(Lio/ktor/http/HttpMethod;)V",
        "method$delegate",
        "port",
        "getPort$annotations",
        "getPort",
        "setPort",
        "port$delegate",
        "remoteAddress",
        "getRemoteAddress",
        "setRemoteAddress",
        "remoteAddress$delegate",
        "remoteHost",
        "getRemoteHost",
        "setRemoteHost",
        "remoteHost$delegate",
        "remotePort",
        "getRemotePort",
        "setRemotePort",
        "remotePort$delegate",
        "scheme",
        "getScheme",
        "setScheme",
        "scheme$delegate",
        "serverHost",
        "getServerHost",
        "setServerHost",
        "serverHost$delegate",
        "serverPort",
        "getServerPort",
        "setServerPort",
        "serverPort$delegate",
        "uri",
        "getUri",
        "setUri",
        "uri$delegate",
        "version",
        "getVersion",
        "setVersion",
        "version$delegate",
        "ktor-server-core"
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final host$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final localAddress$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final localHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final localPort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final method$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final port$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final remoteAddress$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final remoteHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final remotePort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final scheme$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final serverHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final serverPort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final uri$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

.field private final version$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xe

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 41
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "version"

    const-string v3, "getVersion()Ljava/lang/String;"

    const-class v4, Lio/ktor/server/plugins/MutableOriginConnectionPoint;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 42
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "uri"

    const-string v3, "getUri()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 43
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "method"

    const-string v3, "getMethod()Lio/ktor/http/HttpMethod;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 44
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "scheme"

    const-string v3, "getScheme()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 48
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "host"

    const-string v3, "getHost()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 49
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "localHost"

    const-string v3, "getLocalHost()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 50
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverHost"

    const-string v3, "getServerHost()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 51
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "localAddress"

    const-string v3, "getLocalAddress()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 55
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "port"

    const-string v3, "getPort()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 56
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "localPort"

    const-string v3, "getLocalPort()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 57
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverPort"

    const-string v3, "getServerPort()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 58
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "remoteHost"

    const-string v3, "getRemoteHost()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 59
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "remotePort"

    const-string v3, "getRemotePort()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 60
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "remoteAddress"

    const-string v3, "getRemoteAddress()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lio/ktor/http/RequestConnectionPoint;)V
    .locals 2
    .param p1, "delegate"    # Lio/ktor/http/RequestConnectionPoint;

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$version$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$version$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->version$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 42
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$uri$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$uri$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->uri$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 43
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$method$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$method$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->method$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 44
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$scheme$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$scheme$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->scheme$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 48
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$host$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$host$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->host$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 49
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$localHost$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$localHost$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->localHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 50
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$serverHost$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$serverHost$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->serverHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 51
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$localAddress$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$localAddress$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->localAddress$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 55
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$port$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$port$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->port$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 56
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$localPort$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$localPort$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->localPort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 57
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$serverPort$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$serverPort$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->serverPort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 58
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$remoteHost$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$remoteHost$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->remoteHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 59
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$remotePort$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$remotePort$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->remotePort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 60
    new-instance v0, Lio/ktor/server/plugins/AssignableWithDelegate;

    new-instance v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint$remoteAddress$2;

    invoke-direct {v1, p1}, Lio/ktor/server/plugins/MutableOriginConnectionPoint$remoteAddress$2;-><init>(Lio/ktor/http/RequestConnectionPoint;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->remoteAddress$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 37
    return-void
.end method

.method public static synthetic getHost$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use localHost or serverHost instead"
    .end annotation

    return-void
.end method

.method public static synthetic getPort$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use localPort or serverPort instead"
    .end annotation

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 3

    .line 48
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->host$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 48
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 3

    .line 51
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->localAddress$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 51
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 3

    .line 49
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->localHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 49
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 3

    .line 56
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->localPort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 56
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getMethod()Lio/ktor/http/HttpMethod;
    .locals 3

    .line 43
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->method$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 43
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public getPort()I
    .locals 3

    .line 55
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->port$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 55
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 3

    .line 60
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->remoteAddress$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 60
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 3

    .line 58
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->remoteHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 58
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRemotePort()I
    .locals 3

    .line 59
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->remotePort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 59
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 3

    .line 44
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->scheme$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 44
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServerHost()Ljava/lang/String;
    .locals 3

    .line 50
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->serverHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 50
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 3

    .line 57
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->serverPort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 57
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 3

    .line 42
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->uri$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 42
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .line 41
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->version$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 41
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/ktor/server/plugins/AssignableWithDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->host$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 48
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->localAddress$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 51
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setLocalHost(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->localHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 49
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setLocalPort(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 56
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->localPort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 56
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setMethod(Lio/ktor/http/HttpMethod;)V
    .locals 3
    .param p1, "<set-?>"    # Lio/ktor/http/HttpMethod;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->method$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 43
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setPort(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 55
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->port$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 55
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setRemoteAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->remoteAddress$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 60
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->remoteHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 58
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setRemotePort(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 59
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->remotePort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 59
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->scheme$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 44
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setServerHost(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->serverHost$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 50
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setServerPort(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 57
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->serverPort$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 57
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->uri$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 42
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->version$delegate:Lio/ktor/server/plugins/AssignableWithDelegate;

    .line 2
    nop

    .line 41
    sget-object v1, Lio/ktor/server/plugins/MutableOriginConnectionPoint;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/ktor/server/plugins/AssignableWithDelegate;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
