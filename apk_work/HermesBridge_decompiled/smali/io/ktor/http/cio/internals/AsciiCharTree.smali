.class public final Lio/ktor/http/cio/internals/AsciiCharTree;
.super Ljava/lang/Object;
.source "AsciiCharTree.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/cio/internals/AsciiCharTree$Companion;,
        Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u0014*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0002\u0014\u0015B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005JL\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0018\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00100\u0012R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/ktor/http/cio/internals/AsciiCharTree;",
        "T",
        "",
        "root",
        "Lio/ktor/http/cio/internals/AsciiCharTree$Node;",
        "(Lio/ktor/http/cio/internals/AsciiCharTree$Node;)V",
        "getRoot",
        "()Lio/ktor/http/cio/internals/AsciiCharTree$Node;",
        "search",
        "",
        "sequence",
        "",
        "fromIdx",
        "",
        "end",
        "lowerCase",
        "",
        "stopPredicate",
        "Lkotlin/Function2;",
        "",
        "Companion",
        "Node",
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


# static fields
.field public static final Companion:Lio/ktor/http/cio/internals/AsciiCharTree$Companion;


# instance fields
.field private final root:Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/http/cio/internals/AsciiCharTree;->Companion:Lio/ktor/http/cio/internals/AsciiCharTree$Companion;

    return-void
.end method

.method public constructor <init>(Lio/ktor/http/cio/internals/AsciiCharTree$Node;)V
    .locals 1
    .param p1, "root"    # Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/http/cio/internals/AsciiCharTree;->root:Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    return-void
.end method

.method public static synthetic search$default(Lio/ktor/http/cio/internals/AsciiCharTree;Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/List;
    .locals 7

    .line 12
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 14
    move v3, v0

    goto :goto_0

    .line 12
    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    move v4, p3

    goto :goto_1

    .line 12
    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 16
    move v5, v0

    goto :goto_2

    .line 12
    :cond_2
    move v5, p4

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lio/ktor/http/cio/internals/AsciiCharTree;->search(Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getRoot()Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/http/cio/internals/AsciiCharTree$Node<",
            "TT;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lio/ktor/http/cio/internals/AsciiCharTree;->root:Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    return-object v0
.end method

.method public final search(Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "fromIdx"    # I
    .param p3, "end"    # I
    .param p4, "lowerCase"    # Z
    .param p5, "stopPredicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "IIZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Character;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stopPredicate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, Lio/ktor/http/cio/internals/AsciiCharTree;->root:Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    .line 22
    .local v0, "node":Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    move v1, p2

    .local v1, "index":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 23
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 24
    .local v2, "current":C
    move v3, v2

    .line 26
    .local v3, "currentCode":I
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p5, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 28
    invoke-virtual {v0}, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->getArray()[Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    move-result-object v4

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    .line 29
    if-eqz p4, :cond_1

    invoke-virtual {v0}, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->getArray()[Lio/ktor/http/cio/internals/AsciiCharTree$Node;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    aget-object v4, v4, v5

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 28
    :goto_2
    if-nez v4, :cond_2

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 32
    .local v4, "nextNode":Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    :cond_2
    move-object v0, v4

    .line 22
    .end local v2    # "current":C
    .end local v3    # "currentCode":I
    .end local v4    # "nextNode":Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 35
    .end local v1    # "index":I
    :cond_3
    invoke-virtual {v0}, Lio/ktor/http/cio/internals/AsciiCharTree$Node;->getExact()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 19
    .end local v0    # "node":Lio/ktor/http/cio/internals/AsciiCharTree$Node;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Couldn\'t search in char tree for empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
