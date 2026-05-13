.class public final Lio/ktor/http/URLProtocol$Companion;
.super Ljava/lang/Object;
.source "URLProtocol.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/URLProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0011R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00040\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/ktor/http/URLProtocol$Companion;",
        "",
        "()V",
        "HTTP",
        "Lio/ktor/http/URLProtocol;",
        "getHTTP",
        "()Lio/ktor/http/URLProtocol;",
        "HTTPS",
        "getHTTPS",
        "SOCKS",
        "getSOCKS",
        "WS",
        "getWS",
        "WSS",
        "getWSS",
        "byName",
        "",
        "",
        "getByName",
        "()Ljava/util/Map;",
        "createOrDefault",
        "name",
        "ktor-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/http/URLProtocol$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createOrDefault(Ljava/lang/String;)Lio/ktor/http/URLProtocol;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lio/ktor/util/TextKt;->toLowerCasePreservingASCIIRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 55
    .local v1, "$i$a$-let-URLProtocol$Companion$createOrDefault$1":I
    sget-object v2, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {v2}, Lio/ktor/http/URLProtocol$Companion;->getByName()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/http/URLProtocol;

    if-nez v2, :cond_0

    new-instance v2, Lio/ktor/http/URLProtocol;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    .line 54
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-URLProtocol$Companion$createOrDefault$1":I
    :cond_0
    nop

    .line 56
    return-object v2
.end method

.method public final getByName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/ktor/http/URLProtocol;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getByName$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHTTP()Lio/ktor/http/URLProtocol;
    .locals 1

    .line 24
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getHTTP$cp()Lio/ktor/http/URLProtocol;

    move-result-object v0

    return-object v0
.end method

.method public final getHTTPS()Lio/ktor/http/URLProtocol;
    .locals 1

    .line 29
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getHTTPS$cp()Lio/ktor/http/URLProtocol;

    move-result-object v0

    return-object v0
.end method

.method public final getSOCKS()Lio/ktor/http/URLProtocol;
    .locals 1

    .line 44
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getSOCKS$cp()Lio/ktor/http/URLProtocol;

    move-result-object v0

    return-object v0
.end method

.method public final getWS()Lio/ktor/http/URLProtocol;
    .locals 1

    .line 34
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getWS$cp()Lio/ktor/http/URLProtocol;

    move-result-object v0

    return-object v0
.end method

.method public final getWSS()Lio/ktor/http/URLProtocol;
    .locals 1

    .line 39
    invoke-static {}, Lio/ktor/http/URLProtocol;->access$getWSS$cp()Lio/ktor/http/URLProtocol;

    move-result-object v0

    return-object v0
.end method
