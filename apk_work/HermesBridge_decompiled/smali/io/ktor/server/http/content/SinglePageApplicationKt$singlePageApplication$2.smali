.class final Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SinglePageApplication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/http/content/SinglePageApplicationKt;->singlePageApplication(Lio/ktor/server/routing/Route;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/server/http/content/StaticContentConfig<",
        "Ljava/net/URL;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSinglePageApplication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SinglePageApplication.kt\nio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n1855#2,2:134\n*S KotlinDebug\n*F\n+ 1 SinglePageApplication.kt\nio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$2\n*L\n36#1:134,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/server/http/content/StaticContentConfig;",
        "Ljava/net/URL;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $config:Lio/ktor/server/http/content/SPAConfig;


# direct methods
.method constructor <init>(Lio/ktor/server/http/content/SPAConfig;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$2;->$config:Lio/ktor/server/http/content/SPAConfig;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 34
    move-object v0, p1

    check-cast v0, Lio/ktor/server/http/content/StaticContentConfig;

    invoke-virtual {p0, v0}, Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$2;->invoke(Lio/ktor/server/http/content/StaticContentConfig;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/ktor/server/http/content/StaticContentConfig;)V
    .locals 7
    .param p1, "$this$staticResources"    # Lio/ktor/server/http/content/StaticContentConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/http/content/StaticContentConfig<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$staticResources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$2;->$config:Lio/ktor/server/http/content/SPAConfig;

    invoke-virtual {v0}, Lio/ktor/server/http/content/SPAConfig;->getDefaultPage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ktor/server/http/content/StaticContentConfig;->default(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$2;->$config:Lio/ktor/server/http/content/SPAConfig;

    invoke-virtual {v0}, Lio/ktor/server/http/content/SPAConfig;->getIgnoredFiles$ktor_server_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 134
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "ignoreConfig":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 37
    .local v5, "$i$a$-forEach-SinglePageApplicationKt$singlePageApplication$2$1":I
    new-instance v6, Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$2$1$1;

    invoke-direct {v6, v4}, Lio/ktor/server/http/content/SinglePageApplicationKt$singlePageApplication$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v6}, Lio/ktor/server/http/content/StaticContentConfig;->exclude(Lkotlin/jvm/functions/Function1;)V

    .line 40
    nop

    .line 134
    .end local v4    # "ignoreConfig":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$a$-forEach-SinglePageApplicationKt$singlePageApplication$2$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 135
    :cond_0
    nop

    .line 41
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
