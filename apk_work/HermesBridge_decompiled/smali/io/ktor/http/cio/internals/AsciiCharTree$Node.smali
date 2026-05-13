.class public final Lio/ktor/http/cio/internals/AsciiCharTree$Node;
.super Ljava/lang/Object;
.source "AsciiCharTree.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/cio/internals/AsciiCharTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsciiCharTree.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsciiCharTree.kt\nio/ktor/http/cio/internals/AsciiCharTree$Node\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n661#2,11:74\n*S KotlinDebug\n*F\n+ 1 AsciiCharTree.kt\nio/ktor/http/cio/internals/AsciiCharTree$Node\n*L\n9#1:74,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\t\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u00020\u0002B/\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00000\u0006\u00a2\u0006\u0002\u0010\u0008R!\u0010\t\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00000\n\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00000\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ktor/http/cio/internals/AsciiCharTree$Node;",
        "T",
        "",
        "ch",
        "",
        "exact",
        "",
        "children",
        "(CLjava/util/List;Ljava/util/List;)V",
        "array",
        "",
        "getArray",
        "()[Lio/ktor/http/cio/internals/AsciiCharTree$Node;",
        "[Lio/ktor/http/cio/internals/AsciiCharTree$Node;",
        "getCh",
        "()C",
        "getChildren",
        "()Ljava/util/List;",
        "getExact",
        "ktor-http-cio"
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
.field private final array:[Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final ch:C

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final exact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(CLjava/util/List;Ljava/util/List;)V
    .locals 17
    .param p1, "ch"    # C
    .param p2, "exact"    # Ljava/util/List;
    .param p3, "children"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "exact"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "children"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v3, p1

    iput-char v3, v0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->ch:C

    iput-object v1, v0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->exact:Ljava/util/List;

    iput-object v2, v0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->children:Ljava/util/List;

    .line 9
    const/16 v4, 0x100

    new-array v5, v4, [Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_5

    iget-object v8, v0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->children:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$singleOrNull$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 74
    .local v9, "$i$f$singleOrNull":I
    const/4 v10, 0x0

    .line 75
    .local v10, "single$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 76
    .local v11, "found$iv":Z
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 77
    .local v13, "element$iv":Ljava/lang/Object;
    move-object v15, v13

    check-cast v15, Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    .local v15, "it":Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    const/16 v16, 0x0

    .line 9
    .local v16, "$i$a$-singleOrNull-AsciiCharTree$Node$array$1$1":I
    iget-char v4, v15, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->ch:C

    if-ne v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    move v4, v6

    .line 77
    .end local v15    # "it":Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    .end local v16    # "$i$a$-singleOrNull-AsciiCharTree$Node$array$1$1":I
    :goto_2
    if-eqz v4, :cond_2

    .line 78
    if-eqz v11, :cond_1

    move-object v10, v14

    goto :goto_3

    .line 79
    :cond_1
    move-object v10, v13

    .line 80
    const/4 v11, 0x1

    const/16 v4, 0x100

    .end local v13    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 77
    .restart local v13    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/16 v4, 0x100

    goto :goto_1

    .line 83
    .end local v13    # "element$iv":Ljava/lang/Object;
    :cond_3
    if-nez v11, :cond_4

    move-object v10, v14

    goto :goto_3

    .line 84
    :cond_4
    nop

    .end local v8    # "$this$singleOrNull$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$singleOrNull":I
    .end local v10    # "single$iv":Ljava/lang/Object;
    .end local v11    # "found$iv":Z
    :goto_3
    aput-object v10, v5, v7

    add-int/lit8 v7, v7, 0x1

    .line 9
    const/16 v4, 0x100

    goto :goto_0

    :cond_5
    iput-object v5, v0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->array:[Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    .line 8
    return-void
.end method


# virtual methods
.method public final getArray()[Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->array:[Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    return-object v0
.end method

.method public final getCh()C
    .locals 1

    .line 8
    iget-char v0, p0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->ch:C

    return v0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->children:Ljava/util/List;

    return-object v0
.end method

.method public final getExact()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->exact:Ljava/util/List;

    return-object v0
.end method
