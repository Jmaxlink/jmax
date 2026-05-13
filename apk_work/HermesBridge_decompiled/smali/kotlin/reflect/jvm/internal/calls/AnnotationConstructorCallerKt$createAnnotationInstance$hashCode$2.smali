.class final Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AnnotationConstructorCaller.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt;->createAnnotationInstance(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2;->$values:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 8

    .line 124
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2;->$values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;
    const/4 v3, 0x0

    .line 125
    .local v3, "$i$a$-sumOfInt-AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2$1":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 126
    .local v5, "value":Ljava/lang/Object;
    nop

    .line 127
    instance-of v6, v5, [Z

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, [Z

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v6

    goto :goto_1

    .line 128
    :cond_0
    instance-of v6, v5, [C

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, [C

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([C)I

    move-result v6

    goto :goto_1

    .line 129
    :cond_1
    instance-of v6, v5, [B

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, [B

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([B)I

    move-result v6

    goto :goto_1

    .line 130
    :cond_2
    instance-of v6, v5, [S

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, [S

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([S)I

    move-result v6

    goto :goto_1

    .line 131
    :cond_3
    instance-of v6, v5, [I

    if-eqz v6, :cond_4

    move-object v6, v5

    check-cast v6, [I

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([I)I

    move-result v6

    goto :goto_1

    .line 132
    :cond_4
    instance-of v6, v5, [F

    if-eqz v6, :cond_5

    move-object v6, v5

    check-cast v6, [F

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([F)I

    move-result v6

    goto :goto_1

    .line 133
    :cond_5
    instance-of v6, v5, [J

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, [J

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([J)I

    move-result v6

    goto :goto_1

    .line 134
    :cond_6
    instance-of v6, v5, [D

    if-eqz v6, :cond_7

    move-object v6, v5

    check-cast v6, [D

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([D)I

    move-result v6

    goto :goto_1

    .line 135
    :cond_7
    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_8

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v6

    goto :goto_1

    .line 136
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 126
    :goto_1
    nop

    .line 138
    .local v6, "valueHash":I
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    mul-int/lit8 v7, v7, 0x7f

    xor-int v2, v7, v6

    .line 124
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "$i$a$-sumOfInt-AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2$1":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "valueHash":I
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
