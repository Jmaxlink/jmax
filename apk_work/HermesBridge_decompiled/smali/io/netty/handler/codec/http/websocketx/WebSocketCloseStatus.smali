.class public final Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
.super Ljava/lang/Object;
.source "WebSocketCloseStatus.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final ABNORMAL_CLOSURE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final BAD_GATEWAY:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final EMPTY:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final ENDPOINT_UNAVAILABLE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final INVALID_MESSAGE_TYPE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final INVALID_PAYLOAD_DATA:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final MANDATORY_EXTENSION:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final MESSAGE_TOO_BIG:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final NORMAL_CLOSURE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final POLICY_VIOLATION:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final PROTOCOL_ERROR:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final SERVICE_RESTART:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final TLS_HANDSHAKE_FAILED:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

.field public static final TRY_AGAIN_LATER:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;


# instance fields
.field private final reasonText:Ljava/lang/String;

.field private final statusCode:I

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 173
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3e8

    const-string v2, "Bye"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->NORMAL_CLOSURE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 176
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3e9

    const-string v2, "Endpoint unavailable"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->ENDPOINT_UNAVAILABLE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 179
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3ea

    const-string v2, "Protocol error"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 182
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3eb

    const-string v2, "Invalid message type"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->INVALID_MESSAGE_TYPE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 185
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3ef

    const-string v2, "Invalid payload data"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->INVALID_PAYLOAD_DATA:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 188
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3f0

    const-string v2, "Policy violation"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->POLICY_VIOLATION:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 191
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3f1

    const-string v2, "Message too big"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->MESSAGE_TOO_BIG:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 194
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3f2

    const-string v2, "Mandatory extension"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->MANDATORY_EXTENSION:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 197
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3f3

    const-string v2, "Internal server error"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 200
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3f4

    const-string v2, "Service Restart"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->SERVICE_RESTART:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 203
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3f5

    const-string v2, "Try Again Later"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->TRY_AGAIN_LATER:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 206
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3f6

    const-string v2, "Bad Gateway"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->BAD_GATEWAY:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 212
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3ed

    const-string v2, "Empty"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->EMPTY:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 215
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3ee

    const-string v2, "Abnormal closure"

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->ABNORMAL_CLOSURE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 218
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    const/16 v1, 0x3f7

    const-string v2, "TLS handshake failed"

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->TLS_HANDSHAKE_FAILED:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "reasonText"    # Ljava/lang/String;

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;Z)V

    .line 227
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "reasonText"    # Ljava/lang/String;
    .param p3, "validate"    # Z

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    if-eqz p3, :cond_1

    invoke-static {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->isValidStatusCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocket close status code does NOT comply with RFC-6455: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    :goto_0
    iput p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->statusCode:I

    .line 235
    const-string v0, "reasonText"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->reasonText:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public static isValidStatusCode(I)Z
    .locals 1
    .param p0, "code"    # I

    .line 287
    if-ltz p0, :cond_3

    const/16 v0, 0x3e8

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3eb

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x3ef

    if-gt v0, p0, :cond_1

    const/16 v0, 0x3f6

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0xbb8

    if-gt v0, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static valueOf(I)Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    .locals 3
    .param p0, "code"    # I

    .line 294
    packed-switch p0, :pswitch_data_0

    .line 326
    :pswitch_0
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close status #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 324
    :pswitch_1
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->TLS_HANDSHAKE_FAILED:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 322
    :pswitch_2
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->BAD_GATEWAY:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 320
    :pswitch_3
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->TRY_AGAIN_LATER:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 318
    :pswitch_4
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->SERVICE_RESTART:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 316
    :pswitch_5
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 314
    :pswitch_6
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->MANDATORY_EXTENSION:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 312
    :pswitch_7
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->MESSAGE_TOO_BIG:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 310
    :pswitch_8
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->POLICY_VIOLATION:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 308
    :pswitch_9
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->INVALID_PAYLOAD_DATA:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 306
    :pswitch_a
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->ABNORMAL_CLOSURE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 304
    :pswitch_b
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->EMPTY:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 302
    :pswitch_c
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->INVALID_MESSAGE_TYPE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 300
    :pswitch_d
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 298
    :pswitch_e
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->ENDPOINT_UNAVAILABLE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    .line 296
    :pswitch_f
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->NORMAL_CLOSURE:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 239
    iget v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->statusCode:I

    return v0
.end method

.method public compareTo(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;)I
    .locals 2
    .param p1, "o"    # Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 251
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->code()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->code()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 171
    check-cast p1, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->compareTo(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 259
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 260
    return v0

    .line 262
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 266
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 268
    .local v2, "that":Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    iget v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->statusCode:I

    iget v4, v2, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->statusCode:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 263
    .end local v2    # "that":Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 273
    iget v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->statusCode:I

    return v0
.end method

.method public reasonText()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->reasonText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 278
    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->text:Ljava/lang/String;

    .line 279
    .local v0, "text":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->reasonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->text:Ljava/lang/String;

    .line 283
    :cond_0
    return-object v0
.end method
