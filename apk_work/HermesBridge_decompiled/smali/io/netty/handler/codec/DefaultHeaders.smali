.class public Lio/netty/handler/codec/DefaultHeaders;
.super Ljava/lang/Object;
.source "DefaultHeaders.java"

# interfaces
.implements Lio/netty/handler/codec/Headers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;,
        Lio/netty/handler/codec/DefaultHeaders$ValueIterator;,
        Lio/netty/handler/codec/DefaultHeaders$HeaderIterator;,
        Lio/netty/handler/codec/DefaultHeaders$ValueValidator;,
        Lio/netty/handler/codec/DefaultHeaders$NameValidator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T::",
        "Lio/netty/handler/codec/Headers<",
        "TK;TV;TT;>;>",
        "Ljava/lang/Object;",
        "Lio/netty/handler/codec/Headers<",
        "TK;TV;TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final HASH_CODE_SEED:I = -0x3d4d51cb


# instance fields
.field private final entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final hashMask:B

.field private final hashingStrategy:Lio/netty/util/HashingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/HashingStrategy<",
            "TK;>;"
        }
    .end annotation
.end field

.field protected final head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;"
        }
    .end annotation
.end field

.field size:I

.field private final valueConverter:Lio/netty/handler/codec/ValueConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final valueValidator:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$ValueValidator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 43
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/ValueConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    sget-object v0, Lio/netty/util/HashingStrategy;->JAVA_HASHER:Lio/netty/util/HashingStrategy;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    .local p2, "nameValidator":Lio/netty/handler/codec/DefaultHeaders$NameValidator;, "Lio/netty/handler/codec/DefaultHeaders$NameValidator<TK;>;"
    sget-object v0, Lio/netty/util/HashingStrategy;->JAVA_HASHER:Lio/netty/util/HashingStrategy;

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/HashingStrategy<",
            "TK;>;",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "nameHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TK;>;"
    .local p2, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    sget-object v0, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->NOT_NULL:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/HashingStrategy<",
            "TK;>;",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "nameHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TK;>;"
    .local p2, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    .local p3, "nameValidator":Lio/netty/handler/codec/DefaultHeaders$NameValidator;, "Lio/netty/handler/codec/DefaultHeaders$NameValidator<TK;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;I)V
    .locals 6
    .param p4, "arraySizeHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/HashingStrategy<",
            "TK;>;",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;I)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "nameHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TK;>;"
    .local p2, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    .local p3, "nameValidator":Lio/netty/handler/codec/DefaultHeaders$NameValidator;, "Lio/netty/handler/codec/DefaultHeaders$NameValidator<TK;>;"
    sget-object v5, Lio/netty/handler/codec/DefaultHeaders$ValueValidator;->NO_VALIDATION:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;ILio/netty/handler/codec/DefaultHeaders$ValueValidator;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;ILio/netty/handler/codec/DefaultHeaders$ValueValidator;)V
    .locals 2
    .param p4, "arraySizeHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/HashingStrategy<",
            "TK;>;",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;I",
            "Lio/netty/handler/codec/DefaultHeaders$ValueValidator<",
            "TV;>;)V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "nameHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TK;>;"
    .local p2, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    .local p3, "nameValidator":Lio/netty/handler/codec/DefaultHeaders$NameValidator;, "Lio/netty/handler/codec/DefaultHeaders$NameValidator<TK;>;"
    .local p5, "valueValidator":Lio/netty/handler/codec/DefaultHeaders$ValueValidator;, "Lio/netty/handler/codec/DefaultHeaders$ValueValidator<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-string v0, "valueConverter"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/ValueConverter;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    .line 140
    const-string v0, "nameValidator"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    .line 141
    const-string v0, "nameHashingStrategy"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/HashingStrategy;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    .line 142
    const-string v0, "valueValidator"

    invoke-static {p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueValidator:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    .line 145
    const/16 v0, 0x80

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/MathUtil;->findNextPositivePowerOfTwo(I)I

    move-result v0

    new-array v0, v0, [Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 146
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashMask:B

    .line 147
    new-instance v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    invoke-direct {v0}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 148
    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/codec/DefaultHeaders;)Lio/netty/util/HashingStrategy;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/DefaultHeaders;

    .line 43
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/DefaultHeaders;)[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/DefaultHeaders;

    .line 43
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/DefaultHeaders;I)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/DefaultHeaders;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v0

    return v0
