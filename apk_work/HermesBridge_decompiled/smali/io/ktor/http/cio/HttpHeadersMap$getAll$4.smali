.class final Lio/ktor/http/cio/HttpHeadersMap$getAll$4;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpHeadersMap.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/HttpHeadersMap;->getAll(Ljava/lang/String;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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


# instance fields
.field final synthetic this$0:Lio/ktor/http/cio/HttpHeadersMap;


# direct methods
.method constructor <init>(Lio/ktor/http/cio/HttpHeadersMap;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$4;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "it"    # I

    .line 91
    iget-object v0, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$4;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-static {v0}, Lio/ktor/http/cio/HttpHeadersMap;->access$getBuilder$p(Lio/ktor/http/cio/HttpHeadersMap;)Lio/ktor/http/cio/internals/CharArrayBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$4;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-static {v1}, Lio/ktor/http/cio/HttpHeadersMap;->access$getIndexes$p(Lio/ktor/http/cio/HttpHeadersMap;)[I

    move-result-object v1

    add-int/lit8 v2, p1, 0x4

    aget v1, v1, v2

    iget-object v2, p0, Lio/ktor/http/cio/HttpHeadersMap$getAll$4;->this$0:Lio/ktor/http/cio/HttpHeadersMap;

    invoke-static {v2}, Lio/ktor/http/cio/HttpHeadersMap;->access$getIndexes$p(Lio/ktor/http/cio/HttpHeadersMap;)[I

    move-result-object v2

    add-int/lit8 v3, p1, 0x5

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lio/ktor/http/cio/internals/CharArrayBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 91
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/ktor/http/cio/HttpHeadersMap$getAll$4;->invoke(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
