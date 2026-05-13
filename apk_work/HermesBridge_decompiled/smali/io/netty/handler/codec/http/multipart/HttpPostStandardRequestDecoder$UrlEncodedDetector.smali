.class final Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlEncodedDetector;
.super Ljava/lang/Object;
.source "HttpPostStandardRequestDecoder.java"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UrlEncodedDetector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$1;

    .line 741
    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlEncodedDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public process(B)Z
    .locals 1
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 744
    const/16 v0, 0x25

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