.end method

.method private add0(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "h"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    .line 1045
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p3, "name":Ljava/lang/Object;, "TK;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v1, v1, p2

    invoke-virtual {p0, p1, p3, p4, v1}, Lio/netty/handler/codec/DefaultHeaders;->newHeaderEntry(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v1

    aput-object v1, v0, p2

    .line 1046
    iget v0, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    .line 1047
    return-void
.end method

.method private fromBoolean(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .line 1125
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertBoolean(Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert boolean value for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fromByte(Ljava/lang/Object;B)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)TV;"
        }
    .end annotation

    .line 1133
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertByte(B)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert byte value for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fromChar(Ljava/lang/Object;C)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)TV;"
        }
    .end annotation

    .line 1141
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertChar(C)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert char value for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fromDouble(Ljava/lang/Object;D)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)TV;"
        }
    .end annotation

    .line 1181
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertDouble(D)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1182
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert double value for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fromFloat(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)TV;"
        }
    .end annotation

    .line 1173
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertFloat(F)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert float value for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fromInt(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation

    .line 1157
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertInt(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert int value for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fromLong(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TV;"
        }
    .end annotation

    .line 1165
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertLong(J)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert long value for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fromObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1117
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    const-string v1, "value"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/ValueConverter;->convertObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert object value for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fromShort(Ljava/lang/Object;S)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)TV;"
        }
    .end annotation

    .line 1149
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertShort(S)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert short value for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fromTimeMillis(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TV;"
        }
    .end annotation

    .line 1189
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertTimeMillis(J)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert millsecond value for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private index(I)I
    .locals 1
    .param p1, "hash"    # I

    .line 1040
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget-byte v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashMask:B

    and-int/2addr v0, p1

    return v0
.end method

.method private remove0(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "h"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;)TV;"
        }
    .end annotation

    .line 1053
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p3, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v0, v0, p2

    .line 1054
    .local v0, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 1055
    const/4 v1, 0x0

    return-object v1

    .line 1058
    :cond_0
    const/4 v1, 0x0

    .line 1059
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1060
    .local v2, "next":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 1061
    iget v3, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v4, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, p3, v4}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1062
    iget-object v1, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    .line 1063
    iget-object v3, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v3, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1064
    invoke-virtual {v2}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->remove()V

    .line 1065
    iget v3, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    goto :goto_1

    .line 1067
    :cond_1
    move-object v0, v2

    .line 1070
    :goto_1
    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v0, v3, p2

    .line 1074
    iget v3, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v4, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, p3, v4}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1075
    if-nez v1, :cond_3

    .line 1076
    iget-object v1, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    .line 1078
    :cond_3
    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v4, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aput-object v4, v3, p2

    .line 1079
    invoke-virtual {v0}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->remove()V

    .line 1080
    iget v3, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    .line 1083
    :cond_4
    return-object v1
.end method

.method private thisT()Lio/netty/handler/codec/Headers;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1112
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    return-object p0
.end method

