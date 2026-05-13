.class public final Lio/ktor/server/application/ApplicationCallKt;
.super Ljava/lang/Object;
.source "ApplicationCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0003\u001a\u00020\u0004*\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0006\"(\u0010\u0008\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00028F@@X\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "RECEIVE_TYPE_KEY",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/util/reflect/TypeInfo;",
        "isHandled",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
        "(Lio/ktor/server/application/ApplicationCall;)Z",
        "value",
        "receiveType",
        "getReceiveType",
        "(Lio/ktor/server/application/ApplicationCall;)Lio/ktor/util/reflect/TypeInfo;",
        "setReceiveType",
        "(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;)V",
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
.field private static final RECEIVE_TYPE_KEY:Lio/ktor/util/AttributeKey;
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

    .line 14
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "ReceiveType"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/application/ApplicationCallKt;->RECEIVE_TYPE_KEY:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public static final getReceiveType(Lio/ktor/server/application/ApplicationCall;)Lio/ktor/util/reflect/TypeInfo;
    .locals 2
    .param p0, "$this$receiveType"    # Lio/ktor/server/application/ApplicationCall;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/application/ApplicationCallKt;->RECEIVE_TYPE_KEY:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->get(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/util/reflect/TypeInfo;

    return-object v0
.end method

.method public static final isHandled(Lio/ktor/server/application/ApplicationCall;)Z
    .locals 1
    .param p0, "$this$isHandled"    # Lio/ktor/server/application/ApplicationCall;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/response/ApplicationResponse;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public static final setReceiveType(Lio/ktor/server/application/ApplicationCall;Lio/ktor/util/reflect/TypeInfo;)V
    .locals 2
    .param p0, "$this$receiveType"    # Lio/ktor/server/application/ApplicationCall;
    .param p1, "value"    # Lio/ktor/util/reflect/TypeInfo;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/application/ApplicationCallKt;->RECEIVE_TYPE_KEY:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1, p1}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    .line 60
    return-void
.end method
