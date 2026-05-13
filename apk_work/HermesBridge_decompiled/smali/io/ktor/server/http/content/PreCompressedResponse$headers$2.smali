.class final Lio/ktor/server/http/content/PreCompressedResponse$headers$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PreCompressed.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/http/content/PreCompressedResponse;-><init>(Lio/ktor/http/content/OutgoingContent$ReadChannelContent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/http/Headers;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreCompressed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreCompressed.kt\nio/ktor/server/http/content/PreCompressedResponse$headers$2\n+ 2 Headers.kt\nio/ktor/http/Headers$Companion\n*L\n1#1,178:1\n24#2:179\n*S KotlinDebug\n*F\n+ 1 PreCompressed.kt\nio/ktor/server/http/content/PreCompressedResponse$headers$2\n*L\n47#1:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/http/Headers;",
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
.field final synthetic this$0:Lio/ktor/server/http/content/PreCompressedResponse;


# direct methods
.method constructor <init>(Lio/ktor/server/http/content/PreCompressedResponse;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/http/content/PreCompressedResponse$headers$2;->this$0:Lio/ktor/server/http/content/PreCompressedResponse;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/http/Headers;
    .locals 12

    .line 45
    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse$headers$2;->this$0:Lio/ktor/server/http/content/PreCompressedResponse;

    invoke-static {v0}, Lio/ktor/server/http/content/PreCompressedResponse;->access$getEncoding$p(Lio/ktor/server/http/content/PreCompressedResponse;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/ktor/server/http/content/PreCompressedResponse$headers$2;->this$0:Lio/ktor/server/http/content/PreCompressedResponse;

    invoke-static {v0}, Lio/ktor/server/http/content/PreCompressedResponse;->access$getOriginal$p(Lio/ktor/server/http/content/PreCompressedResponse;)Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    sget-object v0, Lio/ktor/http/Headers;->Companion:Lio/ktor/http/Headers$Companion;

    .local v0, "this_$iv":Lio/ktor/http/Headers$Companion;
    iget-object v1, p0, Lio/ktor/server/http/content/PreCompressedResponse$headers$2;->this$0:Lio/ktor/server/http/content/PreCompressedResponse;

    const/4 v2, 0x0

    .line 179
    .local v2, "$i$f$build":I
    new-instance v3, Lio/ktor/http/HeadersBuilder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v5}, Lio/ktor/http/HeadersBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v3

    .local v4, "$this$invoke_u24lambda_u240":Lio/ktor/http/HeadersBuilder;
    const/4 v5, 0x0

    .line 48
    .local v5, "$i$a$-build-PreCompressedResponse$headers$2$1":I
    move-object v6, v4

    check-cast v6, Lio/ktor/util/StringValuesBuilder;

    invoke-static {v1}, Lio/ktor/server/http/content/PreCompressedResponse;->access$getOriginal$p(Lio/ktor/server/http/content/PreCompressedResponse;)Lio/ktor/http/content/OutgoingContent$ReadChannelContent;

    move-result-object v7

    invoke-virtual {v7}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v7

    check-cast v7, Lio/ktor/util/StringValues;

    sget-object v8, Lio/ktor/server/http/content/PreCompressedResponse$headers$2$1$1;->INSTANCE:Lio/ktor/server/http/content/PreCompressedResponse$headers$2$1$1;

    move-object v9, v8

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lio/ktor/util/StringValuesKt;->appendFiltered$default(Lio/ktor/util/StringValuesBuilder;Lio/ktor/util/StringValues;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 49
    sget-object v6, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v6}, Lio/ktor/http/HttpHeaders;->getContentEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lio/ktor/server/http/content/PreCompressedResponse;->access$getEncoding$p(Lio/ktor/server/http/content/PreCompressedResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lio/ktor/http/HeadersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    nop

    .line 179
    .end local v4    # "$this$invoke_u24lambda_u240":Lio/ktor/http/HeadersBuilder;
    .end local v5    # "$i$a$-build-PreCompressedResponse$headers$2$1":I
    invoke-virtual {v3}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v0

    .line 47
    .end local v0    # "this_$iv":Lio/ktor/http/Headers$Companion;
    .end local v2    # "$i$f$build":I
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/ktor/server/http/content/PreCompressedResponse$headers$2;->invoke()Lio/ktor/http/Headers;

    move-result-object v0

    return-object v0
.end method
