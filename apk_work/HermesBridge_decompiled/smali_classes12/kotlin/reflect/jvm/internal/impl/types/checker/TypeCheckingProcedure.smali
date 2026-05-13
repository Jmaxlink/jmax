.class public Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;
.super Ljava/lang/Object;
.source "TypeCheckingProcedure.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .locals 7

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

    const-string v3, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v5, "subtype"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_1
    const-string v5, "supertypeArgumentProjection"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_2
    const-string v5, "subtypeArgumentProjection"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_3
    const-string v5, "typeArgumentVariance"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "typeParameterVariance"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "typeArgument"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "typeParameter"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "type2"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "type1"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "argument"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "parameter"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_c
    const-string v5, "typeCheckingProcedureCallbacks"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_d
    const-string v5, "supertype"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "getInType"

    const-string v5, "getOutType"

    const/4 v6, 0x1

    sparse-switch p0, :sswitch_data_2

    aput-object v3, v2, v6

    goto :goto_3

    :sswitch_2
    aput-object v4, v2, v6

    goto :goto_3

    :sswitch_3
    aput-object v5, v2, v6

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v3, "findCorrespondingSupertype"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_e
    const-string v3, "capture"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_f
    const-string v3, "checkSubtypeForTheSameConstructor"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_10
    const-string v3, "isSubtypeOf"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_11
    const-string v3, "getEffectiveProjectionKind"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_12
    const-string v3, "equalTypes"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_13
    aput-object v4, v2, v1

    goto :goto_4

    :pswitch_14
    aput-object v5, v2, v1

    :goto_4
    :pswitch_15
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sparse-switch p0, :sswitch_data_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :sswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_1
        0xa -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x7 -> :sswitch_3
        0xa -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_13
        :pswitch_13
        :pswitch_15
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x7 -> :sswitch_4
        0xa -> :sswitch_4
    .end sparse-switch
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 30
    return-void
.end method

.method public static findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1
    .param p0, "subtype"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .param p1, "supertype"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->$$$reportNull$$$0(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->$$$reportNull$$$0(I)V

    .line 36
    :cond_1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckerProcedureCallbacksImpl;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckerProcedureCallbacksImpl;-><init>()V

    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedureCallbacks;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    return-object v0
.end method

.method public static findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedureCallbacks;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1
    .param p0, "subtype"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .param p1, "supertype"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .param p2, "typeCheckingProcedureCallbacks"    # Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedureCallbacks;

    if-nez p0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->$$$reportNull$$$0(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->$$$reportNull$$$0(I)V

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->$$$reportNull$$$0(I)V

    .line 43
    :cond_2
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedureCallbacks;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    return-object v0
.end method
