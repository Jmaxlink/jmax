.class public Lorg/fusesource/jansi/io/Colors;
.super Ljava/lang/Object;
.source "Colors.java"


# static fields
.field public static final DEFAULT_COLORS_256:[I

.field private static final epsilon:D = 0.008856451679035631

.field private static final kappa:D = 903.2962962962963


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/fusesource/jansi/io/Colors;->DEFAULT_COLORS_256:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x800000
        0x8000
        0x808000
        0x80
        0x800080
        0x8080
        0xc0c0c0
        0x808080
        0xff0000
        0xff00
        0xffff00
        0xff
        0xff00ff
        0xffff
        0xffffff
        0x0
        0x5f
        0x87
        0xaf
        0xd7
        0xff
        0x5f00
        0x5f5f
        0x5f87
        0x5faf
        0x5fd7
        0x5fff
        0x8700
        0x875f
        0x8787
        0x87af
        0x87d7
        0x87ff
        0xaf00
        0xaf5f
        0xaf87
        0xafaf
        0xafd7
        0xafff
        0xd700
        0xd75f
        0xd787
        0xd7af
        0xd7d7
        0xd7ff
        0xff00
        0xff5f
        0xff87
        0xffaf
        0xffd7
        0xffff
        0x5f0000
        0x5f005f
        0x5f0087
        0x5f00af
        0x5f00d7
        0x5f00ff
        0x5f5f00
        0x5f5f5f
        0x5f5f87
        0x5f5faf
        0x5f5fd7
        0x5f5fff
        0x5f8700
        0x5f875f
        0x5f8787
        0x5f87af
        0x5f87d7
        0x5f87ff
        0x5faf00
        0x5faf5f
        0x5faf87
        0x5fafaf
        0x5fafd7
        0x5fafff
        0x5fd700
        0x5fd75f
        0x5fd787
        0x5fd7af
        0x5fd7d7
        0x5fd7ff
        0x5fff00
        0x5fff5f
        0x5fff87
        0x5fffaf
        0x5fffd7
        0x5fffff
        0x870000
        0x87005f
        0x870087
        0x8700af
        0x8700d7
        0x8700ff
        0x875f00
        0x875f5f
        0x875f87
        0x875faf
        0x875fd7
        0x875fff
        0x878700
        0x87875f
        0x878787
        0x8787af
        0x8787d7
        0x8787ff
        0x87af00
        0x87af5f
        0x87af87
        0x87afaf
        0x87afd7
        0x87afff
        0x87d700
        0x87d75f
        0x87d787
        0x87d7af
        0x87d7d7
        0x87d7ff
        0x87ff00
        0x87ff5f
        0x87ff87
        0x87ffaf
        0x87ffd7
        0x87ffff
        0xaf0000
        0xaf005f
        0xaf0087
        0xaf00af
        0xaf00d7
        0xaf00ff
        0xaf5f00
        0xaf5f5f
        0xaf5f87
        0xaf5faf
        0xaf5fd7
        0xaf5fff
        0xaf8700
        0xaf875f
        0xaf8787
        0xaf87af
        0xaf87d7
        0xaf87ff    # 1.6119998E-38f
        0xafaf00
        0xafaf5f
        0xafaf87
        0xafafaf
        0xafafd7
        0xafafff
        0xafd700
        0xafd75f
        0xafd787
        0xafd7af
        0xafd7d7
        0xafd7ff
        0xafff00
        0xafff5f
        0xafff87
        0xafffaf
        0xafffd7
        0xafffff
        0xd70000
        0xd7005f
        0xd70087
        0xd700af
        0xd700d7
        0xd700ff
        0xd75f00
        0xd75f5f
        0xd75f87
        0xd75faf
        0xd75fd7
        0xd75fff
        0xd78700
        0xd7875f
        0xd78787
        0xd787af
        0xd787d7
        0xd787ff
        0xd7af00
        0xd7af5f
        0xd7af87
        0xd7afaf
        0xd7afd7
        0xd7afff
        0xd7d700
        0xd7d75f
        0xd7d787
        0xd7d7af
        0xd7d7d7
        0xd7d7ff
        0xd7ff00
        0xd7ff5f
        0xd7ff87
        0xd7ffaf
        0xd7ffd7
        0xd7ffff
        0xff0000
        0xff005f
        0xff0087
        0xff00af
        0xff00d7
        0xff00ff
        0xff5f00
        0xff5f5f
        0xff5f87
        0xff5faf
        0xff5fd7
        0xff5fff
        0xff8700
        0xff875f
        0xff8787
        0xff87af
        0xff87d7
        0xff87ff
        0xffaf00
        0xffaf5f
        0xffaf87
        0xffafaf
        0xffafd7
        0xffafff
        0xffd700
        0xffd75f
        0xffd787
        0xffd7af
        0xffd7d7
        0xffd7ff
        0xffff00
        0xffff5f
        0xffff87
        0xffffaf
        0xffffd7
        0xffffff
        0x80808
        0x121212
        0x1c1c1c
        0x262626
        0x303030
        0x3a3a3a
        0x444444
        0x4e4e4e
        0x585858
        0x626262
        0x6c6c6c
        0x767676
        0x808080
        0x8a8a8a
        0x949494
        0x9e9e9e
        0xa8a8a8
        0xb2b2b2
        0xbcbcbc
        0xc6c6c6
        0xd0d0d0
        0xdadada
        0xe4e4e4
        0xeeeeee
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cie76(II)D
    .locals 2
    .param p0, "c1"    # I
    .param p1, "c2"    # I

    .line 101
    invoke-static {p0}, Lorg/fusesource/jansi/io/Colors;->rgb2cielab(I)[D

    move-result-object v0

    invoke-static {p1}, Lorg/fusesource/jansi/io/Colors;->rgb2cielab(I)[D

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fusesource/jansi/io/Colors;->scalar([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static pivotRgb(D)D
    .locals 4
    .param p0, "n"    # D

    .line 137
    const-wide v0, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v0, p0

    const-wide v2, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v0, v2

    const-wide v2, 0x4003333333333333L    # 2.4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    div-double v0, p0, v0

    :goto_0
    return-wide v0
.end method

.method private static pivotXyz(D)D
    .locals 4
    .param p0, "n"    # D

    .line 153
    const-wide v0, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x408c3a5ed097b426L    # 903.2962962962963

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private static rgb(I)[D
    .locals 11
    .param p0, "color"    # I

    .line 111
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 112
    .local v0, "r":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 113
    .local v1, "g":I
    shr-int/lit8 v2, p0, 0x0

    and-int/lit16 v2, v2, 0xff

    .line 114
    .local v2, "b":I
    int-to-double v3, v0

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    int-to-double v7, v1

    div-double/2addr v7, v5

    int-to-double v9, v2

    div-double/2addr v9, v5

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    aput-wide v3, v5, v6

    const/4 v3, 0x1

    aput-wide v7, v5, v3

    const/4 v3, 0x2

    aput-wide v9, v5, v3

    return-object v5
.end method

.method private static rgb2cielab(I)[D
    .locals 1
    .param p0, "color"    # I

    .line 118
    invoke-static {p0}, Lorg/fusesource/jansi/io/Colors;->rgb(I)[D

    move-result-object v0

    invoke-static {v0}, Lorg/fusesource/jansi/io/Colors;->rgb2cielab([D)[D

    move-result-object v0

    return-object v0
.end method

.method private static rgb2cielab([D)[D
    .locals 1
    .param p0, "rgb"    # [D

    .line 122
    invoke-static {p0}, Lorg/fusesource/jansi/io/Colors;->rgb2xyz([D)[D

    move-result-object v0

    invoke-static {v0}, Lorg/fusesource/jansi/io/Colors;->xyz2lab([D)[D

    move-result-object v0

    return-object v0
.end method

.method private static rgb2xyz([D)[D
    .locals 17
    .param p0, "rgb"    # [D

    .line 126
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/fusesource/jansi/io/Colors;->pivotRgb(D)D

    move-result-wide v1

    .line 127
    .local v1, "vr":D
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/fusesource/jansi/io/Colors;->pivotRgb(D)D

    move-result-wide v4

    .line 128
    .local v4, "vg":D
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    invoke-static {v7, v8}, Lorg/fusesource/jansi/io/Colors;->pivotRgb(D)D

    move-result-wide v7

    .line 130
    .local v7, "vb":D
    const-wide v9, 0x3fda65af8741a841L    # 0.4124564

    mul-double/2addr v9, v1

    const-wide v11, 0x3fd6e286ddd532cdL    # 0.3575761

    mul-double/2addr v11, v4

    add-double/2addr v9, v11

    const-wide v11, 0x3fc7189374bc6a7fL    # 0.1804375

    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    .line 131
    .local v9, "x":D
    const-wide v11, 0x3fcb38dd971f6bd6L    # 0.2126729

    mul-double/2addr v11, v1

    const-wide v13, 0x3fe6e286ddd532cdL    # 0.7151522

    mul-double/2addr v13, v4

    add-double/2addr v11, v13

    const-wide v13, 0x3fb27a0f9096bb99L    # 0.072175

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    .line 132
    .local v11, "y":D
    const-wide v13, 0x3f93cc4410d1089cL    # 0.0193339

    mul-double/2addr v13, v1

    const-wide v15, 0x3fbe835dedf1e083L    # 0.119192

    mul-double/2addr v15, v4

    add-double/2addr v13, v15

    const-wide v15, 0x3fee68e424d8269dL    # 0.9503041

    mul-double/2addr v15, v7

    add-double/2addr v13, v15

    .line 133
    .local v13, "z":D
    const/4 v15, 0x3

    new-array v15, v15, [D

    aput-wide v9, v15, v0

    aput-wide v11, v15, v3

    aput-wide v13, v15, v6

    return-object v15
.end method

.method public static roundColor(II)I
    .locals 2
    .param p0, "col"    # I
    .param p1, "max"    # I

    .line 76
    if-lt p0, p1, :cond_0

    .line 77
    sget-object v0, Lorg/fusesource/jansi/io/Colors;->DEFAULT_COLORS_256:[I

    aget v0, v0, p0

    .line 78
    .local v0, "c":I
    sget-object v1, Lorg/fusesource/jansi/io/Colors;->DEFAULT_COLORS_256:[I

    invoke-static {v0, v1, p1}, Lorg/fusesource/jansi/io/Colors;->roundColor(I[II)I

    move-result p0

    .line 80
    .end local v0    # "c":I
    :cond_0
    return p0
.end method

.method private static roundColor(I[II)I
    .locals 7
    .param p0, "color"    # I
    .param p1, "colors"    # [I
    .param p2, "max"    # I

    .line 88
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 89
    .local v0, "best_distance":D
    const v2, 0x7fffffff

    .line 90
    .local v2, "best_index":I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    if-ge v3, p2, :cond_1

    .line 91
    aget v4, p1, v3

    invoke-static {p0, v4}, Lorg/fusesource/jansi/io/Colors;->cie76(II)D

    move-result-wide v4

    .line 92
    .local v4, "d":D
    cmpg-double v6, v4, v0

    if-gtz v6, :cond_0

    .line 93
    move v2, v3

    .line 94
    move-wide v0, v4

    .line 90
    .end local v4    # "d":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v3    # "idx":I
    :cond_1
    return v2
.end method

.method public static roundRgbColor(IIII)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "max"    # I

    .line 84
    shl-int/lit8 v0, p0, 0x10

    shl-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    sget-object v1, Lorg/fusesource/jansi/io/Colors;->DEFAULT_COLORS_256:[I

    invoke-static {v0, v1, p3}, Lorg/fusesource/jansi/io/Colors;->roundColor(I[II)I

    move-result v0

    return v0
.end method

.method private static scalar([D[D)D
    .locals 7
    .param p0, "c1"    # [D
    .param p1, "c2"    # [D

    .line 105
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/fusesource/jansi/io/Colors;->sqr(D)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    .line 106
    invoke-static {v3, v4}, Lorg/fusesource/jansi/io/Colors;->sqr(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    .line 107
    invoke-static {v3, v4}, Lorg/fusesource/jansi/io/Colors;->sqr(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 105
    return-wide v0
.end method

.method private static sqr(D)D
    .locals 2
    .param p0, "n"    # D

    .line 157
    mul-double v0, p0, p0

    return-wide v0
.end method

.method private static xyz2lab([D)[D
    .locals 17
    .param p0, "xyz"    # [D

    .line 141
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/fusesource/jansi/io/Colors;->pivotXyz(D)D

    move-result-wide v1

    .line 142
    .local v1, "fx":D
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/fusesource/jansi/io/Colors;->pivotXyz(D)D

    move-result-wide v4

    .line 143
    .local v4, "fy":D
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    invoke-static {v7, v8}, Lorg/fusesource/jansi/io/Colors;->pivotXyz(D)D

    move-result-wide v7

    .line 144
    .local v7, "fz":D
    const-wide/high16 v9, 0x405d000000000000L    # 116.0

    mul-double/2addr v9, v4

    const-wide/high16 v11, 0x4030000000000000L    # 16.0

    sub-double/2addr v9, v11

    .line 145
    .local v9, "l":D
    const-wide v11, 0x407f400000000000L    # 500.0

    sub-double v13, v1, v4

    mul-double/2addr v13, v11

    .line 146
    .local v13, "a":D
    const-wide/high16 v11, 0x4069000000000000L    # 200.0

    sub-double v15, v4, v7

    mul-double/2addr v15, v11

    .line 147
    .local v15, "b":D
    const/4 v11, 0x3

    new-array v11, v11, [D

    aput-wide v9, v11, v0

    aput-wide v13, v11, v3

    aput-wide v15, v11, v6

    return-object v11
.end method
