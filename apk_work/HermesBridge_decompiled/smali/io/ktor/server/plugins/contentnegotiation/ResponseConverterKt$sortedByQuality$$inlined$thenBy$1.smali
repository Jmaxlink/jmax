.class public final Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$sortedByQuality$$inlined$thenBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt;->sortedByQuality(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenBy$1\n+ 2 ResponseConverter.kt\nio/ktor/server/plugins/contentnegotiation/ResponseConverterKt\n*L\n1#1,328:1\n109#2,9:329\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "a",
        "kotlin.jvm.PlatformType",
        "b",
        "compare",
        "(Ljava/lang/Object;Ljava/lang/Object;)I",
        "kotlin/comparisons/ComparisonsKt__ComparisonsKt$thenBy$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_thenBy:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$sortedByQuality$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ResponseConverterKt$sortedByQuality$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 145
    .local v0, "previousCompare":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;

    .local v1, "it":Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;
    const/4 v2, 0x0

    .line 329
    .local v2, "$i$a$-thenBy-ResponseConverterKt$sortedByQuality$2":I
    invoke-virtual {v1}, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v3

    .line 330
    .local v3, "contentType":Lio/ktor/http/ContentType;
    const/4 v4, 0x0

    .line 331
    .local v4, "asterisks":I
    invoke-virtual {v3}, Lio/ktor/http/ContentType;->getContentType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "*"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x2

    .line 332
    nop

    .line 334
    :cond_1
    invoke-virtual {v3}, Lio/ktor/http/ContentType;->getContentSubtype()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 335
    add-int/lit8 v4, v4, 0x1

    .line 337
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    .line 145
    .end local v1    # "it":Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;
    .end local v2    # "$i$a$-thenBy-ResponseConverterKt$sortedByQuality$2":I
    .end local v3    # "contentType":Lio/ktor/http/ContentType;
    .end local v4    # "asterisks":I
    move-object v1, p2

    check-cast v1, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;

    .restart local v1    # "it":Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;
    const/4 v2, 0x0

    .line 329
    .restart local v2    # "$i$a$-thenBy-ResponseConverterKt$sortedByQuality$2":I
    invoke-virtual {v1}, Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;->getContentType()Lio/ktor/http/ContentType;

    move-result-object v3

    .line 330
    .restart local v3    # "contentType":Lio/ktor/http/ContentType;
    const/4 v4, 0x0

    .line 331
    .restart local v4    # "asterisks":I
    invoke-virtual {v3}, Lio/ktor/http/ContentType;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v4, 0x2

    .line 332
    nop

    .line 334
    :cond_3
    invoke-virtual {v3}, Lio/ktor/http/ContentType;->getContentSubtype()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 335
    add-int/lit8 v4, v4, 0x1

    .line 337
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Comparable;

    .line 145
    .end local v1    # "it":Lio/ktor/server/plugins/contentnegotiation/ContentTypeWithQuality;
    .end local v2    # "$i$a$-thenBy-ResponseConverterKt$sortedByQuality$2":I
    .end local v3    # "contentType":Lio/ktor/http/ContentType;
    .end local v4    # "asterisks":I
    invoke-static {v5, v6}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    :goto_0
    return v1
.end method