.method private toBoolean(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 1197
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertToBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert header value to boolean for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toByte(Ljava/lang/Object;Ljava/lang/Object;)B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)B"
        }
    .end annotation

    .line 1205
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertToByte(Ljava/lang/Object;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert header value to byte for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toChar(Ljava/lang/Object;Ljava/lang/Object;)C
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)C"
        }
    .end annotation

    .line 1213
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertToChar(Ljava/lang/Object;)C

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert header value to char for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toDouble(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)D"
        }
    .end annotation

    .line 1253
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertToDouble(Ljava/lang/Object;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert header value to double for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toFloat(Ljava/lang/Object;Ljava/lang/Object;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)F"
        }
    .end annotation

    .line 1245
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertToFloat(Ljava/lang/Object;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert header value to float for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toInt(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 1229
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertToInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert header value to int for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toLong(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    .line 1237
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertToLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert header value to long for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toShort(Ljava/lang/Object;Ljava/lang/Object;)S
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)S"
        }
    .end annotation

    .line 1221
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertToShort(Ljava/lang/Object;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert header value to short for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toTimeMillis(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    .line 1261
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertToTimeMillis(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert header value to millsecond for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+TK;+TV;*>;)TT;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+TK;+TV;*>;"
    if-eq p1, p0, :cond_0

    .line 433
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->addImpl(Lio/netty/handler/codec/Headers;)V

    .line 434
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t add to itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)TT;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 342
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 343
    .local v1, "i":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 344
    .local v3, "v":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lio/netty/handler/codec/DefaultHeaders;->valueValidator:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    invoke-virtual {p0, v4, p1, v3}, Lio/netty/handler/codec/DefaultHeaders;->validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    invoke-direct {p0, v0, v1, p1, v3}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 346
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 347
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueValidator:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    const-string v0, "value"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 333
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 334
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 335
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public varargs add(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)TT;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 354
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 355
    .local v1, "i":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 356
    .local v4, "v":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Lio/netty/handler/codec/DefaultHeaders;->valueValidator:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    invoke-virtual {p0, v5, p1, v4}, Lio/netty/handler/codec/DefaultHeaders;->validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 357
    invoke-direct {p0, v0, v1, p1, v4}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 355
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public addBoolean(Ljava/lang/Object;Z)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TT;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromBoolean(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addByte(Ljava/lang/Object;B)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)TT;"
        }
    .end annotation

    .line 420
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromByte(Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addChar(Ljava/lang/Object;C)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)TT;"
        }
    .end annotation

    .line 405
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromChar(Ljava/lang/Object;C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addDouble(Ljava/lang/Object;D)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)TT;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->fromDouble(Ljava/lang/Object;D)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addFloat(Ljava/lang/Object;F)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)TT;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromFloat(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method protected addImpl(Lio/netty/handler/codec/Headers;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+TK;+TV;*>;)V"
        }
    .end annotation

    .line 438
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+TK;+TV;*>;"
    instance-of v0, p1, Lio/netty/handler/codec/DefaultHeaders;

    if-eqz v0, :cond_2

    .line 440
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/DefaultHeaders;

    .line 442
    .local v0, "defaultHeaders":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<+TK;+TV;TT;>;"
    iget-object v1, v0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v1, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 443
    .local v1, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<+TK;+TV;>;"
    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    if-ne v2, v3, :cond_0

    .line 446
    :goto_0
    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eq v1, v2, :cond_1

    .line 447
    iget v2, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    iget v3, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    invoke-direct {p0, v3}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v3

    iget-object v4, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    iget-object v5, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    invoke-direct {p0, v2, v3, v4, v5}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 448
    iget-object v1, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 452
    :cond_0
    :goto_1
    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eq v1, v2, :cond_1

    .line 453
    iget-object v2, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    iget-object v3, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 454
    iget-object v1, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_1

    .line 457
    .end local v0    # "defaultHeaders":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<+TK;+TV;TT;>;"
    .end local v1    # "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<+TK;+TV;>;"
    :cond_1
    goto :goto_3

    .line 459
    :cond_2
    invoke-interface {p1}, Lio/netty/handler/codec/Headers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 460
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 461
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_2

    .line 463
    :cond_3
    :goto_3
    return-void
.end method

