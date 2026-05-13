.class final Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;
.super Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;
.source "HttpObjectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpObjectDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LineParser"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1095
    const-class v0, Lio/netty/handler/codec/http/HttpObjectDecoder;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/buffer/ByteBuf;I)V
    .locals 0
    .param p2, "seq"    # Lio/netty/buffer/ByteBuf;
    .param p3, "maxLength"    # I

    .line 1097
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    .line 1098
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;-><init>(Lio/netty/buffer/ByteBuf;I)V

    .line 1099
    return-void
.end method

.method private skipControlChars(Lio/netty/buffer/ByteBuf;II)Z
    .locals 4
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "readableBytes"    # I
    .param p3, "readerIndex"    # I

    .line 1117
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$000(Lio/netty/handler/codec/http/HttpObjectDecoder;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v0, v1, :cond_2

    .line 1118
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->maxLength:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1119
    .local v0, "maxToSkip":I
    invoke-static {}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$100()Lio/netty/util/ByteProcessor;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v1

    .line 1120
    .local v1, "firstNonControlIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1121
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 1122
    iget v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->maxLength:I

    if-gt p2, v2, :cond_0

    .line 1125
    const/4 v2, 0x1

    return v2

    .line 1123
    :cond_0
    iget v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->maxLength:I

    invoke-virtual {p0, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->newException(I)Lio/netty/handler/codec/TooLongFrameException;

    move-result-object v2

    throw v2

    .line 1128
    :cond_1
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1129
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    sget-object v3, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-static {v2, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$002(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/handler/codec/http/HttpObjectDecoder$State;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 1130
    const/4 v2, 0x0

    return v2

    .line 1117
    .end local v0    # "maxToSkip":I
    .end local v1    # "firstNonControlIndex":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected newException(I)Lio/netty/handler/codec/TooLongFrameException;
    .locals 3
    .param p1, "maxLength"    # I

    .line 1135
    new-instance v0, Lio/netty/handler/codec/http/TooLongHttpLineException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An HTTP line is larger than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/TooLongHttpLineException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 1104
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->reset()V

    .line 1105
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 1106
    .local v0, "readableBytes":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1107
    return-object v1

    .line 1109
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    .line 1110
    .local v2, "readerIndex":I
    iget-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$000(Lio/netty/handler/codec/http/HttpObjectDecoder;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v3, v4, :cond_1

    invoke-direct {p0, p1, v0, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->skipControlChars(Lio/netty/buffer/ByteBuf;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1111
    return-object v1

    .line 1113
    :cond_1
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1
.end method
