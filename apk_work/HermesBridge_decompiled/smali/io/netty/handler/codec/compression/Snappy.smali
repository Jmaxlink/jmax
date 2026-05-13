.class public final Lio/netty/handler/codec/compression/Snappy;
.super Ljava/lang/Object;
.source "Snappy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/Snappy$State;
    }
.end annotation


# static fields
.field private static final COPY_1_BYTE_OFFSET:I = 0x1

.field private static final COPY_2_BYTE_OFFSET:I = 0x2

.field private static final COPY_4_BYTE_OFFSET:I = 0x3

.field private static final LITERAL:I = 0x0

.field private static final MAX_HT_SIZE:I = 0x4000

.field private static final MIN_COMPRESSIBLE_BYTES:I = 0xf

.field private static final NOT_ENOUGH_INPUT:I = -0x1

.field private static final PREAMBLE_NOT_FULL:I = -0x1


# instance fields
.field private state:Lio/netty/handler/codec/compression/Snappy$State;

.field private tag:B

.field private written:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lio/netty/handler/codec/compression/Snappy$State;->READING_PREAMBLE:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    return-void
.end method

.method private static bitsToEncode(I)I
    .locals 3
    .param p0, "value"    # I

    .line 204
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 205
    .local v0, "highestOneBit":I
    const/4 v1, 0x0

    .line 206
    .local v1, "bitLength":I
    :goto_0
    shr-int/lit8 v2, v0, 0x1

    move v0, v2

    if-eqz v2, :cond_0

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return v1
.end method

.method static calculateChecksum(Lio/netty/buffer/ByteBuf;)I
    .locals 2
    .param p0, "data"    # Lio/netty/buffer/ByteBuf;

    .line 613
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/compression/Snappy;->calculateChecksum(Lio/netty/buffer/ByteBuf;II)I

    move-result v0

    return v0
.end method

.method static calculateChecksum(Lio/netty/buffer/ByteBuf;II)I
    .locals 3
    .param p0, "data"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 623
    new-instance v0, Lio/netty/handler/codec/compression/Crc32c;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/Crc32c;-><init>()V

    .line 625
    .local v0, "crc32":Lio/netty/handler/codec/compression/Crc32c;
    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Lio/netty/handler/codec/compression/Crc32c;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 626
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Crc32c;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/handler/codec/compression/Snappy;->maskChecksum(J)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Crc32c;->reset()V

    .line 626
    return v1

    .line 628
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/handler/codec/compression/Crc32c;->reset()V

    .line 629
    throw v1
.end method

