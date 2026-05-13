.class public final Lio/ktor/server/response/DefaultResponsePushBuilder;
.super Ljava/lang/Object;
.source "DefaultResponsePushBuilder.kt"

# interfaces
.implements Lio/ktor/server/response/ResponsePushBuilder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultResponsePushBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultResponsePushBuilder.kt\nio/ktor/server/response/DefaultResponsePushBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 URLBuilder.kt\nio/ktor/server/util/URLBuilderKt\n+ 4 URLBuilder.kt\nio/ktor/server/util/URLBuilderKt$url$1\n*L\n1#1,47:1\n1#2:48\n37#3,2:49\n37#4:51\n*S KotlinDebug\n*F\n+ 1 DefaultResponsePushBuilder.kt\nio/ktor/server/response/DefaultResponsePushBuilder\n*L\n37#1:49,2\n37#1:51\n*E\n"
.end annotation

.annotation runtime Lio/ktor/server/response/UseHttp2Push;
.end annotation

.annotation runtime Lio/ktor/util/InternalAPI;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB3\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u000c\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0002\u0010\u0010R\u0014\u0010\u0004\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\n\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R*\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u0019j\u0008\u0012\u0004\u0012\u00020\u000f`\u001aX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lio/ktor/server/response/DefaultResponsePushBuilder;",
        "Lio/ktor/server/response/ResponsePushBuilder;",
        "url",
        "Lio/ktor/http/URLBuilder;",
        "headers",
        "Lio/ktor/http/Headers;",
        "(Lio/ktor/http/URLBuilder;Lio/ktor/http/Headers;)V",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "(Lio/ktor/server/application/ApplicationCall;)V",
        "method",
        "Lio/ktor/http/HttpMethod;",
        "Lio/ktor/http/HeadersBuilder;",
        "versions",
        "",
        "Lio/ktor/http/content/Version;",
        "(Lio/ktor/http/HttpMethod;Lio/ktor/http/URLBuilder;Lio/ktor/http/HeadersBuilder;Ljava/util/List;)V",
        "getHeaders",
        "()Lio/ktor/http/HeadersBuilder;",
        "getMethod",
        "()Lio/ktor/http/HttpMethod;",
        "setMethod",
        "(Lio/ktor/http/HttpMethod;)V",
        "getUrl",
        "()Lio/ktor/http/URLBuilder;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getVersions",
        "()Ljava/util/ArrayList;",
        "setVersions",
        "(Ljava/util/ArrayList;)V",
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


# instance fields
.field private final headers:Lio/ktor/http/HeadersBuilder;

.field private method:Lio/ktor/http/HttpMethod;

.field private final url:Lio/ktor/http/URLBuilder;

.field private versions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/ktor/http/content/Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/ktor/server/response/DefaultResponsePushBuilder;-><init>(Lio/ktor/http/HttpMethod;Lio/ktor/http/URLBuilder;Lio/ktor/http/HeadersBuilder;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/http/HttpMethod;Lio/ktor/http/URLBuilder;Lio/ktor/http/HeadersBuilder;Ljava/util/List;)V
    .locals 2
    .param p1, "method"    # Lio/ktor/http/HttpMethod;
    .param p2, "url"    # Lio/ktor/http/URLBuilder;
    .param p3, "headers"    # Lio/ktor/http/HeadersBuilder;
    .param p4, "versions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/HttpMethod;",
            "Lio/ktor/http/URLBuilder;",
            "Lio/ktor/http/HeadersBuilder;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/content/Version;",
            ">;)V"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/ktor/server/response/DefaultResponsePushBuilder;->method:Lio/ktor/http/HttpMethod;

    .line 23
    iput-object p2, p0, Lio/ktor/server/response/DefaultResponsePushBuilder;->url:Lio/ktor/http/URLBuilder;

    .line 24
    iput-object p3, p0, Lio/ktor/server/response/DefaultResponsePushBuilder;->headers:Lio/ktor/http/HeadersBuilder;

    .line 45
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p4

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lio/ktor/server/response/DefaultResponsePushBuilder;->versions:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/http/HttpMethod;Lio/ktor/http/URLBuilder;Lio/ktor/http/HeadersBuilder;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    .line 21
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod$Companion;->getGet()Lio/ktor/http/HttpMethod;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    .line 23
    new-instance v1, Lio/ktor/http/URLBuilder;

    const/16 v12, 0x1ff

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lio/ktor/http/URLBuilder;-><init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/Parameters;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 21
    :cond_1
    move-object/from16 v1, p2

    :goto_1
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_2

    .line 24
    new-instance v2, Lio/ktor/http/HeadersBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Lio/ktor/http/HeadersBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 21
    :cond_2
    move-object/from16 v2, p3

    :goto_2
    and-int/lit8 v3, p5, 0x8

    if-eqz v3, :cond_3

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    .line 21
    :cond_3
    move-object/from16 v3, p4

    :goto_3
    move-object v4, p0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/ktor/server/response/DefaultResponsePushBuilder;-><init>(Lio/ktor/http/HttpMethod;Lio/ktor/http/URLBuilder;Lio/ktor/http/HeadersBuilder;Ljava/util/List;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lio/ktor/http/URLBuilder;Lio/ktor/http/Headers;)V
    .locals 8
    .param p1, "url"    # Lio/ktor/http/URLBuilder;
    .param p2, "headers"    # Lio/ktor/http/Headers;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    nop

    .line 29
    nop

    .line 30
    new-instance v4, Lio/ktor/http/HeadersBuilder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v4, v2, v0, v1}, Lio/ktor/http/HeadersBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    move-object v0, v4

    .local v0, "$this$_init__u24lambda_u240":Lio/ktor/http/HeadersBuilder;
    const/4 v1, 0x0

    .line 30
    .local v1, "$i$a$-apply-DefaultResponsePushBuilder$1":I
    move-object v2, p2

    check-cast v2, Lio/ktor/util/StringValues;

    invoke-virtual {v0, v2}, Lio/ktor/http/HeadersBuilder;->appendAll(Lio/ktor/util/StringValues;)V

    .end local v0    # "$this$_init__u24lambda_u240":Lio/ktor/http/HeadersBuilder;
    .end local v1    # "$i$a$-apply-DefaultResponsePushBuilder$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lio/ktor/server/response/DefaultResponsePushBuilder;-><init>(Lio/ktor/http/HttpMethod;Lio/ktor/http/URLBuilder;Lio/ktor/http/HeadersBuilder;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lio/ktor/server/application/ApplicationCall;)V
    .locals 10
    .param p1, "call"    # Lio/ktor/server/application/ApplicationCall;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    nop

    .line 34
    sget-object v0, Lio/ktor/http/URLBuilder;->Companion:Lio/ktor/http/URLBuilder$Companion;

    invoke-static {v0, p1}, Lio/ktor/server/util/URLBuilderKt;->createFromCall(Lio/ktor/http/URLBuilder$Companion;Lio/ktor/server/application/ApplicationCall;)Lio/ktor/http/URLBuilder;

    move-result-object v3

    .line 35
    new-instance v4, Lio/ktor/http/HeadersBuilder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v4, v2, v0, v1}, Lio/ktor/http/HeadersBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v4

    .local v0, "$this$_init__u24lambda_u241":Lio/ktor/http/HeadersBuilder;
    const/4 v1, 0x0

    .line 36
    .local v1, "$i$a$-apply-DefaultResponsePushBuilder$2":I
    invoke-interface {p1}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v2

    invoke-interface {v2}, Lio/ktor/server/request/ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v2

    check-cast v2, Lio/ktor/util/StringValues;

    invoke-virtual {v0, v2}, Lio/ktor/http/HeadersBuilder;->appendAll(Lio/ktor/util/StringValues;)V

    .line 37
    sget-object v2, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v2}, Lio/ktor/http/HttpHeaders;->getReferrer()Ljava/lang/String;

    move-result-object v2

    move-object v5, p1

    .line 49
    .local v5, "$this$url_u24default$iv":Lio/ktor/server/application/ApplicationCall;
    const/4 v6, 0x0

    .line 50
    .local v6, "$i$f$url":I
    sget-object v7, Lio/ktor/http/URLBuilder;->Companion:Lio/ktor/http/URLBuilder$Companion;

    invoke-static {v7, v5}, Lio/ktor/server/util/URLBuilderKt;->createFromCall(Lio/ktor/http/URLBuilder$Companion;Lio/ktor/server/application/ApplicationCall;)Lio/ktor/http/URLBuilder;

    move-result-object v7

    const/4 v8, 0x0

    .local v8, "$i$a$-url-URLBuilderKt$url$1":I
    move-object v9, v7

    .line 51
    .local v9, "$this$null":Lio/ktor/http/URLBuilder;
    nop

    .end local v9    # "$this$null":Lio/ktor/http/URLBuilder;
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    .end local v8    # "$i$a$-url-URLBuilderKt$url$1":I
    invoke-virtual {v7}, Lio/ktor/http/URLBuilder;->buildString()Ljava/lang/String;

    move-result-object v5

    .line 37
    .end local v5    # "$this$url_u24default$iv":Lio/ktor/server/application/ApplicationCall;
    .end local v6    # "$i$f$url":I
    invoke-virtual {v0, v2, v5}, Lio/ktor/http/HeadersBuilder;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    nop

    .end local v0    # "$this$_init__u24lambda_u241":Lio/ktor/http/HeadersBuilder;
    .end local v1    # "$i$a$-apply-DefaultResponsePushBuilder$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    nop

    .line 33
    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lio/ktor/server/response/DefaultResponsePushBuilder;-><init>(Lio/ktor/http/HttpMethod;Lio/ktor/http/URLBuilder;Lio/ktor/http/HeadersBuilder;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getHeaders()Lio/ktor/http/HeadersBuilder;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/ktor/server/response/DefaultResponsePushBuilder;->headers:Lio/ktor/http/HeadersBuilder;

    return-object v0
.end method

.method public getMethod()Lio/ktor/http/HttpMethod;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/ktor/server/response/DefaultResponsePushBuilder;->method:Lio/ktor/http/HttpMethod;

    return-object v0
.end method

.method public getUrl()Lio/ktor/http/URLBuilder;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/ktor/server/response/DefaultResponsePushBuilder;->url:Lio/ktor/http/URLBuilder;

    return-object v0
.end method

.method public getVersions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/ktor/http/content/Version;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lio/ktor/server/response/DefaultResponsePushBuilder;->versions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getVersions()Ljava/util/List;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lio/ktor/server/response/DefaultResponsePushBuilder;->getVersions()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public setMethod(Lio/ktor/http/HttpMethod;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/ktor/http/HttpMethod;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lio/ktor/server/response/DefaultResponsePushBuilder;->method:Lio/ktor/http/HttpMethod;

    return-void
.end method

.method public setVersions(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/ktor/http/content/Version;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lio/ktor/server/response/DefaultResponsePushBuilder;->versions:Ljava/util/ArrayList;

    .line 45
    return-void
.end method
