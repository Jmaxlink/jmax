.class final Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;
.super Lio/netty/handler/codec/http2/HpackHeaderField;
.source "HpackEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/HpackEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameValueEntry"
.end annotation


# instance fields
.field after:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

.field final counter:I

.field final hash:I

.field next:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;


# direct methods
.method constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "value"    # Ljava/lang/CharSequence;
    .param p4, "counter"    # I
    .param p5, "next"    # Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 544
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http2/HpackHeaderField;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 545
    iput-object p5, p0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 546
    iput p1, p0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->hash:I

    .line 547
    iput p4, p0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->counter:I

    .line 548
    return-void
.end method


# virtual methods
.method unlink()V
    .locals 1

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 552
    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 553
    return-void
.end method
