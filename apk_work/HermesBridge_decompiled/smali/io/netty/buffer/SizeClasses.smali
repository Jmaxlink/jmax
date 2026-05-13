.class abstract Lio/netty/buffer/SizeClasses;
.super Ljava/lang/Object;
.source "SizeClasses.java"

# interfaces
.implements Lio/netty/buffer/SizeClassesMetric;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INDEX_IDX:I = 0x0

.field private static final LOG2DELTA_IDX:I = 0x2

.field private static final LOG2GROUP_IDX:I = 0x1

.field private static final LOG2_DELTA_LOOKUP_IDX:I = 0x6

.field private static final LOG2_MAX_LOOKUP_SIZE:I = 0xc

.field static final LOG2_QUANTUM:I = 0x4

.field private static final LOG2_SIZE_CLASS_GROUP:I = 0x2

.field private static final NDELTA_IDX:I = 0x3

.field private static final PAGESIZE_IDX:I = 0x4

.field private static final SUBPAGE_IDX:I = 0x5

.field private static final no:B = 0x0t

.field private static final yes:B = 0x1t


# instance fields
.field protected final chunkSize:I

.field protected final directMemoryCacheAlignment:I

.field final lookupMaxSize:I

.field final nPSizes:I

.field final nSizes:I

.field final nSubpages:I

