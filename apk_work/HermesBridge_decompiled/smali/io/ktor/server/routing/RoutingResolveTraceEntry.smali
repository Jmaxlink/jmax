.class public Lio/ktor/server/routing/RoutingResolveTraceEntry;
.super Ljava/lang/Object;
.source "RoutingResolveTrace.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoutingResolveTrace.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoutingResolveTrace.kt\nio/ktor/server/routing/RoutingResolveTraceEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n1#2:152\n1855#3,2:153\n*S KotlinDebug\n*F\n+ 1 RoutingResolveTrace.kt\nio/ktor/server/routing/RoutingResolveTraceEntry\n*L\n38#1:153,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0000J\u001c\u0010\u0016\u001a\u00020\u00142\n\u0010\u0017\u001a\u00060\u0018j\u0002`\u00192\u0006\u0010\u001a\u001a\u00020\u0005H\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lio/ktor/server/routing/RoutingResolveTraceEntry;",
        "",
        "route",
        "Lio/ktor/server/routing/Route;",
        "segmentIndex",
        "",
        "result",
        "Lio/ktor/server/routing/RoutingResolveResult;",
        "(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;)V",
        "children",
        "",
        "getResult",
        "()Lio/ktor/server/routing/RoutingResolveResult;",
        "setResult",
        "(Lio/ktor/server/routing/RoutingResolveResult;)V",
        "getRoute",
        "()Lio/ktor/server/routing/Route;",
        "getSegmentIndex",
        "()I",
        "append",
        "",
        "item",
        "buildText",
        "builder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "indent",
        "toString",
        "",
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
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/routing/RoutingResolveTraceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private result:Lio/ktor/server/routing/RoutingResolveResult;

.field private final route:Lio/ktor/server/routing/Route;

.field private final segmentIndex:I


# direct methods
.method public constructor <init>(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;)V
    .locals 1
    .param p1, "route"    # Lio/ktor/server/routing/Route;
    .param p2, "segmentIndex"    # I
    .param p3, "result"    # Lio/ktor/server/routing/RoutingResolveResult;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->route:Lio/ktor/server/routing/Route;

    .line 17
    iput p2, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->segmentIndex:I

    .line 18
    iput-object p3, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->result:Lio/ktor/server/routing/RoutingResolveResult;

    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 15
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 18
    const/4 p3, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/server/routing/RoutingResolveTraceEntry;-><init>(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final append(Lio/ktor/server/routing/RoutingResolveTraceEntry;)V
    .locals 3
    .param p1, "item"    # Lio/ktor/server/routing/RoutingResolveTraceEntry;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->children:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 152
    .local v1, "it":Ljava/util/List;
    const/4 v2, 0x0

    .line 29
    .local v2, "$i$a$-also-RoutingResolveTraceEntry$append$items$1":I
    iput-object v1, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->children:Ljava/util/List;

    .line 30
    .end local v1    # "it":Ljava/util/List;
    .end local v2    # "$i$a$-also-RoutingResolveTraceEntry$append$items$1":I
    .local v0, "items":Ljava/util/List;
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public buildText(Ljava/lang/StringBuilder;I)V
    .locals 7
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, p2}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "append(value)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "append(\'\\n\')"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->children:Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 153
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/ktor/server/routing/RoutingResolveTraceEntry;

    .local v4, "it":Lio/ktor/server/routing/RoutingResolveTraceEntry;
    const/4 v5, 0x0

    .line 38
    .local v5, "$i$a$-forEach-RoutingResolveTraceEntry$buildText$1":I
    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v4, p1, v6}, Lio/ktor/server/routing/RoutingResolveTraceEntry;->buildText(Ljava/lang/StringBuilder;I)V

    .line 153
    .end local v4    # "it":Lio/ktor/server/routing/RoutingResolveTraceEntry;
    .end local v5    # "$i$a$-forEach-RoutingResolveTraceEntry$buildText$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 154
    :cond_0
    nop

    .line 39
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :cond_1
    return-void
.end method

.method public final getResult()Lio/ktor/server/routing/RoutingResolveResult;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->result:Lio/ktor/server/routing/RoutingResolveResult;

    return-object v0
.end method

.method public final getRoute()Lio/ktor/server/routing/Route;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->route:Lio/ktor/server/routing/Route;

    return-object v0
.end method

.method public final getSegmentIndex()I
    .locals 1

    .line 17
    iget v0, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->segmentIndex:I

    return v0
.end method

.method public final setResult(Lio/ktor/server/routing/RoutingResolveResult;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/ktor/server/routing/RoutingResolveResult;

    .line 18
    iput-object p1, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->result:Lio/ktor/server/routing/RoutingResolveResult;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->route:Lio/ktor/server/routing/Route;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->segmentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/RoutingResolveTraceEntry;->result:Lio/ktor/server/routing/RoutingResolveResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
