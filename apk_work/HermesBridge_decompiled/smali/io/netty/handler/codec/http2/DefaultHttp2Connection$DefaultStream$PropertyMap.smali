.class Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;
.super Ljava/lang/Object;
.source "DefaultHttp2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyMap"
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

.field values:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->this$1:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    sget-object p1, Lio/netty/util/internal/EmptyArrays;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Lio/netty/handler/codec/http2/DefaultHttp2Connection$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;
    .param p2, "x1"    # Lio/netty/handler/codec/http2/DefaultHttp2Connection$1;

    .line 567
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V

    return-void
.end method


# virtual methods
.method add(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;",
            "TV;)TV;"
        }
    .end annotation

    .line 571
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->index:I

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->resizeIfNecessary(I)V

    .line 573
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->values:[Ljava/lang/Object;

    iget v1, p1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->index:I

    aget-object v0, v0, v1

    .line 574
    .local v0, "prevValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->values:[Ljava/lang/Object;

    iget v2, p1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->index:I

    aput-object p2, v1, v2

    .line 575
    return-object v0
.end method

.method get(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;",
            ")TV;"
        }
    .end annotation

    .line 580
    iget v0, p1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->index:I

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->values:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 581
    const/4 v0, 0x0

    return-object v0

    .line 583
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->values:[Ljava/lang/Object;

    iget v1, p1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method remove(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;",
            ")TV;"
        }
    .end annotation

    .line 588
    const/4 v0, 0x0

    .line 589
    .local v0, "prevValue":Ljava/lang/Object;, "TV;"
    iget v1, p1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->index:I

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->values:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 590
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->values:[Ljava/lang/Object;

    iget v2, p1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->index:I

    aget-object v0, v1, v2

    .line 591
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->values:[Ljava/lang/Object;

    iget v2, p1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->index:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 593
    :cond_0
    return-object v0
.end method

.method resizeIfNecessary(I)V
    .locals 2
    .param p1, "index"    # I

    .line 597
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->values:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 598
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->this$1:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    iget-object v1, v1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    iget-object v1, v1, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->propertyKeyRegistry:Lio/netty/handler/codec/http2/DefaultHttp2Connection$PropertyKeyRegistry;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$PropertyKeyRegistry;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream$PropertyMap;->values:[Ljava/lang/Object;

    .line 600
    :cond_0
    return-void
.end method