.field private final pageIdx2sizeTab:[I

.field protected final pageShifts:I

.field protected final pageSize:I

.field private final size2idxTab:[I

.field private final sizeIdx2sizeTab:[I

.field final smallMaxSizeIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 81
    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 21
    .param p1, "pageSize"    # I
    .param p2, "pageShifts"    # I
    .param p3, "chunkSize"    # I
    .param p4, "directMemoryCacheAlignment"    # I

    .line 118
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static/range {p3 .. p3}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v4

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 123
    .local v4, "group":I
    shl-int/lit8 v7, v4, 0x2

    const/4 v8, 0x7

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    .line 125
    .local v7, "sizeClasses":[[S
    const/4 v8, -0x1

    .line 126
    .local v8, "normalMaxSize":I
    const/4 v9, 0x0

    .line 127
    .local v9, "nSizes":I
    const/4 v10, 0x0

    .line 129
    .local v10, "size":I
    const/4 v11, 0x4

    .line 130
    .local v11, "log2Group":I
    const/4 v12, 0x4

    .line 131
    .local v12, "log2Delta":I
    const/4 v13, 0x4

    .line 135
    .local v13, "ndeltaLimit":I
    const/4 v14, 0x0

    .local v14, "nDelta":I
    :goto_0
    if-ge v14, v13, :cond_0

    .line 136
    invoke-static {v9, v11, v12, v14, v1}, Lio/netty/buffer/SizeClasses;->newSizeClass(IIIII)[S

    move-result-object v15

    .line 137
    .local v15, "sizeClass":[S
    aput-object v15, v7, v9

    .line 138
    invoke-static {v15, v3}, Lio/netty/buffer/SizeClasses;->sizeOf([SI)I

    move-result v10

    .line 135
    .end local v15    # "sizeClass":[S
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 141
    .end local v14    # "nDelta":I
    :cond_0
    add-int/lit8 v11, v11, 0x2

    .line 144
    :goto_1
    if-ge v10, v2, :cond_2

    .line 145
    const/4 v14, 0x1

    .restart local v14    # "nDelta":I
    :goto_2
    if-gt v14, v13, :cond_1

    if-ge v10, v2, :cond_1

    .line 146
    invoke-static {v9, v11, v12, v14, v1}, Lio/netty/buffer/SizeClasses;->newSizeClass(IIIII)[S

    move-result-object v15

    .line 147
    .restart local v15    # "sizeClass":[S
    aput-object v15, v7, v9

    .line 148
    invoke-static {v15, v3}, Lio/netty/buffer/SizeClasses;->sizeOf([SI)I

    move-result v16

    move/from16 v8, v16

    move/from16 v10, v16

    .line 145
    .end local v15    # "sizeClass":[S
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 144
    .end local v14    # "nDelta":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 153
    :cond_2
    if-ne v2, v8, :cond_7

    .line 155
    const/4 v14, 0x0

    .line 156
    .local v14, "smallMaxSizeIdx":I
    const/4 v15, 0x0

    .line 157
    .local v15, "lookupMaxSize":I
    const/16 v16, 0x0

    .line 158
    .local v16, "nPSizes":I
    const/16 v17, 0x0

    .line 159
    .local v17, "nSubpages":I
    const/16 v18, 0x0

    move/from16 v19, v16

    move/from16 v20, v17

    move/from16 v6, v18

    .end local v16    # "nPSizes":I
    .end local v17    # "nSubpages":I
    .local v6, "idx":I
    .local v19, "nPSizes":I
    .local v20, "nSubpages":I
    :goto_3
    if-ge v6, v9, :cond_6

    .line 160
    move/from16 v17, v4

    .end local v4    # "group":I
    .local v17, "group":I
    aget-object v4, v7, v6

    .line 161
    .local v4, "sz":[S
    move/from16 v18, v8

    .end local v8    # "normalMaxSize":I
    .local v18, "normalMaxSize":I
    aget-short v8, v4, v5

    const/4 v5, 0x1

    if-ne v8, v5, :cond_3

    .line 162
    move/from16 v8, v19

    .end local v19    # "nPSizes":I
    .local v8, "nPSizes":I
    add-int/lit8 v19, v8, 0x1

    .end local v8    # "nPSizes":I
    .restart local v19    # "nPSizes":I
    goto :goto_4

    .line 161
    :cond_3
    move/from16 v8, v19

    .line 164
    :goto_4
    const/4 v8, 0x5

    aget-short v8, v4, v8

    if-ne v8, v5, :cond_4

    .line 165
    move/from16 v8, v20

    .end local v20    # "nSubpages":I
    .local v8, "nSubpages":I
    add-int/lit8 v20, v8, 0x1

    .line 166
    .end local v8    # "nSubpages":I
    .restart local v20    # "nSubpages":I
    move v8, v6

    move v14, v8

    .end local v14    # "smallMaxSizeIdx":I
    .local v8, "smallMaxSizeIdx":I
    goto :goto_5

    .line 164
    .end local v8    # "smallMaxSizeIdx":I
    .restart local v14    # "smallMaxSizeIdx":I
    :cond_4
    move/from16 v8, v20

    .line 168
    :goto_5
    const/4 v8, 0x6

    aget-short v8, v4, v8

    if-eqz v8, :cond_5

    .line 169
    invoke-static {v4, v3}, Lio/netty/buffer/SizeClasses;->sizeOf([SI)I

    move-result v8

    move v15, v8

    .line 159
    .end local v4    # "sz":[S
    :cond_5
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v17

    move/from16 v8, v18

    const/4 v5, 0x4

    goto :goto_3

    .end local v17    # "group":I
    .end local v18    # "normalMaxSize":I
    .local v4, "group":I
    .local v8, "normalMaxSize":I
    :cond_6
    move/from16 v17, v4

    move/from16 v18, v8

    move/from16 v8, v19

    move/from16 v4, v20

    .line 172
    .end local v6    # "idx":I
    .end local v19    # "nPSizes":I
    .end local v20    # "nSubpages":I
    .local v4, "nSubpages":I
    .local v8, "nPSizes":I
    .restart local v17    # "group":I
    .restart local v18    # "normalMaxSize":I
    iput v14, v0, Lio/netty/buffer/SizeClasses;->smallMaxSizeIdx:I

    .line 173
    iput v15, v0, Lio/netty/buffer/SizeClasses;->lookupMaxSize:I

    .line 174
    iput v8, v0, Lio/netty/buffer/SizeClasses;->nPSizes:I

    .line 175
    iput v4, v0, Lio/netty/buffer/SizeClasses;->nSubpages:I

    .line 176
    iput v9, v0, Lio/netty/buffer/SizeClasses;->nSizes:I

    .line 178
    move/from16 v5, p1

    iput v5, v0, Lio/netty/buffer/SizeClasses;->pageSize:I

    .line 179
    iput v1, v0, Lio/netty/buffer/SizeClasses;->pageShifts:I

    .line 180
    iput v2, v0, Lio/netty/buffer/SizeClasses;->chunkSize:I

    .line 181
    iput v3, v0, Lio/netty/buffer/SizeClasses;->directMemoryCacheAlignment:I

    .line 184
    invoke-static {v7, v9, v3}, Lio/netty/buffer/SizeClasses;->newIdx2SizeTab([[SII)[I

    move-result-object v6

    iput-object v6, v0, Lio/netty/buffer/SizeClasses;->sizeIdx2sizeTab:[I

    .line 185
    invoke-static {v7, v9, v8, v3}, Lio/netty/buffer/SizeClasses;->newPageIdx2sizeTab([[SIII)[I

    move-result-object v6

    iput-object v6, v0, Lio/netty/buffer/SizeClasses;->pageIdx2sizeTab:[I

    .line 186
    invoke-static {v15, v7}, Lio/netty/buffer/SizeClasses;->newSize2idxTab(I[[S)[I

    move-result-object v6

    iput-object v6, v0, Lio/netty/buffer/SizeClasses;->size2idxTab:[I

    .line 187
    return-void

    .line 153
    .end local v14    # "smallMaxSizeIdx":I
    .end local v15    # "lookupMaxSize":I
    .end local v17    # "group":I
    .end local v18    # "normalMaxSize":I
    .local v4, "group":I
    .local v8, "normalMaxSize":I
    :cond_7
    move/from16 v17, v4

    .end local v4    # "group":I
    .restart local v17    # "group":I
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method private static alignSizeIfNeeded(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "directMemoryCacheAlignment"    # I

    .line 385
    if-gtz p1, :cond_0

    .line 386
    return p0

    .line 388
    :cond_0
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    .line 389
    .local v0, "delta":I
    if-nez v0, :cond_1

    move v1, p0

    goto :goto_0

    :cond_1
    add-int v1, p0, p1

    sub-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method private static calculateSize(III)I
    .locals 2
    .param p0, "log2Group"    # I
    .param p1, "nDelta"    # I
    .param p2, "log2Delta"    # I

    .line 233
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    shl-int v1, p1, p2

    add-int/2addr v0, v1

    return v0
.end method

.method private static newIdx2SizeTab([[SII)[I
    .locals 4
    .param p0, "sizeClasses"    # [[S
    .param p1, "nSizes"    # I
    .param p2, "directMemoryCacheAlignment"    # I

    .line 223
    new-array v0, p1, [I

    .line 225
    .local v0, "sizeIdx2sizeTab":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 226
    aget-object v2, p0, v1

    .line 227
    .local v2, "sizeClass":[S
    invoke-static {v2, p2}, Lio/netty/buffer/SizeClasses;->sizeOf([SI)I

    move-result v3

    aput v3, v0, v1

    .line 225
    .end local v2    # "sizeClass":[S
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static newPageIdx2sizeTab([[SIII)[I
    .locals 6
    .param p0, "sizeClasses"    # [[S
    .param p1, "nSizes"    # I
    .param p2, "nPSizes"    # I
    .param p3, "directMemoryCacheAlignment"    # I

    .line 248
    new-array v0, p2, [I

    .line 249
    .local v0, "pageIdx2sizeTab":[I
    const/4 v1, 0x0

    .line 250
    .local v1, "pageIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 251
    aget-object v3, p0, v2

    .line 252
    .local v3, "sizeClass":[S
    const/4 v4, 0x4

    aget-short v4, v3, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 253
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pageIdx":I
    .local v4, "pageIdx":I
    invoke-static {v3, p3}, Lio/netty/buffer/SizeClasses;->sizeOf([SI)I

    move-result v5

    aput v5, v0, v1

    move v1, v4

    .line 250
    .end local v3    # "sizeClass":[S
    .end local v4    # "pageIdx":I
    .restart local v1    # "pageIdx":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private static newSize2idxTab(I[[S)[I
    .locals 7
    .param p0, "lookupMaxSize"    # I
    .param p1, "sizeClasses"    # [[S

    .line 260
    shr-int/lit8 v0, p0, 0x4

    new-array v0, v0, [I

    .line 261
    .local v0, "size2idxTab":[I
    const/4 v1, 0x0

    .line 262
    .local v1, "idx":I
    const/4 v2, 0x0

    .line 264
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v2, p0, :cond_1

    .line 265
    aget-object v4, p1, v3

    const/4 v5, 0x2

    aget-short v4, v4, v5

    .line 266
    .local v4, "log2Delta":I
    add-int/lit8 v5, v4, -0x4

    const/4 v6, 0x1

    shl-int v5, v6, v5

    .line 268
    .local v5, "times":I
    :goto_1
    if-gt v2, p0, :cond_0

    add-int/lit8 v6, v5, -0x1

    .end local v5    # "times":I
    .local v6, "times":I
    if-lez v5, :cond_0

    .line 269
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "idx":I
    .local v5, "idx":I
    aput v3, v0, v1

    .line 270
    add-int/lit8 v1, v5, 0x1

    shl-int/lit8 v2, v1, 0x4

    move v1, v5

    move v5, v6

    goto :goto_1

    .line 264
    .end local v4    # "log2Delta":I
    .end local v5    # "idx":I
    .end local v6    # "times":I
    .restart local v1    # "idx":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method private static newSizeClass(IIIII)[S
    .locals 17
    .param p0, "index"    # I
    .param p1, "log2Group"    # I
    .param p2, "log2Delta"    # I
    .param p3, "nDelta"    # I
    .param p4, "pageShifts"    # I

    .line 192
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v5, 0x1

    if-lt v1, v3, :cond_0

    .line 193
    const/4 v6, 0x1

    .local v6, "isMultiPageSize":S
    goto :goto_1

    .line 195
    .end local v6    # "isMultiPageSize":S
    :cond_0
    shl-int v6, v5, v3

    .line 196
    .local v6, "pageSize":I
    invoke-static {v0, v2, v1}, Lio/netty/buffer/SizeClasses;->calculateSize(III)I

    move-result v7

    .line 198
    .local v7, "size":I
    div-int v8, v7, v6

    mul-int/2addr v8, v6

    if-ne v7, v8, :cond_1

    move v8, v5

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    move v6, v8

    .line 201
    .end local v7    # "size":I
    .local v6, "isMultiPageSize":S
    :goto_1
    if-nez v2, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    invoke-static/range {p3 .. p3}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v7

    .line 203
    .local v7, "log2Ndelta":I
    :goto_2
    shl-int v8, v5, v7

    if-ge v8, v2, :cond_3

    move v8, v5

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 205
    .local v8, "remove":B
    :goto_3
    add-int v9, v1, v7

    if-ne v9, v0, :cond_4

    add-int/lit8 v9, v0, 0x1

    goto :goto_4

    :cond_4
    move v9, v0

    .line 206
    .local v9, "log2Size":I
    :goto_4
    if-ne v9, v0, :cond_5

    .line 207
    const/4 v8, 0x1

    .line 210
    :cond_5
    add-int/lit8 v10, v3, 0x2

    if-ge v9, v10, :cond_6

    move v10, v5

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    .line 212
    .local v10, "isSubpage":S
    :goto_5
    const/16 v11, 0xc

    if-lt v9, v11, :cond_8

    if-ne v9, v11, :cond_7

    if-nez v8, :cond_7

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    move v11, v1

    .line 216
    .local v11, "log2DeltaLookup":I
    :goto_7
    move/from16 v12, p0

    int-to-short v13, v12

    int-to-short v14, v0

    int-to-short v15, v1

    int-to-short v5, v2

    int-to-short v4, v11

    const/4 v0, 0x7

    new-array v0, v0, [S

    const/16 v16, 0x0

    aput-short v13, v0, v16

    const/4 v13, 0x1

    aput-short v14, v0, v13

    const/4 v13, 0x2

    aput-short v15, v0, v13

    const/4 v13, 0x3

    aput-short v5, v0, v13

    const/4 v5, 0x4

    aput-short v6, v0, v5

    const/4 v5, 0x5

    aput-short v10, v0, v5

    const/4 v5, 0x6

    aput-short v4, v0, v5

    return-object v0
.end method

.method private static normalizeSizeCompute(I)I
    .locals 6
    .param p0, "size"    # I

    .line 407
    shl-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v0

    .line 408
    .local v0, "x":I
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, -0x2

    sub-int/2addr v2, v1

    .line 410
    .local v2, "log2Delta":I
    :goto_0
    shl-int/2addr v1, v2

    .line 411
    .local v1, "delta":I
    add-int/lit8 v3, v1, -0x1

    .line 412
    .local v3, "delta_mask":I
    add-int v4, p0, v3

    not-int v5, v3

    and-int/2addr v4, v5

    return v4
.end method

.method private pages2pageIdxCompute(IZ)I
    .locals 9
    .param p1, "pages"    # I
    .param p2, "floor"    # Z

    .line 357
    iget v0, p0, Lio/netty/buffer/SizeClasses;->pageShifts:I

    shl-int v0, p1, v0

    .line 358
    .local v0, "pageSize":I
    iget v1, p0, Lio/netty/buffer/SizeClasses;->chunkSize:I

    if-le v0, v1, :cond_0

    .line 359
    iget v1, p0, Lio/netty/buffer/SizeClasses;->nPSizes:I

    return v1

    .line 362
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v1

    .line 364
    .local v1, "x":I
    iget v2, p0, Lio/netty/buffer/SizeClasses;->pageShifts:I

    add-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v2, p0, Lio/netty/buffer/SizeClasses;->pageShifts:I

    add-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    .line 367
    .local v2, "shift":I
    :goto_0
    shl-int/lit8 v3, v2, 0x2

    .line 369
    .local v3, "group":I
    iget v4, p0, Lio/netty/buffer/SizeClasses;->pageShifts:I

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_2

    iget v4, p0, Lio/netty/buffer/SizeClasses;->pageShifts:I

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v1, -0x2

    add-int/lit8 v4, v4, -0x1

    .line 372
    .local v4, "log2Delta":I
    :goto_1
    add-int/lit8 v5, v0, -0x1

    shr-int/2addr v5, v4

    and-int/lit8 v5, v5, 0x3

    .line 374
    .local v5, "mod":I
    add-int v6, v3, v5

    .line 376
    .local v6, "pageIdx":I
    if-eqz p2, :cond_3

    iget-object v7, p0, Lio/netty/buffer/SizeClasses;->pageIdx2sizeTab:[I

    aget v7, v7, v6

    iget v8, p0, Lio/netty/buffer/SizeClasses;->pageShifts:I

    shl-int v8, p1, v8

    if-le v7, v8, :cond_3

    .line 377
    add-int/lit8 v6, v6, -0x1

    .line 380
    :cond_3
    return v6
.end method

.method private static sizeOf([SI)I
    .locals 5
    .param p0, "sizeClass"    # [S
    .param p1, "directMemoryCacheAlignment"    # I

    .line 237
    const/4 v0, 0x1

    aget-short v0, p0, v0

    .line 238
    .local v0, "log2Group":I
    const/4 v1, 0x2

    aget-short v1, p0, v1

    .line 239
    .local v1, "log2Delta":I
    const/4 v2, 0x3

    aget-short v2, p0, v2

    .line 241
    .local v2, "nDelta":I
    invoke-static {v0, v2, v1}, Lio/netty/buffer/SizeClasses;->calculateSize(III)I

    move-result v3

    .line 243
    .local v3, "size":I
    invoke-static {v3, p1}, Lio/netty/buffer/SizeClasses;->alignSizeIfNeeded(II)I

    move-result v4

    return v4
.end method


# virtual methods
.method public normalizeSize(I)I
    .locals 3
    .param p1, "size"    # I

    .line 394
    if-nez p1, :cond_0

    .line 395
    iget-object v0, p0, Lio/netty/buffer/SizeClasses;->sizeIdx2sizeTab:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 397
    :cond_0
    iget v0, p0, Lio/netty/buffer/SizeClasses;->directMemoryCacheAlignment:I

    invoke-static {p1, v0}, Lio/netty/buffer/SizeClasses;->alignSizeIfNeeded(II)I

    move-result p1

    .line 398
    iget v0, p0, Lio/netty/buffer/SizeClasses;->lookupMaxSize:I

    if-gt p1, v0, :cond_2

    .line 399
    iget-object v0, p0, Lio/netty/buffer/SizeClasses;->sizeIdx2sizeTab:[I

    iget-object v1, p0, Lio/netty/buffer/SizeClasses;->size2idxTab:[I

    add-int/lit8 v2, p1, -0x1

    shr-int/lit8 v2, v2, 0x4

    aget v1, v1, v2

    aget v0, v0, v1

    .line 400
    .local v0, "ret":I
    invoke-static {p1}, Lio/netty/buffer/SizeClasses;->normalizeSizeCompute(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 401
    return v0

    .line 400
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 403
    .end local v0    # "ret":I
    :cond_2
    invoke-static {p1}, Lio/netty/buffer/SizeClasses;->normalizeSizeCompute(I)I

    move-result v0

    return v0
.end method

.method public pageIdx2size(I)J
    .locals 2
    .param p1, "pageIdx"    # I

    .line 298
    iget-object v0, p0, Lio/netty/buffer/SizeClasses;->pageIdx2sizeTab:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public pageIdx2sizeCompute(I)J
    .locals 9
    .param p1, "pageIdx"    # I

    .line 303
    shr-int/lit8 v0, p1, 0x2

    .line 304
    .local v0, "group":I
    and-int/lit8 v1, p1, 0x3

    .line 306
    .local v1, "mod":I
    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    iget v3, p0, Lio/netty/buffer/SizeClasses;->pageShifts:I

    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    const-wide/16 v4, 0x1

    shl-long v3, v4, v3

    shl-long/2addr v3, v0

    .line 309
    .local v3, "groupSize":J
    :goto_0
    if-nez v0, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v0

    .line 310
    .local v5, "shift":I
    :goto_1
    iget v6, p0, Lio/netty/buffer/SizeClasses;->pageShifts:I

    add-int/2addr v6, v5

    sub-int/2addr v6, v2

    .line 311
    .local v6, "log2Delta":I
    add-int/lit8 v2, v1, 0x1

    shl-int/2addr v2, v6

    .line 313
    .local v2, "modSize":I
    int-to-long v7, v2

    add-long/2addr v7, v3

    return-wide v7
.end method

.method public pages2pageIdx(I)I
    .locals 1
    .param p1, "pages"    # I

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/SizeClasses;->pages2pageIdxCompute(IZ)I

    move-result v0

    return v0
.end method

.method public pages2pageIdxFloor(I)I
    .locals 1
    .param p1, "pages"    # I

    .line 353
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/SizeClasses;->pages2pageIdxCompute(IZ)I

    move-result v0

    return v0
.end method

.method public size2SizeIdx(I)I
    .locals 6
    .param p1, "size"    # I

    .line 318
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 319
    return v0

    .line 321
    :cond_0
    iget v1, p0, Lio/netty/buffer/SizeClasses;->chunkSize:I

    if-le p1, v1, :cond_1

    .line 322
    iget v0, p0, Lio/netty/buffer/SizeClasses;->nSizes:I

    return v0

    .line 325
    :cond_1
    iget v1, p0, Lio/netty/buffer/SizeClasses;->directMemoryCacheAlignment:I

    invoke-static {p1, v1}, Lio/netty/buffer/SizeClasses;->alignSizeIfNeeded(II)I

    move-result p1

    .line 327
    iget v1, p0, Lio/netty/buffer/SizeClasses;->lookupMaxSize:I

    const/4 v2, 0x4

    if-gt p1, v1, :cond_2

    .line 329
    iget-object v0, p0, Lio/netty/buffer/SizeClasses;->size2idxTab:[I

    add-int/lit8 v1, p1, -0x1

    shr-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    .line 332
    :cond_2
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v1

    .line 333
    .local v1, "x":I
    const/4 v3, 0x7

    if-ge v1, v3, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, -0x6

    .line 336
    .local v0, "shift":I
    :goto_0
    shl-int/lit8 v4, v0, 0x2

    .line 338
    .local v4, "group":I
    if-ge v1, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v1, -0x2

    add-int/lit8 v2, v2, -0x1

    .line 341
    .local v2, "log2Delta":I
    :goto_1
    add-int/lit8 v3, p1, -0x1

    shr-int/2addr v3, v2

    and-int/lit8 v3, v3, 0x3

    .line 343
    .local v3, "mod":I
    add-int v5, v4, v3

    return v5
.end method

.method public sizeIdx2size(I)I
    .locals 1
    .param p1, "sizeIdx"    # I

    .line 278
    iget-object v0, p0, Lio/netty/buffer/SizeClasses;->sizeIdx2sizeTab:[I

    aget v0, v0, p1

    return v0
.end method

.method public sizeIdx2sizeCompute(I)I
    .locals 7
    .param p1, "sizeIdx"    # I

    .line 283
    shr-int/lit8 v0, p1, 0x2

    .line 284
    .local v0, "group":I
    and-int/lit8 v1, p1, 0x3

    .line 286
    .local v1, "mod":I
    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    shl-int/2addr v2, v0

    .line 289
    .local v2, "groupSize":I
    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    .line 290
    .local v4, "shift":I
    :goto_1
    add-int/lit8 v5, v4, 0x4

    sub-int/2addr v5, v3

    .line 291
    .local v5, "lgDelta":I
    add-int/lit8 v3, v1, 0x1

    shl-int/2addr v3, v5

    .line 293
    .local v3, "modSize":I
    add-int v6, v2, v3

    return v6
.end method
