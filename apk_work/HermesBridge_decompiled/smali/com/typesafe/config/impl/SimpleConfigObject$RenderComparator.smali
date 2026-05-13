.class final Lcom/typesafe/config/impl/SimpleConfigObject$RenderComparator;
.super Ljava/lang/Object;
.source "SimpleConfigObject.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/SimpleConfigObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/typesafe/config/impl/SimpleConfigObject$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/typesafe/config/impl/SimpleConfigObject$1;

    .line 423
    invoke-direct {p0}, Lcom/typesafe/config/impl/SimpleConfigObject$RenderComparator;-><init>()V

    return-void
.end method

.method private static isAllDigits(Ljava/lang/String;)Z
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 431
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 432
    return v1

    .line 434
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 435
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 437
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 438
    return v1

    .line 434
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 423
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfigObject$RenderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .line 449
    invoke-static {p1}, Lcom/typesafe/config/impl/SimpleConfigObject$RenderComparator;->isAllDigits(Ljava/lang/String;)Z

    move-result v0

    .line 450
    .local v0, "aDigits":Z
    invoke-static {p2}, Lcom/typesafe/config/impl/SimpleConfigObject$RenderComparator;->isAllDigits(Ljava/lang/String;)Z

    move-result v1

    .line 451
    .local v1, "bDigits":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 452
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    return v2

    .line 453
    :cond_0
    if-eqz v0, :cond_1

    .line 454
    const/4 v2, -0x1

    return v2

    .line 455
    :cond_1
    if-eqz v1, :cond_2

    .line 456
    const/4 v2, 0x1

    return v2

    .line 458
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
