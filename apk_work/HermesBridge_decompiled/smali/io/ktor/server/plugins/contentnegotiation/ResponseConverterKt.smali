.class public final Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt;
.super Ljava/lang/Object;
.source "ResponseConverter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0000\u001a\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007*\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "NOT_ACCEPTABLE",
        "Lio/ktor/server/http/content/HttpStatusCodeContent;",
        "convertResponseBody",
        "",
        "Lio/ktor/server/application/PluginBuilder;",
        "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
        "sortedByQuality",
        "",
        "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
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
.field private static final NOT_ACCEPTABLE:Lio/ktor/server/http/content/HttpStatusCodeContent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lio/ktor/server/http/content/HttpStatusCodeContent;

    sget-object v1, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getNotAcceptable()Lio/ktor/http/HttpStatusCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/server/http/content/HttpStatusCodeContent;-><init>(Lio/ktor/http/HttpStatusCode;)V

    sput-object v0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt;->NOT_ACCEPTABLE:Lio/ktor/server/http/content/HttpStatusCodeContent;

    return-void
.end method

.method public static final synthetic access$getNOT_ACCEPTABLE$p()Lio/ktor/server/http/content/HttpStatusCodeContent;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt;->NOT_ACCEPTABLE:Lio/ktor/server/http/content/HttpStatusCodeContent;

    return-object v0
.end method

.method public static final synthetic access$sortedByQuality(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "$receiver"    # Ljava/util/List;

    .line 1
    invoke-static {p0}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt;->sortedByQuality(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final convertResponseBody(Lio/ktor/server/application/PluginBuilder;)V
    .locals 2
    .param p0, "$this$convertResponseBody"    # Lio/ktor/server/application/PluginBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/PluginBuilder<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentNegotiationConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$convertResponseBody$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function4;

    invoke-virtual {p0, v0}, Lio/ktor/server/application/PluginBuilder;->onCallRespond(Lkotlin/jvm/functions/Function4;)V

    .line 101
    return-void
.end method

.method private static final sortedByQuality(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p0, "$this$sortedByQuality"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
            ">;)",
            "Ljava/util/List<",
            "Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;",
            ">;"
        }
    .end annotation

    .line 107
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 108
    new-instance v1, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$sortedByQuality$$inlined$compareByDescending$1;

    invoke-direct {v1}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$sortedByQuality$$inlined$compareByDescending$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    new-instance v2, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$sortedByQuality$$inlined$thenBy$1;

    invoke-direct {v2, v1}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$sortedByQuality$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    check-cast v2, Ljava/util/Comparator;

    .line 118
    new-instance v1, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$sortedByQuality$$inlined$thenByDescending$1;

    invoke-direct {v1, v2}, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$sortedByQuality$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    check-cast v1, Ljava/util/Comparator;

    .line 107
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 119
    return-object v0
.end method
