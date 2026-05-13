.class public final Lio/ktor/http/CookieDateParser;
.super Ljava/lang/Object;
.source "CookieUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCookieUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CookieUtils.kt\nio/ktor/http/CookieDateParser\n+ 2 CookieUtils.kt\nio/ktor/http/StringLexer\n*L\n1#1,349:1\n56#2,3:350\n*S KotlinDebug\n*F\n+ 1 CookieUtils.kt\nio/ktor/http/CookieDateParser\n*L\n294#1:350,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J-\u0010\u0003\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u0001H\u0005H\u0002\u00a2\u0006\u0002\u0010\nJ&\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000fH\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/ktor/http/CookieDateParser;",
        "",
        "()V",
        "checkFieldNotNull",
        "",
        "T",
        "source",
        "",
        "name",
        "field",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V",
        "checkRequirement",
        "requirement",
        "",
        "msg",
        "Lkotlin/Function0;",
        "parse",
        "Lio/ktor/util/date/GMTDate;",
        "ktor-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkFieldNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 272
    if-eqz p3, :cond_0

    .line 275
    return-void

    .line 273
    :cond_0
    new-instance v0, Lio/ktor/http/InvalidCookieDateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/ktor/http/InvalidCookieDateException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private final checkRequirement(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "requirement"    # Z
    .param p3, "msg"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 278
    if-eqz p2, :cond_0

    .line 281
    return-void

    .line 279
    :cond_0
    new-instance v0, Lio/ktor/http/InvalidCookieDateException;

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lio/ktor/http/InvalidCookieDateException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;
    .locals 8
    .param p1, "source"    # Ljava/lang/String;

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    new-instance v0, Lio/ktor/http/StringLexer;

    invoke-direct {v0, p1}, Lio/ktor/http/StringLexer;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "lexer":Lio/ktor/http/StringLexer;
    new-instance v1, Lio/ktor/http/CookieDateBuilder;

    invoke-direct {v1}, Lio/ktor/http/CookieDateBuilder;-><init>()V

    .line 290
    .local v1, "builder":Lio/ktor/http/CookieDateBuilder;
    sget-object v2, Lio/ktor/http/CookieDateParser$parse$1;->INSTANCE:Lio/ktor/http/CookieDateParser$parse$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2}, Lio/ktor/http/StringLexer;->acceptWhile(Lkotlin/jvm/functions/Function1;)Z

    .line 292
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lio/ktor/http/StringLexer;->getHasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    sget-object v2, Lio/ktor/http/CookieDateParser$parse$2;->INSTANCE:Lio/ktor/http/CookieDateParser$parse$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2}, Lio/ktor/http/StringLexer;->test(Lkotlin/jvm/functions/Function1;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    move-object v2, v0

    .local v2, "this_$iv":Lio/ktor/http/StringLexer;
    const/4 v3, 0x0

    .line 350
    .local v3, "$i$f$capture":I
    invoke-virtual {v2}, Lio/ktor/http/StringLexer;->getIndex()I

    move-result v4

    .line 351
    .local v4, "start$iv":I
    move-object v5, v2

    .local v5, "$this$parse_u24lambda_u240":Lio/ktor/http/StringLexer;
    const/4 v6, 0x0

    .line 294
    .local v6, "$i$a$-capture-CookieDateParser$parse$token$1":I
    sget-object v7, Lio/ktor/http/CookieDateParser$parse$token$1$1;->INSTANCE:Lio/ktor/http/CookieDateParser$parse$token$1$1;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, v7}, Lio/ktor/http/StringLexer;->acceptWhile(Lkotlin/jvm/functions/Function1;)Z

    .line 351
    .end local v5    # "$this$parse_u24lambda_u240":Lio/ktor/http/StringLexer;
    .end local v6    # "$i$a$-capture-CookieDateParser$parse$token$1":I
    nop

    .line 352
    invoke-virtual {v2}, Lio/ktor/http/StringLexer;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lio/ktor/http/StringLexer;->getIndex()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .end local v2    # "this_$iv":Lio/ktor/http/StringLexer;
    .end local v3    # "$i$f$capture":I
    .end local v4    # "start$iv":I
    move-object v2, v5

    .line 296
    .local v2, "token":Ljava/lang/String;
    invoke-static {v1, v2}, Lio/ktor/http/CookieUtilsKt;->handleToken(Lio/ktor/http/CookieDateBuilder;Ljava/lang/String;)V

    .line 298
    sget-object v3, Lio/ktor/http/CookieDateParser$parse$3;->INSTANCE:Lio/ktor/http/CookieDateParser$parse$3;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v3}, Lio/ktor/http/StringLexer;->acceptWhile(Lkotlin/jvm/functions/Function1;)Z

    goto :goto_0

    .line 308
    .end local v2    # "token":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getYear()Ljava/lang/Integer;

    move-result-object v2

    .line 309
    new-instance v3, Lkotlin/ranges/IntRange;

    const/16 v4, 0x46

    const/16 v5, 0x63

    invoke-direct {v3, v4, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getYear()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/ktor/http/CookieDateBuilder;->setYear(Ljava/lang/Integer;)V

    goto :goto_3

    .line 310
    :cond_3
    new-instance v3, Lkotlin/ranges/IntRange;

    const/16 v6, 0x45

    invoke-direct {v3, v5, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v5

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getYear()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit16 v2, v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/ktor/http/CookieDateBuilder;->setYear(Ljava/lang/Integer;)V

    .line 313
    :cond_5
    :goto_3
    const-string v2, "day-of-month"

    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getDayOfMonth()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lio/ktor/http/CookieDateParser;->checkFieldNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    const-string v2, "month"

    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getMonth()Lio/ktor/util/date/Month;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lio/ktor/http/CookieDateParser;->checkFieldNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    const-string v2, "year"

    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getYear()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lio/ktor/http/CookieDateParser;->checkFieldNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getHours()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "time"

    invoke-direct {p0, p1, v3, v2}, Lio/ktor/http/CookieDateParser;->checkFieldNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getMinutes()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v3, v2}, Lio/ktor/http/CookieDateParser;->checkFieldNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v3, v2}, Lio/ktor/http/CookieDateParser;->checkFieldNotNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    new-instance v2, Lkotlin/ranges/IntRange;

    const/16 v3, 0x1f

    invoke-direct {v2, v4, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getDayOfMonth()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v5

    :goto_4
    sget-object v3, Lio/ktor/http/CookieDateParser$parse$4;->INSTANCE:Lio/ktor/http/CookieDateParser$parse$4;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v2, v3}, Lio/ktor/http/CookieDateParser;->checkRequirement(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    .line 321
    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getYear()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x641

    if-lt v2, v3, :cond_7

    move v2, v4

    goto :goto_5

    :cond_7
    move v2, v5

    :goto_5
    sget-object v3, Lio/ktor/http/CookieDateParser$parse$5;->INSTANCE:Lio/ktor/http/CookieDateParser$parse$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v2, v3}, Lio/ktor/http/CookieDateParser;->checkRequirement(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    .line 322
    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getHours()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x17

    if-gt v2, v3, :cond_8

    move v2, v4

    goto :goto_6

    :cond_8
    move v2, v5

    :goto_6
    sget-object v3, Lio/ktor/http/CookieDateParser$parse$6;->INSTANCE:Lio/ktor/http/CookieDateParser$parse$6;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v2, v3}, Lio/ktor/http/CookieDateParser;->checkRequirement(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    .line 323
    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getMinutes()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3b

    if-gt v2, v3, :cond_9

    move v2, v4

    goto :goto_7

    :cond_9
    move v2, v5

    :goto_7
    sget-object v6, Lio/ktor/http/CookieDateParser$parse$7;->INSTANCE:Lio/ktor/http/CookieDateParser$parse$7;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v2, v6}, Lio/ktor/http/CookieDateParser;->checkRequirement(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    .line 324
    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->getSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v3, :cond_a

    goto :goto_8

    :cond_a
    move v4, v5

    :goto_8
    sget-object v2, Lio/ktor/http/CookieDateParser$parse$8;->INSTANCE:Lio/ktor/http/CookieDateParser$parse$8;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v4, v2}, Lio/ktor/http/CookieDateParser;->checkRequirement(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    .line 326
    invoke-virtual {v1}, Lio/ktor/http/CookieDateBuilder;->build()Lio/ktor/util/date/GMTDate;

    move-result-object v2

    return-object v2
.end method
