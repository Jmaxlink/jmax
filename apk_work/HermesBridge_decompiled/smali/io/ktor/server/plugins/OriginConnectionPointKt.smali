.class public final Lio/ktor/server/plugins/OriginConnectionPointKt;
.super Ljava/lang/Object;
.source "OriginConnectionPoint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\"\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00018\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u001b\u0010\u0007\u001a\u00020\u0002*\u00020\u00088F\u00a2\u0006\u000c\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u001b\u0010\r\u001a\u00020\u000e*\u00020\u000f8F\u00a2\u0006\u000c\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "MutableOriginConnectionPointKey",
        "Lio/ktor/util/AttributeKey;",
        "Lio/ktor/server/plugins/MutableOriginConnectionPoint;",
        "getMutableOriginConnectionPointKey$annotations",
        "()V",
        "getMutableOriginConnectionPointKey",
        "()Lio/ktor/util/AttributeKey;",
        "mutableOriginConnectionPoint",
        "Lio/ktor/server/application/ApplicationCall;",
        "getMutableOriginConnectionPoint$annotations",
        "(Lio/ktor/server/application/ApplicationCall;)V",
        "getMutableOriginConnectionPoint",
        "(Lio/ktor/server/application/ApplicationCall;)Lio/ktor/server/plugins/MutableOriginConnectionPoint;",
        "origin",
        "Lio/ktor/http/RequestConnectionPoint;",
        "Lio/ktor/server/request/ApplicationRequest;",
        "getOrigin$annotations",
        "(Lio/ktor/server/request/ApplicationRequest;)V",
        "getOrigin",
        "(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/RequestConnectionPoint;",
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
.field private static final MutableOriginConnectionPointKey:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/plugins/MutableOriginConnectionPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "MutableOriginConnectionPointKey"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/plugins/OriginConnectionPointKt;->MutableOriginConnectionPointKey:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public static final getMutableOriginConnectionPoint(Lio/ktor/server/application/ApplicationCall;)Lio/ktor/server/plugins/MutableOriginConnectionPoint;
    .locals 3
    .param p0, "$this$mutableOriginConnectionPoint"    # Lio/ktor/server/application/ApplicationCall;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-interface {p0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/plugins/OriginConnectionPointKt;->MutableOriginConnectionPointKey:Lio/ktor/util/AttributeKey;

    new-instance v2, Lio/ktor/server/plugins/OriginConnectionPointKt$mutableOriginConnectionPoint$1;

    invoke-direct {v2, p0}, Lio/ktor/server/plugins/OriginConnectionPointKt$mutableOriginConnectionPoint$1;-><init>(Lio/ktor/server/application/ApplicationCall;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1, v2}, Lio/ktor/util/Attributes;->computeIfAbsent(Lio/ktor/util/AttributeKey;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;

    .line 131
    return-object v0
.end method

.method public static synthetic getMutableOriginConnectionPoint$annotations(Lio/ktor/server/application/ApplicationCall;)V
    .locals 0

    return-void
.end method

.method public static final getMutableOriginConnectionPointKey()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/plugins/MutableOriginConnectionPoint;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lio/ktor/server/plugins/OriginConnectionPointKt;->MutableOriginConnectionPointKey:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static synthetic getMutableOriginConnectionPointKey$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "This API will be redesigned as per https://youtrack.jetbrains.com/issue/KTOR-2657"
    .end annotation

    return-void
.end method

.method public static final getOrigin(Lio/ktor/server/request/ApplicationRequest;)Lio/ktor/http/RequestConnectionPoint;
    .locals 2
    .param p0, "$this$origin"    # Lio/ktor/server/request/ApplicationRequest;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lio/ktor/server/request/ApplicationRequest;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v0

    sget-object v1, Lio/ktor/server/plugins/OriginConnectionPointKt;->MutableOriginConnectionPointKey:Lio/ktor/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/server/plugins/MutableOriginConnectionPoint;

    if-eqz v0, :cond_0

    check-cast v0, Lio/ktor/http/RequestConnectionPoint;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lio/ktor/server/request/ApplicationRequest;->getLocal()Lio/ktor/http/RequestConnectionPoint;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static synthetic getOrigin$annotations(Lio/ktor/server/request/ApplicationRequest;)V
    .locals 0

    return-void
.end method
