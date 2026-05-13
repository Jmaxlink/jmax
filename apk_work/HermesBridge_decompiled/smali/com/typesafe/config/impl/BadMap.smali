.class final Lcom/typesafe/config/impl/BadMap;
.super Ljava/lang/Object;
.source "BadMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/BadMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final emptyEntries:[Lcom/typesafe/config/impl/BadMap$Entry;

.field private static final primes:[I


# instance fields
.field private final entries:[Lcom/typesafe/config/impl/BadMap$Entry;

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/typesafe/config/impl/BadMap$Entry;

    sput-object v0, Lcom/typesafe/config/impl/BadMap;->emptyEntries:[Lcom/typesafe/config/impl/BadMap$Entry;

    .line 114
    const/16 v0, 0xae

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/typesafe/config/impl/BadMap;->primes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x5
        0xb
        0x11
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
        0x65
        0x67
        0x6b
        0x6d
        0x71
        0x7f
        0x83
        0x89
        0x8b
        0x95
        0x97
        0x9d
        0xa3
        0xa7
        0xad
        0xb3
        0xb5
        0xbf
        0xc1
        0xc5
        0xc7
        0xd3
        0xdf
        0xe3
        0xe5
        0xe9
        0xef
        0xf1
        0xfb
        0x101
        0x107
        0x10d
        0x10f
        0x115
        0x119
        0x11b
        0x125
        0x133
        0x137
        0x139
        0x13d
        0x14b
        0x151
        0x15b
        0x15d
        0x161
        0x167
        0x16f
        0x175
        0x17b
        0x17f
        0x185
        0x18d
        0x191
        0x199
        0x1a3
        0x1a5
        0x1af
        0x1b1
        0x1b7
        0x1bb
        0x1c1
        0x1c9
        0x1cd
        0x1cf
        0x1d3
        0x1df
        0x1e7
        0x1eb
        0x1f3
        0x1f7
        0x1fd
        0x209
        0x20b
        0x21d
        0x223
        0x22d
        0x233
        0x239
        0x23b
        0x241
        0x24b
        0x251
        0x257
        0x259
        0x25f
        0x265
        0x269
        0x26b
        0x277
        0x281
        0x283
        0x287
        0x28d
        0x293
        0x295
        0x2a1
        0x2a5
        0x2ab
        0x2b3
        0x2bd
        0x2c5
        0x2cf
        0x2d7
        0x2dd
        0x2e3
        0x2e7
        0x2ef
        0x2f5
        0x2f9
        0x301
        0x305
        0x313
        0x31d
        0x329
        0x32b
        0x335
        0x337
        0x33b
        0x33d
        0x347
        0x355
        0x359
        0x35b
        0x35f
        0x36d
        0x371
        0x373
        0x377
        0x38b
        0x38f
        0x397
        0x3a1
        0x3a9
        0x3ad
        0x3b3
        0x3b9
        0x3c7
        0x3cb
        0x3d1
        0x3d7
        0x3df
        0x3e5
        0x3f1
        0x805
        0xc07
        0xfd9
        0x1bbf
        0x2ac5
        0x3ec5
        0x7f61
        0x1014b
        0x19919
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 38
    .local p0, "this":Lcom/typesafe/config/impl/BadMap;, "Lcom/typesafe/config/impl/BadMap<TK;TV;>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/typesafe/config/impl/BadMap;->emptyEntries:[Lcom/typesafe/config/impl/BadMap$Entry;

    invoke-direct {p0, v0, v1}, Lcom/typesafe/config/impl/BadMap;-><init>(I[Lcom/typesafe/config/impl/BadMap$Entry;)V

    .line 39
    return-void
.end method

.method private constructor <init>(I[Lcom/typesafe/config/impl/BadMap$Entry;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "entries"    # [Lcom/typesafe/config/impl/BadMap$Entry;

    .line 41
    .local p0, "this":Lcom/typesafe/config/impl/BadMap;, "Lcom/typesafe/config/impl/BadMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/typesafe/config/impl/BadMap;->size:I

    .line 43
    iput-object p2, p0, Lcom/typesafe/config/impl/BadMap;->entries:[Lcom/typesafe/config/impl/BadMap$Entry;

    .line 44
    return-void
.end method

.method private static nextPrime(I)I
    .locals 4
    .param p0, "i"    # I

    .line 130
    sget-object v0, Lcom/typesafe/config/impl/BadMap;->primes:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 131
    .local v3, "p":I
    if-le v3, p0, :cond_0

    .line 132
    return v3

    .line 130
    .end local v3    # "p":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_1
    sget-object v0, Lcom/typesafe/config/impl/BadMap;->primes:[I

    sget-object v1, Lcom/typesafe/config/impl/BadMap;->primes:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private static rehash([Lcom/typesafe/config/impl/BadMap$Entry;[Lcom/typesafe/config/impl/BadMap$Entry;)V
    .locals 3
    .param p0, "src"    # [Lcom/typesafe/config/impl/BadMap$Entry;
    .param p1, "dest"    # [Lcom/typesafe/config/impl/BadMap$Entry;

    .line 89
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 91
    .local v2, "entry":Lcom/typesafe/config/impl/BadMap$Entry;
    :goto_1
    if-eqz v2, :cond_0

    .line 92
    invoke-static {p1, v2}, Lcom/typesafe/config/impl/BadMap;->store([Lcom/typesafe/config/impl/BadMap$Entry;Lcom/typesafe/config/impl/BadMap$Entry;)V

    .line 93
    iget-object v2, v2, Lcom/typesafe/config/impl/BadMap$Entry;->next:Lcom/typesafe/config/impl/BadMap$Entry;

    goto :goto_1

    .line 89
    .end local v2    # "entry":Lcom/typesafe/config/impl/BadMap$Entry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private static store([Lcom/typesafe/config/impl/BadMap$Entry;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "entries"    # [Lcom/typesafe/config/impl/BadMap$Entry;
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/typesafe/config/impl/BadMap$Entry;",
            "ITK;TV;)V"
        }
    .end annotation

    .line 71
    .local p2, "k":Ljava/lang/Object;, "TK;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    array-length v0, p0

    rem-int v0, p1, v0

    .line 72
    .local v0, "i":I
    aget-object v1, p0, v0

    .line 73
    .local v1, "old":Lcom/typesafe/config/impl/BadMap$Entry;
    new-instance v2, Lcom/typesafe/config/impl/BadMap$Entry;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/typesafe/config/impl/BadMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/typesafe/config/impl/BadMap$Entry;)V

    aput-object v2, p0, v0

    .line 74
    return-void
.end method

.method private static store([Lcom/typesafe/config/impl/BadMap$Entry;Lcom/typesafe/config/impl/BadMap$Entry;)V
    .locals 6
    .param p0, "entries"    # [Lcom/typesafe/config/impl/BadMap$Entry;
    .param p1, "e"    # Lcom/typesafe/config/impl/BadMap$Entry;

    .line 77
    iget v0, p1, Lcom/typesafe/config/impl/BadMap$Entry;->hash:I

    array-length v1, p0

    rem-int/2addr v0, v1

    .line 78
    .local v0, "i":I
    aget-object v1, p0, v0

    .line 79
    .local v1, "old":Lcom/typesafe/config/impl/BadMap$Entry;
    if-nez v1, :cond_0

    iget-object v2, p1, Lcom/typesafe/config/impl/BadMap$Entry;->next:Lcom/typesafe/config/impl/BadMap$Entry;

    if-nez v2, :cond_0

    .line 81
    aput-object p1, p0, v0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v2, Lcom/typesafe/config/impl/BadMap$Entry;

    iget v3, p1, Lcom/typesafe/config/impl/BadMap$Entry;->hash:I

    iget-object v4, p1, Lcom/typesafe/config/impl/BadMap$Entry;->key:Ljava/lang/Object;

    iget-object v5, p1, Lcom/typesafe/config/impl/BadMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/typesafe/config/impl/BadMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/typesafe/config/impl/BadMap$Entry;)V

    aput-object v2, p0, v0

    .line 86
    :goto_0
    return-void
.end method


# virtual methods
.method copyingPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/typesafe/config/impl/BadMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/typesafe/config/impl/BadMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/typesafe/config/impl/BadMap;, "Lcom/typesafe/config/impl/BadMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/typesafe/config/impl/BadMap;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 49
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/typesafe/config/impl/BadMap;->entries:[Lcom/typesafe/config/impl/BadMap$Entry;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 54
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/typesafe/config/impl/BadMap;->nextPrime(I)I

    move-result v1

    new-array v1, v1, [Lcom/typesafe/config/impl/BadMap$Entry;

    .local v1, "newEntries":[Lcom/typesafe/config/impl/BadMap$Entry;
    goto :goto_0

    .line 56
    .end local v1    # "newEntries":[Lcom/typesafe/config/impl/BadMap$Entry;
    :cond_0
    iget-object v1, p0, Lcom/typesafe/config/impl/BadMap;->entries:[Lcom/typesafe/config/impl/BadMap$Entry;

    array-length v1, v1

    new-array v1, v1, [Lcom/typesafe/config/impl/BadMap$Entry;

    .line 59
    .restart local v1    # "newEntries":[Lcom/typesafe/config/impl/BadMap$Entry;
    :goto_0
    array-length v2, v1

    iget-object v3, p0, Lcom/typesafe/config/impl/BadMap;->entries:[Lcom/typesafe/config/impl/BadMap$Entry;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 60
    iget-object v2, p0, Lcom/typesafe/config/impl/BadMap;->entries:[Lcom/typesafe/config/impl/BadMap$Entry;

    iget-object v3, p0, Lcom/typesafe/config/impl/BadMap;->entries:[Lcom/typesafe/config/impl/BadMap$Entry;

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/typesafe/config/impl/BadMap;->entries:[Lcom/typesafe/config/impl/BadMap$Entry;

    invoke-static {v2, v1}, Lcom/typesafe/config/impl/BadMap;->rehash([Lcom/typesafe/config/impl/BadMap$Entry;[Lcom/typesafe/config/impl/BadMap$Entry;)V

    .line 65
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 66
    .local v2, "hash":I
    invoke-static {v1, v2, p1, p2}, Lcom/typesafe/config/impl/BadMap;->store([Lcom/typesafe/config/impl/BadMap$Entry;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 67
    new-instance v3, Lcom/typesafe/config/impl/BadMap;

    invoke-direct {v3, v0, v1}, Lcom/typesafe/config/impl/BadMap;-><init>(I[Lcom/typesafe/config/impl/BadMap$Entry;)V

    return-object v3
.end method

.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/typesafe/config/impl/BadMap;, "Lcom/typesafe/config/impl/BadMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/typesafe/config/impl/BadMap;->entries:[Lcom/typesafe/config/impl/BadMap$Entry;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    return-object v1

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 104
    .local v0, "hash":I
    iget-object v2, p0, Lcom/typesafe/config/impl/BadMap;->entries:[Lcom/typesafe/config/impl/BadMap$Entry;

    array-length v2, v2

    rem-int v2, v0, v2

    .line 105
    .local v2, "i":I
    iget-object v3, p0, Lcom/typesafe/config/impl/BadMap;->entries:[Lcom/typesafe/config/impl/BadMap$Entry;

    aget-object v3, v3, v2

    .line 106
    .local v3, "e":Lcom/typesafe/config/impl/BadMap$Entry;
    if-nez v3, :cond_1

    .line 107
    return-object v1

    .line 109
    :cond_1
    invoke-virtual {v3, p1}, Lcom/typesafe/config/impl/BadMap$Entry;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
