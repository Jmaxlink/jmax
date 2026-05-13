.class public final Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;
.super Ljava/lang/Object;
.source "ContentNegotiation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001c\u0010\n\u001a\u00060\u000bj\u0002`\u000c*\u00020\r2\u000c\u0008\u0002\u0010\u000e\u001a\u00060\u000bj\u0002`\u000c\"\u0017\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\u0018\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t*\u0082\u0001\u0010\u000f\">\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u00102>\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "ContentNegotiation",
        "Lio/ktor/server/application/RouteScopedPlugin;",
        "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
        "getContentNegotiation",
        "()Lio/ktor/server/application/RouteScopedPlugin;",
        "LOGGER",
        "Lorg/slf4j/Logger;",
        "Lio/ktor/util/logging/Logger;",
        "getLOGGER",
        "()Lorg/slf4j/Logger;",
        "suitableCharset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "Lio/ktor/server/application/ApplicationCall;",
        "defaultCharset",
        "AcceptHeaderContributor",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "call",
        "",
        "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
        "acceptedContentTypes",
        "ktor-server-content-negotiation"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ContentNegotiation:Lio/ktor/server/application/RouteScopedPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/application/RouteScopedPlugin<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const-string v0, "io.ktor.server.plugins.contentnegotiation.ContentNegotiation"

    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->LOGGER:Lorg/slf4j/Logger;

    .line 50
    nop

    .line 51
    nop

    .line 52
    sget-object v0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt$ContentNegotiation$1;->INSTANCE:Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt$ContentNegotiation$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 50
    sget-object v1, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt$ContentNegotiation$2;->INSTANCE:Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt$ContentNegotiation$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v2, "ContentNegotiation"

    invoke-static {v2, v0, v1}, Lio/ktor/server/application/CreatePluginUtilsKt;->createRouteScopedPlugin(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/application/RouteScopedPlugin;

    move-result-object v0

    sput-object v0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->ContentNegotiation:Lio/ktor/server/application/RouteScopedPlugin;

    return-void
.end method

.method public static final getContentNegotiation()Lio/ktor/server/application/RouteScopedPlugin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/server/application/RouteScopedPlugin<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->ContentNegotiation:Lio/ktor/server/application/RouteScopedPlugin;

    return-object v0
.end method

.method public static final getLOGGER()Lorg/slf4j/Logger;
    .locals 1

    .line 20
    sget-object v0, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static final suitableCharset(Lio/ktor/server/application/ApplicationCall;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "$this$suitableCharset"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "defaultCharset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCharset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->acceptCharsetItems(Lio/ktor/server/request/ApplicationRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/http/HeaderValue;

    invoke-virtual {v1}, Lio/ktor/http/HeaderValue;->component1()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "charset":Ljava/lang/String;
    const-string v2, "*"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    .line 64
    :cond_1
    invoke-static {v1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v2, "forName(charset)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 66
    .end local v1    # "charset":Ljava/lang/String;
    :cond_2
    return-object p1
.end method

.method public static synthetic suitableCharset$default(Lio/ktor/server/application/ApplicationCall;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;
    .locals 0

    .line 61
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-static {p0, p1}, Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationKt;->suitableCharset(Lio/ktor/server/application/ApplicationCall;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method