.method public addInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TT;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromInt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addLong(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 390
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->fromLong(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "*>;)TT;"
        }
    .end annotation

    .line 369
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 370
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lio/netty/handler/codec/DefaultHeaders;->addObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 371
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 372
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 364
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public varargs addObject(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 3
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 378
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Lio/netty/handler/codec/DefaultHeaders;->addObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 377
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addShort(Ljava/lang/Object;S)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)TT;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromShort(Ljava/lang/Object;S)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addTimeMillis(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->fromTimeMillis(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/netty/handler/codec/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 635
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 636
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v2, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v2, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 637
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    .line 638
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 229
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 285
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    sget-object v0, Lio/netty/util/HashingStrategy;->JAVA_HASHER:Lio/netty/util/HashingStrategy;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;Lio/netty/util/HashingStrategy;)Z

    move-result v0

    return v0
.end method

.method public final contains(Ljava/lang/Object;Ljava/lang/Object;Lio/netty/util/HashingStrategy;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lio/netty/util/HashingStrategy<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 289
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "valueHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<-TV;>;"
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 292
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 293
    .local v1, "i":I
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v2, v2, v1

    .line 294
    .local v2, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 295
    iget v3, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v4, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    invoke-interface {p3, p2, v3}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    const/4 v3, 0x1

    return v3

    .line 298
    :cond_0
    iget-object v2, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 300
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public containsBoolean(Ljava/lang/Object;Z)Z
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 239
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromBoolean(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsByte(Ljava/lang/Object;B)Z
    .locals 1
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)Z"
        }
    .end annotation

    .line 244
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromByte(Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsChar(Ljava/lang/Object;C)Z
    .locals 1
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)Z"
        }
    .end annotation

    .line 249
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromChar(Ljava/lang/Object;C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsDouble(Ljava/lang/Object;D)Z
    .locals 1
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)Z"
        }
    .end annotation

    .line 274
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->fromDouble(Ljava/lang/Object;D)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsFloat(Ljava/lang/Object;F)Z
    .locals 1
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)Z"
        }
    .end annotation

    .line 269
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromFloat(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsInt(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)Z"
        }
    .end annotation

    .line 259
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromInt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsLong(Ljava/lang/Object;J)Z
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    .line 264
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->fromLong(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 234
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsShort(Ljava/lang/Object;S)Z
    .locals 1
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)Z"
        }
    .end annotation

    .line 254
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromShort(Ljava/lang/Object;S)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsTimeMillis(Ljava/lang/Object;J)Z
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    .line 279
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->fromTimeMillis(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copy()Lio/netty/handler/codec/DefaultHeaders;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/DefaultHeaders<",
            "TK;TV;TT;>;"
        }
    .end annotation

    .line 1272
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    new-instance v0, Lio/netty/handler/codec/DefaultHeaders;

    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    iget-object v4, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    array-length v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;I)V

    .line 1274
    .local v0, "copy":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    invoke-virtual {v0, p0}, Lio/netty/handler/codec/DefaultHeaders;->addImpl(Lio/netty/handler/codec/Headers;)V

    .line 1275
    return-object v0
.end method

.method public final equals(Lio/netty/handler/codec/Headers;Lio/netty/util/HashingStrategy;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "TK;TV;*>;",
            "Lio/netty/util/HashingStrategy<",
            "TV;>;)Z"
        }
    .end annotation

    .line 958
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "h2":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<TK;TV;*>;"
    .local p2, "valueHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TV;>;"
    invoke-interface {p1}, Lio/netty/handler/codec/Headers;->size()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 959
    return v2

    .line 962
    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    .line 963
    return v0

    .line 966
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->names()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 967
    .local v3, "name":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v3}, Lio/netty/handler/codec/Headers;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 968
    .local v4, "otherValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {p0, v3}, Lio/netty/handler/codec/DefaultHeaders;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 969
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 970
    return v2

    .line 972
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 973
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 974
    return v2

    .line 972
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 977
    .end local v3    # "name":Ljava/lang/Object;, "TK;"
    .end local v4    # "otherValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .end local v6    # "i":I
    :cond_4
    goto :goto_0

    .line 978
    :cond_5
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 937
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    instance-of v0, p1, Lio/netty/handler/codec/Headers;

    if-nez v0, :cond_0

    .line 938
    const/4 v0, 0x0

    return v0

    .line 941
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/Headers;

    sget-object v1, Lio/netty/util/HashingStrategy;->JAVA_HASHER:Lio/netty/util/HashingStrategy;

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/DefaultHeaders;->equals(Lio/netty/handler/codec/Headers;Lio/netty/util/HashingStrategy;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 155
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 156
    .local v1, "i":I
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v2, v2, v1

    .line 157
    .local v2, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 159
    .local v3, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    if-eqz v2, :cond_1

    .line 160
    iget v4, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v5, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v4, p1, v5}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    iget-object v3, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    .line 164
    :cond_0
    iget-object v2, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 166
    :cond_1
    return-object v3
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .line 173
    return-object p2

    .line 175
    :cond_0
    return-object v0
