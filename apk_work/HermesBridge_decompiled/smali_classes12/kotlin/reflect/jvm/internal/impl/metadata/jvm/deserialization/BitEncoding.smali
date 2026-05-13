.class public Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;
.super Ljava/lang/Object;
.source "BitEncoding.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FORCE_8TO7_ENCODING:Z


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .locals 12

    sparse-switch p0, :sswitch_data_0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :sswitch_0
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    sparse-switch p0, :sswitch_data_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding"

    const/4 v4, 0x0

    sparse-switch p0, :sswitch_data_2

    const-string v5, "data"

    aput-object v5, v2, v4

    goto :goto_2

    :sswitch_2
    aput-object v3, v2, v4

    :goto_2
    const-string v4, "decode7to8"

    const-string v5, "combineStringArrayIntoBytes"

    const-string v6, "dropMarker"

    const-string v7, "decodeBytes"

    const-string v8, "splitBytesToStringArray"

    const-string v9, "encode8to7"

    const-string v10, "encodeBytes"

    const/4 v11, 0x1

    sparse-switch p0, :sswitch_data_3

    aput-object v3, v2, v11

    goto :goto_3

    :sswitch_3
    aput-object v4, v2, v11

    goto :goto_3

    :sswitch_4
    aput-object v5, v2, v11

    goto :goto_3

    :sswitch_5
    aput-object v6, v2, v11

    goto :goto_3

    :sswitch_6
    aput-object v7, v2, v11

    goto :goto_3

    :sswitch_7
    aput-object v8, v2, v11

    goto :goto_3

    :sswitch_8
    aput-object v9, v2, v11

    goto :goto_3

    :sswitch_9
    aput-object v10, v2, v11

    :goto_3
    packed-switch p0, :pswitch_data_0

    aput-object v10, v2, v1

    goto :goto_4

    :pswitch_0
    aput-object v4, v2, v1

    goto :goto_4

    :pswitch_1
    aput-object v5, v2, v1

    goto :goto_4

    :pswitch_2
    aput-object v6, v2, v1

    goto :goto_4

    :pswitch_3
    aput-object v7, v2, v1

    goto :goto_4

    :pswitch_4
    aput-object v8, v2, v1

    goto :goto_4

    :pswitch_5
    const-string v3, "addModuloByte"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_6
    aput-object v9, v2, v1

    :goto_4
    :pswitch_7
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sparse-switch p0, :sswitch_data_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :sswitch_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x6 -> :sswitch_1
        0x8 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_2
        0x6 -> :sswitch_2
        0x8 -> :sswitch_2
        0xa -> :sswitch_2
        0xc -> :sswitch_2
        0xe -> :sswitch_2
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_9
        0x3 -> :sswitch_8
        0x6 -> :sswitch_7
        0x8 -> :sswitch_6
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xe -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_a
        0x3 -> :sswitch_a
        0x6 -> :sswitch_a
        0x8 -> :sswitch_a
        0xa -> :sswitch_a
        0xc -> :sswitch_a
        0xe -> :sswitch_a
    .end sparse-switch
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 15
    nop

    .line 21
    :try_start_0
    const-string v0, "kotlin.jvm.serialization.use8to7"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .local v0, "use8to7":Ljava/lang/String;
    goto :goto_0

    .line 23
    .end local v0    # "use8to7":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 27
    .local v0, "use8to7":Ljava/lang/String;
    :goto_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->FORCE_8TO7_ENCODING:Z

    .line 28
    .end local v0    # "use8to7":Ljava/lang/String;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static addModuloByte([BI)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "increment"    # I

    if-nez p0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    .line 114
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 115
    aget-byte v2, p0, v0

    add-int/2addr v2, p1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method private static combineStringArrayIntoBytes([Ljava/lang/String;)[B
    .locals 10
    .param p0, "data"    # [Ljava/lang/String;

    if-nez p0, :cond_0

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 210
    .local v0, "resultLength":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 211
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xffff

    if-gt v5, v6, :cond_1

    .line 212
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    .line 210
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .restart local v4    # "s":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String is too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 215
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    new-array v1, v0, [B

    .line 216
    .local v1, "result":[B
    const/4 v3, 0x0

    .line 217
    .local v3, "p":I
    array-length v4, p0

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, p0, v2

    .line 218
    .local v5, "s":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "n":I
    :goto_2
    if-ge v6, v7, :cond_3

    .line 219
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "p":I
    .local v8, "p":I
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    .line 218
    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_2

    .line 217
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "n":I
    .end local v8    # "p":I
    .restart local v3    # "p":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 223
    :cond_4
    return-object v1
.end method

.method private static decode7to8([B)[B
    .locals 9
    .param p0, "data"    # [B

    if-nez p0, :cond_0

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    .line 247
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 249
    .local v0, "resultLength":I
    new-array v1, v0, [B

    .line 253
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 254
    .local v2, "byteIndex":I
    const/4 v3, 0x0

    .line 259
    .local v3, "bit":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 260
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    ushr-int/2addr v5, v3

    .line 261
    .local v5, "firstPart":I
    add-int/lit8 v2, v2, 0x1

    .line 262
    aget-byte v6, p0, v2

    add-int/lit8 v7, v3, 0x1

    const/4 v8, 0x1

    shl-int v7, v8, v7

    sub-int/2addr v7, v8

    and-int/2addr v6, v7

    rsub-int/lit8 v7, v3, 0x7

    shl-int/2addr v6, v7

    .line 263
    .local v6, "secondPart":I
    add-int v7, v5, v6

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    .line 265
    const/4 v7, 0x6

    if-ne v3, v7, :cond_1

    .line 266
    add-int/lit8 v2, v2, 0x1

    .line 267
    const/4 v3, 0x0

    goto :goto_1

    .line 270
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 259
    .end local v5    # "firstPart":I
    .end local v6    # "secondPart":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    .end local v4    # "i":I
    :cond_2
    return-object v1
.end method

.method public static decodeBytes([Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # [Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    .line 179
    :cond_0
    array-length v0, p0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 180
    aget-object v1, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 181
    .local v0, "possibleMarker":C
    if-nez v0, :cond_2

    .line 182
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->dropMarker([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/UtfEncodingKt;->stringsToBytes([Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v2, 0x8

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    :cond_1
    return-object v1

    .line 184
    :cond_2
    const v1, 0xffff

    if-ne v0, v1, :cond_3

    .line 185
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->dropMarker([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 189
    .end local v0    # "possibleMarker":C
    :cond_3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->combineStringArrayIntoBytes([Ljava/lang/String;)[B

    move-result-object v0

    .line 191
    .local v0, "bytes":[B
    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->addModuloByte([BI)V

    .line 192
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->decode7to8([B)[B

    move-result-object v1

    return-object v1
.end method

.method private static dropMarker([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [Ljava/lang/String;

    if-nez p0, :cond_0

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    .line 199
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 200
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 201
    if-nez v0, :cond_1

    const/16 v1, 0xa

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    :cond_1
    return-object v0
.end method
