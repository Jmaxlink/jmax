.class public final Lio/ktor/server/routing/RoutingPath;
.super Ljava/lang/Object;
.source "RoutingPath.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/routing/RoutingPath$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0015\u0008\u0002\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/ktor/server/routing/RoutingPath;",
        "",
        "parts",
        "",
        "Lio/ktor/server/routing/RoutingPathSegment;",
        "(Ljava/util/List;)V",
        "getParts",
        "()Ljava/util/List;",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lio/ktor/server/routing/RoutingPath$Companion;

.field private static final root:Lio/ktor/server/routing/RoutingPath;


# instance fields
.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/routing/RoutingPathSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/routing/RoutingPath$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/routing/RoutingPath$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/routing/RoutingPath;->Companion:Lio/ktor/server/routing/RoutingPath$Companion;

    .line 19
    new-instance v0, Lio/ktor/server/routing/RoutingPath;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/server/routing/RoutingPath;-><init>(Ljava/util/List;)V

    sput-object v0, Lio/ktor/server/routing/RoutingPath;->root:Lio/ktor/server/routing/RoutingPath;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "parts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/server/routing/RoutingPathSegment;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/routing/RoutingPath;->parts:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/ktor/server/routing/RoutingPath;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getRoot$cp()Lio/ktor/server/routing/RoutingPath;
    .locals 1

    .line 14
    sget-object v0, Lio/ktor/server/routing/RoutingPath;->root:Lio/ktor/server/routing/RoutingPath;

    return-object v0
.end method


# virtual methods
.method public final getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/routing/RoutingPathSegment;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lio/ktor/server/routing/RoutingPath;->parts:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 41
    iget-object v0, p0, Lio/ktor/server/routing/RoutingPath;->parts:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, "/"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v0, Lio/ktor/server/routing/RoutingPath$toString$1;->INSTANCE:Lio/ktor/server/routing/RoutingPath$toString$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
