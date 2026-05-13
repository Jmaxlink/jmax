.class public final Lio/ktor/server/response/ResponseTypeKt;
.super Ljava/lang/Object;
.source "ResponseType.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\",\u0010\u0004\u001a\u0004\u0018\u00010\u0002*\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00028F@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "ResponseTypeAttributeKey",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/util/reflect/TypeInfo;",
        "value",
        "responseType",
        "Lio/ktor/server/response/ApplicationResponse;",
        "getResponseType",
        "(Lio/ktor/server/response/ApplicationResponse;)Lio/ktor/util/reflect/TypeInfo;",
        "setResponseType",
        "(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V",
        "ktor-server-core"
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
.field private static final ResponseTypeAttributeKey:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/util/reflect/TypeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "ResponseTypeAttributeKey"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/response/ResponseTypeKt;->ResponseTypeAttributeKey:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public static final getResponseType(Lio/ktor/server/response/ApplicationResponse;)Lio/ktor/util/reflect/TypeInfo;
    .locals 2
    .param p0, "$this$responseType"    # Lio/ktor/server/response/ApplicationResponse;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lio/ktor/server/response/ApplicationResponse;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/response/ResponseTypeKt;->ResponseTypeAttributeKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/util/reflect/TypeInfo;

    return-object v0
.end method

.method public static final setResponseType(Lio/ktor/server/response/ApplicationResponse;Lio/ktor/util/reflect/TypeInfo;)V
    .locals 2
    .param p0, "$this$responseType"    # Lio/ktor/server/response/ApplicationResponse;
    .param p1, "value"    # Lio/ktor/util/reflect/TypeInfo;
    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p0}, Lio/ktor/server/response/ApplicationResponse;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/response/ResponseTypeKt;->ResponseTypeAttributeKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1, p1}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p0}, Lio/ktor/server/response/ApplicationResponse;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/response/ResponseTypeKt;->ResponseTypeAttributeKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->remove(Lio/ktor/util/AttributeKey;)V

    .line 26
    :goto_0
    return-void
.end method
