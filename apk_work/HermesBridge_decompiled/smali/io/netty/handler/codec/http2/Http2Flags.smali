.class public final Lio/netty/handler/codec/http2/Http2Flags;
.super Ljava/lang/Object;
.source "Http2Flags.java"


# static fields
.field public static final ACK:S = 0x1s

.field public static final END_HEADERS:S = 0x4s

.field public static final END_STREAM:S = 0x1s

.field public static final PADDED:S = 0x8s

.field public static final PRIORITY:S = 0x20s


# instance fields
.field private value:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "value"    # S

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-short p1, p0, Lio/netty/handler/codec/http2/Http2Flags;->value:S

    .line 38
    return-void
.end method


# virtual methods
.method public ack(Z)Lio/netty/handler/codec/http2/Http2Flags;
    .locals 1
    .param p1, "ack"    # Z

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2Flags;->setFlag(ZS)Lio/netty/handler/codec/http2/Http2Flags;

    move-result-object v0

    return-object v0
.end method

.method public ack()Z
    .locals 1

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2Flags;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public endOfHeaders(Z)Lio/netty/handler/codec/http2/Http2Flags;
    .locals 1
    .param p1, "endOfHeaders"    # Z

    .line 114
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2Flags;->setFlag(ZS)Lio/netty/handler/codec/http2/Http2Flags;

    move-result-object v0

    return-object v0
.end method

.method public endOfHeaders()Z
    .locals 1

    .line 60
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2Flags;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public endOfStream(Z)Lio/netty/handler/codec/http2/Http2Flags;
    .locals 1
    .param p1, "endOfStream"    # Z

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2Flags;->setFlag(ZS)Lio/netty/handler/codec/http2/Http2Flags;

    move-result-object v0

    return-object v0
.end method

.method public endOfStream()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2Flags;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 172
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 173
    return v0

    .line 175
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 176
    return v1

    .line 178
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 179
    return v1

    .line 182
    :cond_2
    iget-short v2, p0, Lio/netty/handler/codec/http2/Http2Flags;->value:S

    move-object v3, p1

    check-cast v3, Lio/netty/handler/codec/http2/Http2Flags;

    iget-short v3, v3, Lio/netty/handler/codec/http2/Http2Flags;->value:S

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getNumPriorityBytes()I
    .locals 1

    .line 92
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2Flags;->priorityPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPaddingPresenceFieldLength()I
    .locals 1

    .line 100
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2Flags;->paddingPresent()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 164
    const/16 v0, 0x1f

    .line 165
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 166
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Lio/netty/handler/codec/http2/Http2Flags;->value:S

    add-int/2addr v2, v3

    .line 167
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isFlagSet(S)Z
    .locals 1
    .param p1, "mask"    # S

    .line 159
    iget-short v0, p0, Lio/netty/handler/codec/http2/Http2Flags;->value:S

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public paddingPresent(Z)Lio/netty/handler/codec/http2/Http2Flags;
    .locals 1
    .param p1, "paddingPresent"    # Z

    .line 128
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2Flags;->setFlag(ZS)Lio/netty/handler/codec/http2/Http2Flags;

    move-result-object v0

    return-object v0
.end method

.method public paddingPresent()Z
    .locals 1

    .line 84
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2Flags;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public priorityPresent(Z)Lio/netty/handler/codec/http2/Http2Flags;
    .locals 1
    .param p1, "priorityPresent"    # Z

    .line 121
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2Flags;->setFlag(ZS)Lio/netty/handler/codec/http2/Http2Flags;

    move-result-object v0

    return-object v0
.end method

.method public priorityPresent()Z
    .locals 1

    .line 68
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2Flags;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public setFlag(ZS)Lio/netty/handler/codec/http2/Http2Flags;
    .locals 2
    .param p1, "on"    # Z
    .param p2, "mask"    # S

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-short v0, p0, Lio/netty/handler/codec/http2/Http2Flags;->value:S

    or-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/handler/codec/http2/Http2Flags;->value:S

    goto :goto_0

    .line 148
    :cond_0
    iget-short v0, p0, Lio/netty/handler/codec/http2/Http2Flags;->value:S

    not-int v1, p2

    and-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/handler/codec/http2/Http2Flags;->value:S

    .line 150
    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lio/netty/handler/codec/http2/Http2Flags;->value:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2Flags;->ack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "ACK,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2Flags;->endOfHeaders()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const-string v1, "END_OF_HEADERS,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2Flags;->endOfStream()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    const-string v1, "END_OF_STREAM,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2Flags;->priorityPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    const-string v1, "PRIORITY_PRESENT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_3
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2Flags;->paddingPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    const-string v1, "PADDING_PRESENT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public value()S
    .locals 1

    .line 44
    iget-short v0, p0, Lio/netty/handler/codec/http2/Http2Flags;->value:S

    return v0
.end method
