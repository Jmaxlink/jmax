.class final enum Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;
.super Ljava/lang/Enum;
.source "SpdyHeaderBlockRawDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum READ_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum READ_NAME_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum READ_NUM_HEADERS:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum READ_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum READ_VALUE_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum SKIP_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum SKIP_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 40
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v1, "READ_NUM_HEADERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NUM_HEADERS:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 41
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v1, "READ_NAME_LENGTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 42
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v1, "READ_NAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 43
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v1, "SKIP_NAME"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->SKIP_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 44
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v1, "READ_VALUE_LENGTH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_VALUE_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 45
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v1, "READ_VALUE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 46
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v1, "SKIP_VALUE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->SKIP_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 47
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v1, "END_HEADER_BLOCK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 48
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v1, "ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 39
    sget-object v3, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NUM_HEADERS:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v4, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v5, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v6, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->SKIP_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v7, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_VALUE_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v8, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v9, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->SKIP_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v10, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v11, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    filled-new-array/range {v3 .. v11}, [Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->$VALUES:[Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    return-object v0
.end method

.method public static values()[Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;
    .locals 1

    .line 39
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->$VALUES:[Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    return-object v0
.end method
