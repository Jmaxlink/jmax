.class final Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;
.super Ljava/lang/Object;
.source "HpackEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/HpackEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameEntry"
.end annotation


# instance fields
.field counter:I

.field final hash:I

.field final name:Ljava/lang/CharSequence;

.field next:Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;


# direct methods
.method constructor <init>(ILjava/lang/CharSequence;ILio/netty/handler/codec/http2/HpackEncoder$NameEntry;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "counter"    # I
    .param p4, "next"    # Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput p1, p0, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->hash:I

    .line 521
    iput-object p2, p0, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->name:Ljava/lang/CharSequence;

    .line 522
    iput p3, p0, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->counter:I

    .line 523
    iput-object p4, p0, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    .line 524
    return-void
.end method


# virtual methods
.method unlink()V
    .locals 1

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    .line 528
    return-void
.end method
