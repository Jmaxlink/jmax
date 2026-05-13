.class final Lio/ktor/server/engine/BaseApplicationResponse$commitHeaders$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseApplicationResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/BaseApplicationResponse;->commitHeaders(Lio/ktor/http/content/OutgoingContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "name",
        "",
        "values",
        "",
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
.field final synthetic $content:Lio/ktor/http/content/OutgoingContent;

.field final synthetic $transferEncodingSet:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lio/ktor/server/engine/BaseApplicationResponse;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/ktor/http/content/OutgoingContent;Lio/ktor/server/engine/BaseApplicationResponse;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/engine/BaseApplicationResponse$commitHeaders$2;->$transferEncodingSet:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lio/ktor/server/engine/BaseApplicationResponse$commitHeaders$2;->$content:Lio/ktor/http/content/OutgoingContent;

    iput-object p3, p0, Lio/ktor/server/engine/BaseApplicationResponse$commitHeaders$2;->this$0:Lio/ktor/server/engine/BaseApplicationResponse;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 60
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lio/ktor/server/engine/BaseApplicationResponse$commitHeaders$2;->invoke(Ljava/lang/String;Ljava/util/List;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    nop

    .line 62
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationResponse$commitHeaders$2;->$transferEncodingSet:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_1

    .line 63
    :cond_0
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getUpgrade()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lio/ktor/server/engine/BaseApplicationResponse$commitHeaders$2;->$content:Lio/ktor/http/content/OutgoingContent;

    instance-of v0, v0, Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;

    if-eqz v0, :cond_2

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lio/ktor/server/engine/BaseApplicationResponse$commitHeaders$2;->this$0:Lio/ktor/server/engine/BaseApplicationResponse;

    invoke-virtual {v2}, Lio/ktor/server/engine/BaseApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lio/ktor/server/response/ResponseHeaders;->append(Ljava/lang/String;Ljava/lang/String;Z)V

    .end local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 70
    :cond_1
    return-void

    .line 65
    :cond_2
    new-instance v0, Lio/ktor/server/engine/BaseApplicationResponse$InvalidHeaderForContent;

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getUpgrade()Ljava/lang/String;

    move-result-object v1

    const-string v2, "non-upgrading response"

    invoke-direct {v0, v1, v2}, Lio/ktor/server/engine/BaseApplicationResponse$InvalidHeaderForContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .restart local v1    # "value":Ljava/lang/String;
    iget-object v2, p0, Lio/ktor/server/engine/BaseApplicationResponse$commitHeaders$2;->this$0:Lio/ktor/server/engine/BaseApplicationResponse;

    invoke-virtual {v2}, Lio/ktor/server/engine/BaseApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, v1

    invoke-static/range {v2 .. v7}, Lio/ktor/server/response/ResponseHeaders;->append$default(Lio/ktor/server/response/ResponseHeaders;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .end local v1    # "value":Ljava/lang/String;
    goto :goto_2

    .line 77
    :cond_4
    return-void
.end method
