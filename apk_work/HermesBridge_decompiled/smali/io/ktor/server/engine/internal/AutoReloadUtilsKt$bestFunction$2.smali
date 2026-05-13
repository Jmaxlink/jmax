.class final Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AutoReloadUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->bestFunction(Ljava/util/List;)Lkotlin/reflect/KFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/KFunction<",
        "+TR;>;",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoReloadUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoReloadUtils.kt\nio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1774#2,4:80\n*S KotlinDebug\n*F\n+ 1 AutoReloadUtils.kt\nio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$2\n*L\n36#1:80,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000f\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "it",
        "Lkotlin/reflect/KFunction;",
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
.field public static final INSTANCE:Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$2;

    invoke-direct {v0}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$2;-><init>()V

    sput-object v0, Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$2;->INSTANCE:Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/reflect/KFunction;)Ljava/lang/Comparable;
    .locals 8
    .param p1, "it"    # Lkotlin/reflect/KFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KFunction<",
            "+TR;>;)",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 80
    .local v1, "$i$f$count":I
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 81
    :cond_0
    const/4 v2, 0x0

    .line 82
    .local v2, "count$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lkotlin/reflect/KParameter;

    .local v5, "it":Lkotlin/reflect/KParameter;
    const/4 v6, 0x0

    .line 36
    .local v6, "$i$a$-count-AutoReloadUtilsKt$bestFunction$2$1":I
    invoke-interface {v5}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v7

    .line 82
    .end local v5    # "it":Lkotlin/reflect/KParameter;
    .end local v6    # "$i$a$-count-AutoReloadUtilsKt$bestFunction$2$1":I
    xor-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 83
    :cond_2
    nop

    .end local v0    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$count":I
    .end local v2    # "count$iv":I
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 36
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 34
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/KFunction;

    invoke-virtual {p0, v0}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt$bestFunction$2;->invoke(Lkotlin/reflect/KFunction;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