.method private static decodeCopyWith1ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I
    .locals 5
    .param p0, "tag"    # B
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "writtenSoFar"    # I

    .line 464
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    const/4 v0, -0x1

    return v0

    .line 468
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 469
    .local v0, "initialIndex":I
    and-int/lit8 v1, p0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    .line 470
    .local v1, "length":I
    and-int/lit16 v2, p0, 0xe0

    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x5

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v3

    or-int/2addr v2, v3

    .line 472
    .local v2, "offset":I
    invoke-static {v2, p3}, Lio/netty/handler/codec/compression/Snappy;->validateOffset(II)V

    .line 474
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 475
    if-ge v2, v1, :cond_3

    .line 476
    div-int v3, v1, v2

    .line 477
    .local v3, "copies":I
    :goto_0
    if-lez v3, :cond_1

    .line 478
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 479
    invoke-virtual {p2, p2, v2}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 477
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 481
    :cond_1
    rem-int v4, v1, v2

    if-eqz v4, :cond_2

    .line 482
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 483
    rem-int v4, v1, v2

    invoke-virtual {p2, p2, v4}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 485
    .end local v3    # "copies":I
    :cond_2
    goto :goto_1

    .line 486
    :cond_3
    sub-int v3, v0, v2

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 487
    invoke-virtual {p2, p2, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 489
    :goto_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 491
    return v1
.end method

.method private static decodeCopyWith2ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I
    .locals 5
    .param p0, "tag"    # B
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "writtenSoFar"    # I

    .line 508
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 509
    const/4 v0, -0x1

    return v0

    .line 512
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 513
    .local v0, "initialIndex":I
    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x3f

    add-int/lit8 v1, v1, 0x1

    .line 514
    .local v1, "length":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShortLE()I

    move-result v2

    .line 516
    .local v2, "offset":I
    invoke-static {v2, p3}, Lio/netty/handler/codec/compression/Snappy;->validateOffset(II)V

    .line 518
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 519
    if-ge v2, v1, :cond_3

    .line 520
    div-int v3, v1, v2

    .line 521
    .local v3, "copies":I
    :goto_0
    if-lez v3, :cond_1

    .line 522
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 523
    invoke-virtual {p2, p2, v2}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 521
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 525
    :cond_1
    rem-int v4, v1, v2

    if-eqz v4, :cond_2

    .line 526
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 527
    rem-int v4, v1, v2

    invoke-virtual {p2, p2, v4}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 529
    .end local v3    # "copies":I
    :cond_2
    goto :goto_1

    .line 530
    :cond_3
    sub-int v3, v0, v2

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 531
    invoke-virtual {p2, p2, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 533
    :goto_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 535
    return v1
.end method

.method private static decodeCopyWith4ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I
    .locals 5
    .param p0, "tag"    # B
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "writtenSoFar"    # I

    .line 552
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 553
    const/4 v0, -0x1

    return v0

    .line 556
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 557
    .local v0, "initialIndex":I
    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x3f

    add-int/lit8 v1, v1, 0x1

    .line 558
    .local v1, "length":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readIntLE()I

    move-result v2

    .line 560
    .local v2, "offset":I
    invoke-static {v2, p3}, Lio/netty/handler/codec/compression/Snappy;->validateOffset(II)V

    .line 562
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 563
    if-ge v2, v1, :cond_3

    .line 564
    div-int v3, v1, v2

    .line 565
    .local v3, "copies":I
    :goto_0
    if-lez v3, :cond_1

    .line 566
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 567
    invoke-virtual {p2, p2, v2}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 565
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 569
    :cond_1
    rem-int v4, v1, v2

    if-eqz v4, :cond_2

    .line 570
    sub-int v4, v0, v2

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 571
    rem-int v4, v1, v2

    invoke-virtual {p2, p2, v4}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 573
    .end local v3    # "copies":I
    :cond_2
    goto :goto_1

    .line 574
    :cond_3
    sub-int v3, v0, v2

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 575
    invoke-virtual {p2, p2, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 577
    :goto_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 579
    return v1
.end method

.method static decodeLiteral(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I
    .locals 3
    .param p0, "tag"    # B
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 409
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 411
    shr-int/lit8 v0, p0, 0x2

    and-int/lit8 v0, v0, 0x3f

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 437
    shr-int/lit8 v0, p0, 0x2

    and-int/lit8 v0, v0, 0x3f

    .local v0, "length":I
    goto :goto_0

    .line 431
    .end local v0    # "length":I
    :pswitch_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 432
    return v1

    .line 434
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readIntLE()I

    move-result v0

    .line 435
    .restart local v0    # "length":I
    goto :goto_0

    .line 425
    .end local v0    # "length":I
    :pswitch_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 426
    return v1

    .line 428
    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedMediumLE()I

    move-result v0

    .line 429
    .restart local v0    # "length":I
    goto :goto_0

    .line 419
    .end local v0    # "length":I
    :pswitch_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 420
    return v1

    .line 422
    :cond_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShortLE()I

    move-result v0

    .line 423
    .restart local v0    # "length":I
    goto :goto_0

    .line 413
    .end local v0    # "length":I
    :pswitch_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 414
    return v1

    .line 416
    :cond_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    .line 417
    .restart local v0    # "length":I
    nop

    .line 439
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 441
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    if-ge v2, v0, :cond_4

    .line 442
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 443
    return v1

    .line 446
    :cond_4
    invoke-virtual {p2, p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 447
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encodeCopy(Lio/netty/buffer/ByteBuf;II)V
    .locals 2
    .param p0, "out"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 256
    nop

    :goto_0
    const/16 v0, 0x44

    const/16 v1, 0x40

    if-lt p2, v0, :cond_0

    .line 257
    invoke-static {p0, p1, v1}, Lio/netty/handler/codec/compression/Snappy;->encodeCopyWithOffset(Lio/netty/buffer/ByteBuf;II)V

    .line 258
    add-int/lit8 p2, p2, -0x40

    goto :goto_0

    .line 261
    :cond_0
    if-le p2, v1, :cond_1

    .line 262
    const/16 v0, 0x3c

    invoke-static {p0, p1, v0}, Lio/netty/handler/codec/compression/Snappy;->encodeCopyWithOffset(Lio/netty/buffer/ByteBuf;II)V

    .line 263
    add-int/lit8 p2, p2, -0x3c

    .line 266
    :cond_1
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/compression/Snappy;->encodeCopyWithOffset(Lio/netty/buffer/ByteBuf;II)V

    .line 267
    return-void
.end method

.method private static encodeCopyWithOffset(Lio/netty/buffer/ByteBuf;II)V
    .locals 2
    .param p0, "out"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 238
    const/16 v0, 0xc

    if-ge p2, v0, :cond_0

    const/16 v0, 0x800

    if-ge p1, v0, :cond_0

    .line 239
    add-int/lit8 v0, p2, -0x4

    shl-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, p1, 0x8

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 240
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 242
    :cond_0
    add-int/lit8 v0, p2, -0x1

    shl-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 243
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 244
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 246
    :goto_0
    return-void
.end method

.method static encodeLiteral(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V
    .locals 5
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 223
    const/16 v0, 0x3d

    if-ge p2, v0, :cond_0

    .line 224
    add-int/lit8 v0, p2, -0x1

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 226
    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-static {v0}, Lio/netty/handler/codec/compression/Snappy;->bitsToEncode(I)I

    move-result v0

    .line 227
    .local v0, "bitLength":I
    div-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    .line 228
    .local v1, "bytesToEncode":I
    add-int/lit8 v2, v1, 0x3b

    shl-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 229
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 230
    add-int/lit8 v3, p2, -0x1

    mul-int/lit8 v4, v2, 0x8

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "bitLength":I
    .end local v1    # "bytesToEncode":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p1, p0, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 235
    return-void
.end method

.method private static findMatchingLength(Lio/netty/buffer/ByteBuf;III)I
    .locals 3
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "minIndex"    # I
    .param p2, "inIndex"    # I
    .param p3, "maxIndex"    # I

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "matched":I
    :goto_0
    add-int/lit8 v1, p3, -0x4

    if-gt p2, v1, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v1

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 183
    add-int/lit8 p2, p2, 0x4

    .line 184
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 187
    :cond_0
    :goto_1
    if-ge p2, p3, :cond_1

    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    if-ne v1, v2, :cond_1

    .line 188
    add-int/lit8 p2, p2, 0x1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_1
    return v0
.end method

.method private static getHashTable(I)[S
    .locals 2
    .param p0, "inputSize"    # I

    .line 160
    const/16 v0, 0x100

    .line 161
    .local v0, "htSize":I
    :goto_0
    const/16 v1, 0x4000

    if-ge v0, v1, :cond_0

    if-ge v0, p0, :cond_0

    .line 162
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    new-array v1, v0, [S

    return-object v1
.end method

.method private static hash(Lio/netty/buffer/ByteBuf;II)I
    .locals 2
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "shift"    # I

    .line 150
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v0

    const v1, 0x1e35a7bd

    mul-int/2addr v0, v1

    ushr-int/2addr v0, p2

    return v0
.end method

.method static maskChecksum(J)I
    .locals 4
    .param p0, "checksum"    # J

    .line 675
    const/16 v0, 0xf

    shr-long v0, p0, v0

    const/16 v2, 0x11

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    const-wide/32 v2, -0x5d7d1528

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static readPreamble(Lio/netty/buffer/ByteBuf;)I
    .locals 5
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "length":I
    const/4 v1, 0x0

    .line 361
    .local v1, "byteIndex":I
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v2

    .line 363
    .local v2, "current":I
    and-int/lit8 v3, v2, 0x7f

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "byteIndex":I
    .local v4, "byteIndex":I
    mul-int/lit8 v1, v1, 0x7

    shl-int v1, v3, v1

    or-int/2addr v0, v1

    .line 364
    and-int/lit16 v1, v2, 0x80

    if-nez v1, :cond_0

    .line 365
    return v0

    .line 368
    :cond_0
    const/4 v1, 0x4

    if-ge v4, v1, :cond_1

    .line 371
    .end local v2    # "current":I
    move v1, v4

    goto :goto_0

    .line 369
    .restart local v2    # "current":I
    :cond_1
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v3, "Preamble is greater than 4 bytes"

    invoke-direct {v1, v3}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    .end local v2    # "current":I
    .end local v4    # "byteIndex":I
    .restart local v1    # "byteIndex":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method static validateChecksum(ILio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "expectedChecksum"    # I
    .param p1, "data"    # Lio/netty/buffer/ByteBuf;

    .line 642
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lio/netty/handler/codec/compression/Snappy;->validateChecksum(ILio/netty/buffer/ByteBuf;II)V

    .line 643
    return-void
.end method

.method static validateChecksum(ILio/netty/buffer/ByteBuf;II)V
    .locals 4
    .param p0, "expectedChecksum"    # I
    .param p1, "data"    # Lio/netty/buffer/ByteBuf;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 655
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/compression/Snappy;->calculateChecksum(Lio/netty/buffer/ByteBuf;II)I

    move-result v0

    .line 656
    .local v0, "actualChecksum":I
    if-ne v0, p0, :cond_0

    .line 661
    return-void

    .line 657
    :cond_0
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mismatching checksum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 658
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 659
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static validateOffset(II)V
    .locals 2
    .param p0, "offset"    # I
    .param p1, "chunkSizeSoFar"    # I

    .line 592
    if-eqz p0, :cond_2

    .line 596
    if-ltz p0, :cond_1

    .line 601
    if-gt p0, p1, :cond_0

    .line 604
    return-void

    .line 602
    :cond_0
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v1, "Offset exceeds size of chunk"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v1, "Offset is greater than maximum value supported by this implementation"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_2
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v1, "Offset is less than minimum permissible value"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;

    .line 270
    nop

    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 271
    sget-object v0, Lio/netty/handler/codec/compression/Snappy$1;->$SwitchMap$io$netty$handler$codec$compression$Snappy$State:[I

    iget-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/compression/Snappy$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 313
    :pswitch_0
    iget-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    .line 335
    :pswitch_1
    iget-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    iget v2, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    invoke-static {v0, p1, p2, v2}, Lio/netty/handler/codec/compression/Snappy;->decodeCopyWith4ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 336
    .local v0, "decodeWritten":I
    if-eq v0, v1, :cond_0

    .line 337
    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 338
    iget v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    goto/16 :goto_2

    .line 341
    :cond_0
    return-void

    .line 325
    .end local v0    # "decodeWritten":I
    :pswitch_2
    iget-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    iget v2, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    invoke-static {v0, p1, p2, v2}, Lio/netty/handler/codec/compression/Snappy;->decodeCopyWith2ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 326
    .restart local v0    # "decodeWritten":I
    if-eq v0, v1, :cond_1

    .line 327
    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 328
    iget v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    goto :goto_2

    .line 331
    :cond_1
    return-void

    .line 315
    .end local v0    # "decodeWritten":I
    :pswitch_3
    iget-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    iget v2, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    invoke-static {v0, p1, p2, v2}, Lio/netty/handler/codec/compression/Snappy;->decodeCopyWith1ByteOffset(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 316
    .restart local v0    # "decodeWritten":I
    if-eq v0, v1, :cond_2

    .line 317
    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 318
    iget v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    goto :goto_2

    .line 321
    :cond_2
    return-void

    .line 302
    .end local v0    # "decodeWritten":I
    :pswitch_4
    iget-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    invoke-static {v0, p1, p2}, Lio/netty/handler/codec/compression/Snappy;->decodeLiteral(BLio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I

    move-result v0

    .line 303
    .local v0, "literalWritten":I
    if-eq v0, v1, :cond_3

    .line 304
    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 305
    iget v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    goto :goto_2

    .line 308
    :cond_3
    return-void

    .line 273
    .end local v0    # "literalWritten":I
    :pswitch_5
    invoke-static {p1}, Lio/netty/handler/codec/compression/Snappy;->readPreamble(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    .line 274
    .local v0, "uncompressedLength":I
    if-ne v0, v1, :cond_4

    .line 276
    return-void

    .line 278
    :cond_4
    if-nez v0, :cond_5

    .line 280
    return-void

    .line 282
    :cond_5
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 283
    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_TAG:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v1, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 286
    .end local v0    # "uncompressedLength":I
    :pswitch_6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 287
    return-void

    .line 289
    :cond_6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    iput-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    .line 290
    iget-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 297
    :pswitch_7
    sget-object v0, Lio/netty/handler/codec/compression/Snappy$State;->READING_COPY:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    goto :goto_1

    .line 292
    :pswitch_8
    sget-object v0, Lio/netty/handler/codec/compression/Snappy$State;->READING_LITERAL:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 293
    nop

    .line 300
    :goto_1
    nop

    .line 343
    :goto_2
    goto/16 :goto_0

    .line 347
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public encode(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V
    .locals 19
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 60
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 61
    .local v3, "i":I
    :goto_0
    mul-int/lit8 v4, v3, 0x7

    ushr-int v4, v2, v4

    .line 62
    .local v4, "b":I
    and-int/lit8 v5, v4, -0x80

    if-eqz v5, :cond_0

    .line 63
    and-int/lit8 v5, v4, 0x7f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {v1, v5}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 60
    .end local v4    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .restart local v4    # "b":I
    :cond_0
    invoke-virtual {v1, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 66
    nop

    .line 70
    .end local v3    # "i":I
    .end local v4    # "b":I
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    .line 71
    .local v3, "inIndex":I
    move v4, v3

    .line 73
    .local v4, "baseIndex":I
    invoke-static/range {p3 .. p3}, Lio/netty/handler/codec/compression/Snappy;->getHashTable(I)[S

    move-result-object v5

    .line 74
    .local v5, "table":[S
    array-length v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 76
    .local v6, "shift":I
    move v7, v3

    .line 78
    .local v7, "nextEmit":I
    sub-int v8, v2, v3

    const/16 v9, 0xf

    if-lt v8, v9, :cond_5

    .line 79
    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3, v6}, Lio/netty/handler/codec/compression/Snappy;->hash(Lio/netty/buffer/ByteBuf;II)I

    move-result v8

    move v9, v7

    .line 81
    .end local v7    # "nextEmit":I
    .local v8, "nextHash":I
    .local v9, "nextEmit":I
    :goto_1
    const/16 v7, 0x20

    .line 84
    .local v7, "skip":I
    move v10, v3

    .line 86
    .local v10, "nextIndex":I
    :goto_2
    move v3, v10

    .line 87
    move v11, v8

    .line 88
    .local v11, "hash":I
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "skip":I
    .local v12, "skip":I
    shr-int/lit8 v7, v7, 0x5

    .line 89
    .local v7, "bytesBetweenHashLookups":I
    add-int v10, v3, v7

    .line 92
    add-int/lit8 v13, v2, -0x4

    if-le v10, v13, :cond_1

    .line 93
    move v7, v9

    goto/16 :goto_4

    .line 96
    :cond_1
    invoke-static {v0, v10, v6}, Lio/netty/handler/codec/compression/Snappy;->hash(Lio/netty/buffer/ByteBuf;II)I

    move-result v8

    .line 98
    aget-short v13, v5, v11

    add-int/2addr v13, v4

    .line 100
    .local v13, "candidate":I
    sub-int v14, v3, v4

    int-to-short v14, v14

    aput-short v14, v5, v11

    .line 102
    .end local v7    # "bytesBetweenHashLookups":I
    .end local v11    # "hash":I
    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v13}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v11

    if-ne v7, v11, :cond_4

    .line 104
    sub-int v7, v3, v9

    invoke-static {v0, v1, v7}, Lio/netty/handler/codec/compression/Snappy;->encodeLiteral(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V

    .line 108
    :goto_3
    move v7, v3

    .line 109
    .local v7, "base":I
    add-int/lit8 v11, v13, 0x4

    add-int/lit8 v14, v3, 0x4

    invoke-static {v0, v11, v14, v2}, Lio/netty/handler/codec/compression/Snappy;->findMatchingLength(Lio/netty/buffer/ByteBuf;III)I

    move-result v11

    add-int/lit8 v11, v11, 0x4

    .line 110
    .local v11, "matched":I
    add-int/2addr v3, v11

    .line 111
    sub-int v14, v7, v13

    .line 112
    .local v14, "offset":I
    invoke-static {v1, v14, v11}, Lio/netty/handler/codec/compression/Snappy;->encodeCopy(Lio/netty/buffer/ByteBuf;II)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v15

    add-int/2addr v15, v11

    invoke-virtual {v0, v15}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 114
    add-int/lit8 v15, v3, -0x1

    .line 115
    .local v15, "insertTail":I
    move v9, v3

    .line 116
    move/from16 v16, v7

    .end local v7    # "base":I
    .local v16, "base":I
    add-int/lit8 v7, v2, -0x4

    if-lt v3, v7, :cond_2

    .line 117
    move v7, v9

    goto :goto_4

    .line 120
    :cond_2
    invoke-static {v0, v15, v6}, Lio/netty/handler/codec/compression/Snappy;->hash(Lio/netty/buffer/ByteBuf;II)I

    move-result v7

    .line 121
    .local v7, "prevHash":I
    sub-int v17, v3, v4

    move/from16 v18, v8

    .end local v8    # "nextHash":I
    .local v18, "nextHash":I
    add-int/lit8 v8, v17, -0x1

    int-to-short v8, v8

    aput-short v8, v5, v7

    .line 122
    add-int/lit8 v8, v15, 0x1

    invoke-static {v0, v8, v6}, Lio/netty/handler/codec/compression/Snappy;->hash(Lio/netty/buffer/ByteBuf;II)I

    move-result v8

    .line 123
    .local v8, "currentHash":I
    aget-short v17, v5, v8

    add-int v13, v4, v17

    .line 124
    move/from16 v17, v7

    .end local v7    # "prevHash":I
    .local v17, "prevHash":I
    sub-int v7, v3, v4

    int-to-short v7, v7

    aput-short v7, v5, v8

    .line 126
    .end local v8    # "currentHash":I
    .end local v11    # "matched":I
    .end local v14    # "offset":I
    .end local v16    # "base":I
    .end local v17    # "prevHash":I
    add-int/lit8 v7, v15, 0x1

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v13}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 128
    add-int/lit8 v7, v15, 0x2

    invoke-static {v0, v7, v6}, Lio/netty/handler/codec/compression/Snappy;->hash(Lio/netty/buffer/ByteBuf;II)I

    move-result v8

    .line 129
    .end local v18    # "nextHash":I
    .local v8, "nextHash":I
    nop

    .end local v10    # "nextIndex":I
    .end local v12    # "skip":I
    .end local v13    # "candidate":I
    .end local v15    # "insertTail":I
    add-int/lit8 v3, v3, 0x1

    .line 130
    goto/16 :goto_1

    .line 126
    .end local v8    # "nextHash":I
    .restart local v10    # "nextIndex":I
    .restart local v12    # "skip":I
    .restart local v13    # "candidate":I
    .restart local v15    # "insertTail":I
    .restart local v18    # "nextHash":I
    :cond_3
    move/from16 v8, v18

    goto :goto_3

    .line 102
    .end local v15    # "insertTail":I
    .end local v18    # "nextHash":I
    .restart local v8    # "nextHash":I
    :cond_4
    move/from16 v18, v8

    .end local v8    # "nextHash":I
    .restart local v18    # "nextHash":I
    move v7, v12

    goto/16 :goto_2

    .line 134
    .end local v9    # "nextEmit":I
    .end local v10    # "nextIndex":I
    .end local v12    # "skip":I
    .end local v13    # "candidate":I
    .end local v18    # "nextHash":I
    .local v7, "nextEmit":I
    :cond_5
    :goto_4
    if-ge v7, v2, :cond_6

    .line 135
    sub-int v8, v2, v7

    invoke-static {v0, v1, v8}, Lio/netty/handler/codec/compression/Snappy;->encodeLiteral(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I)V

    .line 137
    :cond_6
    return-void
.end method

.method getPreamble(Lio/netty/buffer/ByteBuf;)I
    .locals 2
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;

    .line 386
    iget-object v0, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    sget-object v1, Lio/netty/handler/codec/compression/Snappy$State;->READING_PREAMBLE:Lio/netty/handler/codec/compression/Snappy$State;

    if-ne v0, v1, :cond_0

    .line 387
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 389
    .local v0, "readerIndex":I
    :try_start_0
    invoke-static {p1}, Lio/netty/handler/codec/compression/Snappy;->readPreamble(Lio/netty/buffer/ByteBuf;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 389
    return v1

    .line 391
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 392
    throw v1

    .line 394
    .end local v0    # "readerIndex":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 53
    sget-object v0, Lio/netty/handler/codec/compression/Snappy$State;->READING_PREAMBLE:Lio/netty/handler/codec/compression/Snappy$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Snappy;->state:Lio/netty/handler/codec/compression/Snappy$State;

    .line 54
    const/4 v0, 0x0

    iput-byte v0, p0, Lio/netty/handler/codec/compression/Snappy;->tag:B

    .line 55
    iput v0, p0, Lio/netty/handler/codec/compression/Snappy;->written:I

    .line 56
    return-void
.end method
