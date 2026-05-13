.class public Lio/netty/channel/AdaptiveRecvByteBufAllocator;
.super Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
.source "AdaptiveRecvByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/netty/channel/AdaptiveRecvByteBufAllocator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final DEFAULT_INITIAL:I = 0x800

.field static final DEFAULT_MAXIMUM:I = 0x10000

.field static final DEFAULT_MINIMUM:I = 0x40

.field private static final INDEX_DECREMENT:I = 0x1

.field private static final INDEX_INCREMENT:I = 0x4

.field private static final SIZE_TABLE:[I


# instance fields
.field private final initial:I

.field private final maxIndex:I

.field private final minIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "sizeTable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v1, 0x10

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x200

    .restart local v1    # "i":I
    :goto_1
    if-lez v1, :cond_1

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    .line 59
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget-object v2, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 60
    sget-object v2, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 68
    .end local v0    # "sizeTable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    :cond_2
    new-instance v0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;

    invoke-direct {v0}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;-><init>()V

    sput-object v0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->DEFAULT:Lio/netty/channel/AdaptiveRecvByteBufAllocator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 158
    const/16 v0, 0x800

    const/high16 v1, 0x10000

    const/16 v2, 0x40

    invoke-direct {p0, v2, v0, v1}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;-><init>(III)V

    .line 159
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "minimum"    # I
    .param p2, "initial"    # I
    .param p3, "maximum"    # I

    .line 168
    invoke-direct {p0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;-><init>()V

    .line 169
    const-string v0, "minimum"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 170
    if-lt p2, p1, :cond_3

    .line 173
    if-lt p3, p2, :cond_2

    .line 177
    invoke-static {p1}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->getSizeTableIndex(I)I

    move-result v0

    .line 178
    .local v0, "minIndex":I
    sget-object v1, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    aget v1, v1, v0

    if-ge v1, p1, :cond_0

    .line 179
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->minIndex:I

    goto :goto_0

    .line 181
    :cond_0
    iput v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->minIndex:I

    .line 184
    :goto_0
    invoke-static {p3}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->getSizeTableIndex(I)I

    move-result v1

    .line 185
    .local v1, "maxIndex":I
    sget-object v2, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    aget v2, v2, v1

    if-le v2, p3, :cond_1

    .line 186
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->maxIndex:I

    goto :goto_1

    .line 188
    :cond_1
    iput v1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->maxIndex:I

    .line 191
    :goto_1
    iput p2, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->initial:I

    .line 192
    return-void

    .line 174
    .end local v0    # "minIndex":I
    .end local v1    # "maxIndex":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 35
    invoke-static {p0}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->getSizeTableIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 35
    sget-object v0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    return-object v0
.end method

.method private static getSizeTableIndex(I)I
    .locals 6
    .param p0, "size"    # I

    .line 71
    const/4 v0, 0x0

    .local v0, "low":I
    sget-object v1, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 72
    .local v1, "high":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    return v0

    .line 75
    :cond_0
    if-ne v1, v0, :cond_1

    .line 76
    return v1

    .line 79
    :cond_1
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 80
    .local v2, "mid":I
    sget-object v3, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    aget v3, v3, v2

    .line 81
    .local v3, "a":I
    sget-object v4, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->SIZE_TABLE:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    .line 82
    .local v4, "b":I
    if-le p0, v4, :cond_2

    .line 83
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 84
    :cond_2
    if-ge p0, v3, :cond_3

    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 91
    .end local v2    # "mid":I
    .end local v3    # "a":I
    .end local v4    # "b":I
    :goto_1
    goto :goto_0

    .line 86
    .restart local v2    # "mid":I
    .restart local v3    # "a":I
    .restart local v4    # "b":I
    :cond_3
    if-ne p0, v3, :cond_4

    .line 87
    return v2

    .line 89
    :cond_4
    add-int/lit8 v5, v2, 0x1

    return v5
.end method


# virtual methods
.method public newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 4

    .line 197
    new-instance v0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;

    iget v1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->minIndex:I

    iget v2, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->maxIndex:I

    iget v3, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->initial:I

    invoke-direct {v0, p0, v1, v2, v3}, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;-><init>(Lio/netty/channel/AdaptiveRecvByteBufAllocator;III)V

    return-object v0
.end method

.method public respectMaybeMoreData(Z)Lio/netty/channel/AdaptiveRecvByteBufAllocator;
    .locals 0
    .param p1, "respectMaybeMoreData"    # Z

    .line 202
    invoke-super {p0, p1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;->respectMaybeMoreData(Z)Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;

    .line 203
    return-object p0
.end method

.method public bridge synthetic respectMaybeMoreData(Z)Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->respectMaybeMoreData(Z)Lio/netty/channel/AdaptiveRecvByteBufAllocator;

    move-result-object p1

    return-object p1
.end method
