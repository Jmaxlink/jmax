.class public final Lio/ktor/server/http/content/SPAConfig;
.super Ljava/lang/Object;
.source "SinglePageApplication.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001BI\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u001a\u0008\u0002\u0010\u0008\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\n0\t\u00a2\u0006\u0002\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000fR&\u0010\u0008\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\n0\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/ktor/server/http/content/SPAConfig;",
        "",
        "defaultPage",
        "",
        "applicationRoute",
        "filesPath",
        "useResources",
        "",
        "ignoredFiles",
        "",
        "Lkotlin/Function1;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V",
        "getApplicationRoute",
        "()Ljava/lang/String;",
        "setApplicationRoute",
        "(Ljava/lang/String;)V",
        "getDefaultPage",
        "setDefaultPage",
        "getFilesPath",
        "setFilesPath",
        "getIgnoredFiles$ktor_server_core",
        "()Ljava/util/List;",
        "getUseResources",
        "()Z",
        "setUseResources",
        "(Z)V",
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
.field private applicationRoute:Ljava/lang/String;

.field private defaultPage:Ljava/lang/String;

.field private filesPath:Ljava/lang/String;

.field private final ignoredFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private useResources:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/ktor/server/http/content/SPAConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .param p1, "defaultPage"    # Ljava/lang/String;
    .param p2, "applicationRoute"    # Ljava/lang/String;
    .param p3, "filesPath"    # Ljava/lang/String;
    .param p4, "useResources"    # Z
    .param p5, "ignoredFiles"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "defaultPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationRoute"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filesPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ignoredFiles"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lio/ktor/server/http/content/SPAConfig;->defaultPage:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lio/ktor/server/http/content/SPAConfig;->applicationRoute:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lio/ktor/server/http/content/SPAConfig;->filesPath:Ljava/lang/String;

    .line 77
    iput-boolean p4, p0, Lio/ktor/server/http/content/SPAConfig;->useResources:Z

    .line 83
    iput-object p5, p0, Lio/ktor/server/http/content/SPAConfig;->ignoredFiles:Ljava/util/List;

    .line 57
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    .line 57
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 61
    const-string p1, "index.html"

    .line 57
    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 66
    const-string p2, "/"

    move-object p7, p2

    goto :goto_0

    .line 57
    :cond_1
    move-object p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 72
    const-string p3, ""

    move-object v0, p3

    goto :goto_1

    .line 57
    :cond_2
    move-object v0, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 77
    const/4 p4, 0x0

    move v1, p4

    goto :goto_2

    .line 57
    :cond_3
    move v1, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 83
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move-object p5, p2

    check-cast p5, Ljava/util/List;

    move-object v2, p5

    goto :goto_3

    .line 57
    :cond_4
    move-object v2, p5

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    invoke-direct/range {p2 .. p7}, Lio/ktor/server/http/content/SPAConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 84
    return-void
.end method


# virtual methods
.method public final getApplicationRoute()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/ktor/server/http/content/SPAConfig;->applicationRoute:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultPage()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/ktor/server/http/content/SPAConfig;->defaultPage:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilesPath()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/ktor/server/http/content/SPAConfig;->filesPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getIgnoredFiles$ktor_server_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lio/ktor/server/http/content/SPAConfig;->ignoredFiles:Ljava/util/List;

    return-object v0
.end method

.method public final getUseResources()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lio/ktor/server/http/content/SPAConfig;->useResources:Z

    return v0
.end method

.method public final setApplicationRoute(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lio/ktor/server/http/content/SPAConfig;->applicationRoute:Ljava/lang/String;

    return-void
.end method

.method public final setDefaultPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lio/ktor/server/http/content/SPAConfig;->defaultPage:Ljava/lang/String;

    return-void
.end method

.method public final setFilesPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lio/ktor/server/http/content/SPAConfig;->filesPath:Ljava/lang/String;

    return-void
.end method

.method public final setUseResources(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 77
    iput-boolean p1, p0, Lio/ktor/server/http/content/SPAConfig;->useResources:Z

    return-void
.end method
