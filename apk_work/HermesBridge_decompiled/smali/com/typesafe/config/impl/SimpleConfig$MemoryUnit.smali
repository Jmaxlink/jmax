.class final enum Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;
.super Ljava/lang/Enum;
.source "SimpleConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/SimpleConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MemoryUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum BYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum EXABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum EXBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum GIBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum GIGABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum KIBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum KILOBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum MEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum MEGABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum PEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum PETABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum TEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum TERABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum YOBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum YOTTABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum ZEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field public static final enum ZETTABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

.field private static unitsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final bytes:Ljava/math/BigInteger;

.field final power:I

.field final powerOf:I

.field final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 795
    new-instance v6, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/16 v4, 0x400

    const/4 v5, 0x0

    const-string v1, "BYTES"

    const/4 v2, 0x0

    const-string v3, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->BYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 797
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/16 v11, 0x3e8

    const/4 v12, 0x1

    const-string v8, "KILOBYTES"

    const/4 v9, 0x1

    const-string v10, "kilo"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->KILOBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 798
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/16 v5, 0x3e8

    const/4 v6, 0x2

    const-string v2, "MEGABYTES"

    const/4 v3, 0x2

    const-string v4, "mega"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->MEGABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 799
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/4 v12, 0x3

    const-string v8, "GIGABYTES"

    const/4 v9, 0x3

    const-string v10, "giga"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->GIGABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 800
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/4 v6, 0x4

    const-string v2, "TERABYTES"

    const/4 v3, 0x4

    const-string v4, "tera"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->TERABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 801
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/4 v12, 0x5

    const-string v8, "PETABYTES"

    const/4 v9, 0x5

    const-string v10, "peta"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->PETABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 802
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/4 v6, 0x6

    const-string v2, "EXABYTES"

    const/4 v3, 0x6

    const-string v4, "exa"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->EXABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 803
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/4 v12, 0x7

    const-string v8, "ZETTABYTES"

    const/4 v9, 0x7

    const-string v10, "zetta"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->ZETTABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 804
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/16 v6, 0x8

    const-string v2, "YOTTABYTES"

    const/16 v3, 0x8

    const-string v4, "yotta"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->YOTTABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 806
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/16 v11, 0x400

    const/4 v12, 0x1

    const-string v8, "KIBIBYTES"

    const/16 v9, 0x9

    const-string v10, "kibi"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->KIBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 807
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/16 v5, 0x400

    const/4 v6, 0x2

    const-string v2, "MEBIBYTES"

    const/16 v3, 0xa

    const-string v4, "mebi"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->MEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 808
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/4 v12, 0x3

    const-string v8, "GIBIBYTES"

    const/16 v9, 0xb

    const-string v10, "gibi"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->GIBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 809
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/4 v6, 0x4

    const-string v2, "TEBIBYTES"

    const/16 v3, 0xc

    const-string v4, "tebi"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->TEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 810
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/4 v12, 0x5

    const-string v8, "PEBIBYTES"

    const/16 v9, 0xd

    const-string v10, "pebi"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->PEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 811
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/4 v6, 0x6

    const-string v2, "EXBIBYTES"

    const/16 v3, 0xe

    const-string v4, "exbi"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->EXBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 812
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/4 v12, 0x7

    const-string v8, "ZEBIBYTES"

    const/16 v9, 0xf

    const-string v10, "zebi"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->ZEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 813
    new-instance v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    const/16 v6, 0x8

    const-string v2, "YOBIBYTES"

    const/16 v3, 0x10

    const-string v4, "yobi"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->YOBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 794
    sget-object v7, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->BYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v8, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->KILOBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v9, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->MEGABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v10, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->GIGABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v11, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->TERABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v12, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->PETABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v13, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->EXABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v14, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->ZETTABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v15, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->YOTTABYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v16, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->KIBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v17, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->MEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v18, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->GIBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v19, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->TEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v20, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->PEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v21, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->EXBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v22, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->ZEBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    sget-object v23, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->YOBIBYTES:Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    filled-new-array/range {v7 .. v23}, [Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->$VALUES:[Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    .line 858
    invoke-static {}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->makeUnitsMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->unitsMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "powerOf"    # I
    .param p5, "power"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 820
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 821
    iput-object p3, p0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->prefix:Ljava/lang/String;

    .line 822
    iput p4, p0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->powerOf:I

    .line 823
    iput p5, p0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->power:I

    .line 824
    int-to-long p1, p4

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->bytes:Ljava/math/BigInteger;

    .line 825
    return-void
.end method

.method private static makeUnitsMap()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;",
            ">;"
        }
    .end annotation

    .line 828
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 829
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;>;"
    invoke-static {}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->values()[Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 830
    .local v5, "unit":Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "byte"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->prefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v6, v5, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->prefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "B"

    if-nez v6, :cond_0

    .line 833
    const-string v6, "b"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string v6, ""

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 837
    :cond_0
    iget-object v6, v5, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->prefix:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 838
    .local v6, "first":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 839
    .local v9, "firstUpper":Ljava/lang/String;
    iget v10, v5, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->powerOf:I

    const/16 v11, 0x400

    if-ne v10, v11, :cond_1

    .line 840
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    invoke-interface {v0, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "i"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "iB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 844
    :cond_1
    iget v10, v5, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->powerOf:I

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_3

    .line 845
    iget v10, v5, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->power:I

    if-ne v10, v8, :cond_2

    .line 846
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 848
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    .end local v5    # "unit":Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;
    .end local v6    # "first":Ljava/lang/String;
    .end local v9    # "firstUpper":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 851
    .restart local v5    # "unit":Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;
    .restart local v6    # "first":Ljava/lang/String;
    .restart local v9    # "firstUpper":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "broken MemoryUnit enum"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    .end local v5    # "unit":Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;
    .end local v6    # "first":Ljava/lang/String;
    .end local v9    # "firstUpper":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method static parseUnit(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;
    .locals 1
    .param p0, "unit"    # Ljava/lang/String;

    .line 861
    sget-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->unitsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 794
    const-class v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    return-object v0
.end method

.method public static values()[Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;
    .locals 1

    .line 794
    sget-object v0, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->$VALUES:[Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    invoke-virtual {v0}, [Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    return-object v0
.end method
