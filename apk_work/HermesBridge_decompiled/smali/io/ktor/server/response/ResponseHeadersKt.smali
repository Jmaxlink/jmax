.class public final Lio/ktor/server/response/ResponseHeadersKt;
.super Ljava/lang/Object;
.source "ResponseHeaders.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "appendIfAbsent",
        "",
        "Lio/ktor/server/response/ResponseHeaders;",
        "name",
        "",
        "value",
        "safeOnly",
        "",
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


# direct methods
.method public static final appendIfAbsent(Lio/ktor/server/response/ResponseHeaders;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "$this$appendIfAbsent"    # Lio/ktor/server/response/ResponseHeaders;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "safeOnly"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lio/ktor/server/response/ResponseHeaders;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/response/ResponseHeaders;->append(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public static synthetic appendIfAbsent$default(Lio/ktor/server/response/ResponseHeaders;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 80
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/response/ResponseHeadersKt;->appendIfAbsent(Lio/ktor/server/response/ResponseHeaders;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
