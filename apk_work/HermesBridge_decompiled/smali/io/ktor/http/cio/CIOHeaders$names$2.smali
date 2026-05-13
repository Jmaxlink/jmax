.class final Lio/ktor/http/cio/CIOHeaders$names$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CIOHeaders.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/CIOHeaders;-><init>(Lio/ktor/http/cio/HttpHeadersMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/LinkedHashSet<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/LinkedHashSet;",
        "",
        "Lkotlin/collections/LinkedHashSet;",
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
.field final synthetic this$0:Lio/ktor/http/cio/CIOHeaders;


# direct methods
.method constructor <init>(Lio/ktor/http/cio/CIOHeaders;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/http/cio/CIOHeaders$names$2;->this$0:Lio/ktor/http/cio/CIOHeaders;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/ktor/http/cio/CIOHeaders$names$2;->invoke()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/LinkedHashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lio/ktor/http/cio/CIOHeaders$names$2;->this$0:Lio/ktor/http/cio/CIOHeaders;

    invoke-static {v1}, Lio/ktor/http/cio/CIOHeaders;->access$getHeaders$p(Lio/ktor/http/cio/CIOHeaders;)Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/http/cio/HttpHeadersMap;->getSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v1, p0, Lio/ktor/http/cio/CIOHeaders$names$2;->this$0:Lio/ktor/http/cio/CIOHeaders;

    move-object v2, v0

    .local v2, "$this$invoke_u24lambda_u240":Ljava/util/LinkedHashSet;
    const/4 v3, 0x0

    .line 17
    .local v3, "$i$a$-apply-CIOHeaders$names$2$1":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-static {v1}, Lio/ktor/http/cio/CIOHeaders;->access$getHeaders$p(Lio/ktor/http/cio/CIOHeaders;)Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v5

    invoke-virtual {v5}, Lio/ktor/http/cio/HttpHeadersMap;->getSize()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 18
    invoke-static {v1}, Lio/ktor/http/cio/CIOHeaders;->access$getHeaders$p(Lio/ktor/http/cio/CIOHeaders;)Lio/ktor/http/cio/HttpHeadersMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/ktor/http/cio/HttpHeadersMap;->nameAt(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 17
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    .end local v4    # "i":I
    :cond_0
    nop

    .line 16
    .end local v2    # "$this$invoke_u24lambda_u240":Ljava/util/LinkedHashSet;
    .end local v3    # "$i$a$-apply-CIOHeaders$names$2$1":I
    return-object v0
.end method
