.class final Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;
.super Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
.source "DefaultHttp2Headers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Http2HeaderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2Headers;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2Headers;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V
    .locals 2
    .param p2, "hash"    # I
    .param p3, "key"    # Ljava/lang/CharSequence;
    .param p4, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 276
    .local p5, "next":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    .line 277
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;-><init>(ILjava/lang/Object;)V

    .line 278
    iput-object p4, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;->value:Ljava/lang/Object;

    .line 279
    iput-object p5, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 282
    invoke-static {p3}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->hasPseudoHeaderFormat(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 284
    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before()Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 287
    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->access$300(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before()Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 288
    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v0

    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->access$400(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 289
    invoke-static {p1, p0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->access$102(Lio/netty/handler/codec/http2/DefaultHttp2Headers;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 292
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;->pointNeighborsToThis()V

    .line 293
    return-void
.end method


# virtual methods
.method protected remove()V
    .locals 2

    .line 297
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 298
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-static {v1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after()Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->access$102(Lio/netty/handler/codec/http2/DefaultHttp2Headers;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 300
    :cond_0
    invoke-super {p0}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->remove()V

    .line 301
    return-void
.end method
