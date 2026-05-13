.class final Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RoutingResolveTrace.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/routing/RoutingResolveTrace;->buildText()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lio/ktor/server/routing/RoutingResolveResult$Success;",
        ">;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "path",
        "",
        "Lio/ktor/server/routing/RoutingResolveResult$Success;",
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


# static fields
.field public static final INSTANCE:Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2;

    invoke-direct {v0}, Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2;-><init>()V

    sput-object v0, Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2;->INSTANCE:Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "path"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/server/routing/RoutingResolveResult$Success;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, " -> "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v0, "  "

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v0, Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2$1;->INSTANCE:Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 108
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2;->invoke(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