.end method

.method public getAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 199
    .local v0, "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TV;>;"
    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v1, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 200
    .local v1, "h":I
    invoke-direct {p0, v1}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v2

    .line 201
    .local v2, "i":I
    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v3, v3, v2

    .line 202
    .local v3, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 203
    iget v4, v3, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v5, v3, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v4, p1, v5}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    invoke-virtual {v3}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 206
    :cond_0
    iget-object v3, v3, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 208
    :cond_1
    return-object v0
.end method

.method public getAllAndRemove(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove(Ljava/lang/Object;)Z

    .line 224
    return-object v0
.end method

.method public getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 181
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    const-string v2, "name"

    invoke-static {p1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAndRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .line 188
    return-object p2

    .line 190
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 648
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 650
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toBoolean(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v2

    .line 652
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 650
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getBoolean(Ljava/lang/Object;Z)Z
    .locals 2
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 658
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 659
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getBooleanAndRemove(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 792
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 794
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toBoolean(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v2

    .line 796
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 794
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getBooleanAndRemove(Ljava/lang/Object;Z)Z
    .locals 2
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 802
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getBooleanAndRemove(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 803
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getByte(Ljava/lang/Object;B)B
    .locals 2
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
        }
    .end annotation

    .line 674
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 675
    .local v0, "v":Ljava/lang/Byte;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 664
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 666
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toByte(Ljava/lang/Object;Ljava/lang/Object;)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 667
    :catch_0
    move-exception v2

    .line 668
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 666
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getByteAndRemove(Ljava/lang/Object;B)B
    .locals 2
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
        }
    .end annotation

    .line 818
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getByteAndRemove(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 819
    .local v0, "v":Ljava/lang/Byte;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getByteAndRemove(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 808
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 810
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toByte(Ljava/lang/Object;Ljava/lang/Object;)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    :catch_0
    move-exception v2

    .line 812
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 810
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getChar(Ljava/lang/Object;C)C
    .locals 2
    .param p2, "defaultValue"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)C"
        }
    .end annotation

    .line 690
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v0

    .line 691
    .local v0, "v":Ljava/lang/Character;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Character;"
        }
    .end annotation

    .line 680
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 682
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toChar(Ljava/lang/Object;Ljava/lang/Object;)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v2

    .line 684
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 682
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getCharAndRemove(Ljava/lang/Object;C)C
    .locals 2
    .param p2, "defaultValue"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)C"
        }
    .end annotation

    .line 834
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getCharAndRemove(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v0

    .line 835
    .local v0, "v":Ljava/lang/Character;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getCharAndRemove(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Character;"
        }
    .end annotation

    .line 824
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 826
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toChar(Ljava/lang/Object;Ljava/lang/Object;)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 827
    :catch_0
    move-exception v2

    .line 828
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 826
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getDouble(Ljava/lang/Object;D)D
    .locals 3
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    .line 770
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 771
    .local v0, "v":Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 760
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 762
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toDouble(Ljava/lang/Object;Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 763
    :catch_0
    move-exception v2

    .line 764
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 762
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getDoubleAndRemove(Ljava/lang/Object;D)D
    .locals 3
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    .line 914
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getDoubleAndRemove(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 915
    .local v0, "v":Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getDoubleAndRemove(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 904
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 906
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toDouble(Ljava/lang/Object;Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 907
    :catch_0
    move-exception v2

    .line 908
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 906
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getFloat(Ljava/lang/Object;F)F
    .locals 2
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .line 754
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 755
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 744
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 746
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toFloat(Ljava/lang/Object;Ljava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v2

    .line 748
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 746
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getFloatAndRemove(Ljava/lang/Object;F)F
    .locals 2
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .line 898
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getFloatAndRemove(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 899
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getFloatAndRemove(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 888
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 890
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toFloat(Ljava/lang/Object;Ljava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 891
    :catch_0
    move-exception v2

    .line 892
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 890
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getInt(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 722
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 723
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 712
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 714
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toInt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 715
    :catch_0
    move-exception v2

    .line 716
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 714
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getIntAndRemove(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 866
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getIntAndRemove(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 867
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getIntAndRemove(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 856
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 858
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toInt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 859
    :catch_0
    move-exception v2

    .line 860
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 858
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getLong(Ljava/lang/Object;J)J
    .locals 3
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 738
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 739
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 728
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 730
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toLong(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v2

    .line 732
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 730
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getLongAndRemove(Ljava/lang/Object;J)J
    .locals 3
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 882
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getLongAndRemove(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 883
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getLongAndRemove(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 872
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 874
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toLong(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 875
    :catch_0
    move-exception v2

    .line 876
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 874
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 696
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 698
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toShort(Ljava/lang/Object;Ljava/lang/Object;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v2

    .line 700
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 698
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getShort(Ljava/lang/Object;S)S
    .locals 2
    .param p2, "defaultValue"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)S"
        }
    .end annotation

    .line 706
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 707
    .local v0, "v":Ljava/lang/Short;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getShortAndRemove(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 840
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 842
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toShort(Ljava/lang/Object;Ljava/lang/Object;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 843
    :catch_0
    move-exception v2

    .line 844
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 842
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getShortAndRemove(Ljava/lang/Object;S)S
    .locals 2
    .param p2, "defaultValue"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)S"
        }
    .end annotation

    .line 850
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getShortAndRemove(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 851
    .local v0, "v":Ljava/lang/Short;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getTimeMillis(Ljava/lang/Object;J)J
    .locals 3
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 786
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getTimeMillis(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 787
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getTimeMillis(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 776
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 778
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toTimeMillis(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    :catch_0
    move-exception v2

    .line 780
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 778
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getTimeMillisAndRemove(Ljava/lang/Object;J)J
    .locals 3
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 930
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getTimeMillisAndRemove(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 931
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getTimeMillisAndRemove(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 920
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 922
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->toTimeMillis(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 923
    :catch_0
    move-exception v2

    .line 924
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 922
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 947
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    sget-object v0, Lio/netty/util/HashingStrategy;->JAVA_HASHER:Lio/netty/util/HashingStrategy;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->hashCode(Lio/netty/util/HashingStrategy;)I

    move-result v0

    return v0
.end method

.method public final hashCode(Lio/netty/util/HashingStrategy;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/HashingStrategy<",
            "TV;>;)I"
        }
    .end annotation

    .line 987
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "valueHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TV;>;"
    const v0, -0x3d4d51cb

    .line 988
    .local v0, "result":I
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->names()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 989
    .local v2, "name":Ljava/lang/Object;, "TK;"
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v4, v2}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 990
    .end local v0    # "result":I
    .local v3, "result":I
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/DefaultHeaders;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 991
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 992
    mul-int/lit8 v5, v3, 0x1f

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v6

    add-int v3, v5, v6

    .line 991
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 994
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .end local v2    # "name":Ljava/lang/Object;, "TK;"
    .end local v4    # "i":I
    :cond_0
    move v0, v3

    goto :goto_0

    .line 995
    .end local v3    # "result":I
    .local v0, "result":I
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 310
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v1, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 643
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    new-instance v0, Lio/netty/handler/codec/DefaultHeaders$HeaderIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/DefaultHeaders$HeaderIterator;-><init>(Lio/netty/handler/codec/DefaultHeaders;Lio/netty/handler/codec/DefaultHeaders$1;)V

    return-object v0
.end method

.method protected nameValidator()Lio/netty/handler/codec/DefaultHeaders$NameValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;"
        }
    .end annotation

    .line 1032
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 315
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 319
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v1, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 320
    .local v1, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eq v1, v2, :cond_1

    .line 321
    invoke-virtual {v1}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v1, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 324
    :cond_1
    return-object v0
.end method

.method protected newHeaderEntry(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 7
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;)",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1024
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p2, "name":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    new-instance v6, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v5, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V

    return-object v6
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 630
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method remove0(Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;)",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1087
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "entry":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    .local p2, "previous":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    iget v0, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v0

    .line 1088
    .local v0, "i":I
    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v1, v1, v0

    .line 1089
    .local v1, "firstEntry":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    if-ne v1, p1, :cond_0

    .line 1090
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v3, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aput-object v3, v2, v0

    .line 1091
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object p2, v2, v0

    goto :goto_1

    .line 1092
    :cond_0
    if-nez p2, :cond_3

    .line 1094
    move-object p2, v1

    .line 1095
    iget-object v2, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1096
    .local v2, "next":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    .line 1097
    move-object p2, v2

    .line 1098
    iget-object v2, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 1100
    :cond_1
    if-eqz v2, :cond_2

    .line 1101
    iget-object v3, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v3, p2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1102
    .end local v2    # "next":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    goto :goto_1

    .line 1100
    .restart local v2    # "next":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry not found in its hash bucket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1103
    .end local v2    # "next":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :cond_3
    iget-object v2, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v2, p2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1105
    :goto_1
    invoke-virtual {p1}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->remove()V

    .line 1106
    iget v2, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    .line 1107
    return-object p2
.end method

.method public set(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+TK;+TV;*>;)TT;"
        }
    .end annotation

    .line 610
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+TK;+TV;*>;"
    if-eq p1, p0, :cond_0

    .line 611
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->clear()Lio/netty/handler/codec/Headers;

    .line 612
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->addImpl(Lio/netty/handler/codec/Headers;)V

    .line 614
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)TT;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/Object;)V

    .line 480
    const-string v0, "values"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 483
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 485
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 487
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_0

    .line 488
    goto :goto_1

    .line 490
    :cond_0
    iget-object v4, p0, Lio/netty/handler/codec/DefaultHeaders;->valueValidator:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    invoke-virtual {p0, v4, p1, v3}, Lio/netty/handler/codec/DefaultHeaders;->validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 491
    invoke-direct {p0, v0, v1, p1, v3}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 492
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 494
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/Object;)V

    .line 468
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueValidator:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    const-string v0, "value"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 471
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 472
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 474
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public varargs set(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)TT;"
        }
    .end annotation

    .line 499
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/Object;)V

    .line 500
    const-string v0, "values"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 503
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v2

    .line 505
    .local v2, "i":I
    invoke-direct {p0, v0, v2, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 506
    array-length v3, p2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    .line 507
    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_0

    .line 508
    goto :goto_1

    .line 510
    :cond_0
    iget-object v5, p0, Lio/netty/handler/codec/DefaultHeaders;->valueValidator:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    invoke-virtual {p0, v5, p1, v4}, Lio/netty/handler/codec/DefaultHeaders;->validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 511
    invoke-direct {p0, v0, v2, p1, v4}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 506
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v1

    return-object v1
.end method

.method public setAll(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+TK;+TV;*>;)TT;"
        }
    .end annotation

    .line 619
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+TK;+TV;*>;"
    if-eq p1, p0, :cond_1

    .line 620
    invoke-interface {p1}, Lio/netty/handler/codec/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 621
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/DefaultHeaders;->remove(Ljava/lang/Object;)Z

    .line 622
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->addImpl(Lio/netty/handler/codec/Headers;)V

    .line 625
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setBoolean(Ljava/lang/Object;Z)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TT;"
        }
    .end annotation

    .line 595
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromBoolean(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setByte(Ljava/lang/Object;B)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)TT;"
        }
    .end annotation

    .line 600
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromByte(Ljava/lang/Object;B)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setChar(Ljava/lang/Object;C)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)TT;"
        }
    .end annotation

    .line 590
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromChar(Ljava/lang/Object;C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setDouble(Ljava/lang/Object;D)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)TT;"
        }
    .end annotation

    .line 575
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->fromDouble(Ljava/lang/Object;D)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setFloat(Ljava/lang/Object;F)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)TT;"
        }
    .end annotation

    .line 585
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromFloat(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TT;"
        }
    .end annotation

    .line 565
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromInt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setLong(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->fromLong(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "*>;)TT;"
        }
    .end annotation

    .line 525
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 528
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 530
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 532
    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 533
    goto :goto_1

    .line 535
    :cond_0
    invoke-direct {p0, p1, v3}, Lio/netty/handler/codec/DefaultHeaders;->fromObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 536
    .local v4, "converted":Ljava/lang/Object;, "TV;"
    iget-object v5, p0, Lio/netty/handler/codec/DefaultHeaders;->valueValidator:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    invoke-virtual {p0, v5, p1, v4}, Lio/netty/handler/codec/DefaultHeaders;->validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    invoke-direct {p0, v0, v1, p1, v4}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 538
    .end local v3    # "v":Ljava/lang/Object;
    .end local v4    # "converted":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 540
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public setObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 519
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "convertedValue"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 520
    .local v0, "convertedValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v1

    return-object v1
.end method

.method public varargs setObject(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 7
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 545
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 548
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v2

    .line 550
    .local v2, "i":I
    invoke-direct {p0, v0, v2, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 551
    array-length v3, p2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    .line 552
    .local v4, "v":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 553
    goto :goto_1

    .line 555
    :cond_0
    invoke-direct {p0, p1, v4}, Lio/netty/handler/codec/DefaultHeaders;->fromObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 556
    .local v5, "converted":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Lio/netty/handler/codec/DefaultHeaders;->valueValidator:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    invoke-virtual {p0, v6, p1, v5}, Lio/netty/handler/codec/DefaultHeaders;->validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    invoke-direct {p0, v0, v2, p1, v5}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 551
    .end local v4    # "v":Ljava/lang/Object;
    .end local v5    # "converted":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v1

    return-object v1
.end method

.method public setShort(Ljava/lang/Object;S)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)TT;"
        }
    .end annotation

    .line 605
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->fromShort(Ljava/lang/Object;S)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setTimeMillis(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 580
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->fromTimeMillis(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 305
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget v0, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1000
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/HeadersUtils;->toString(Ljava/lang/Class;Ljava/util/Iterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/Object;)V
    .locals 0
    .param p2, "forAdd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;ZTK;)V"
        }
    .end annotation

    .line 1012
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "validator":Lio/netty/handler/codec/DefaultHeaders$NameValidator;, "Lio/netty/handler/codec/DefaultHeaders$NameValidator<TK;>;"
    .local p3, "name":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, p3}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    .line 1013
    return-void
.end method

.method protected validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/DefaultHeaders$ValueValidator<",
            "TV;>;TK;TV;)V"
        }
    .end annotation

    .line 1017
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "validator":Lio/netty/handler/codec/DefaultHeaders$ValueValidator;, "Lio/netty/handler/codec/DefaultHeaders$ValueValidator<TV;>;"
    .local p2, "name":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-interface {p1, p3}, Lio/netty/handler/codec/DefaultHeaders$ValueValidator;->validate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    nop

    .line 1021
    return-void

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validation failed for header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected valueConverter()Lio/netty/handler/codec/ValueConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;"
        }
    .end annotation

    .line 1028
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    return-object v0
.end method

.method public valueIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;-><init>(Lio/netty/handler/codec/DefaultHeaders;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected valueValidator()Lio/netty/handler/codec/DefaultHeaders$ValueValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/DefaultHeaders$ValueValidator<",
            "TV;>;"
        }
    .end annotation

    .line 1036
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueValidator:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    return-object v0
.end method
