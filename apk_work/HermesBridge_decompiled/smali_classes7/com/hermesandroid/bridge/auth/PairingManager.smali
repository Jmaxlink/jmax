.class public final Lcom/hermesandroid/bridge/auth/PairingManager;
.super Ljava/lang/Object;
.source "PairingManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPairingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PairingManager.kt\ncom/hermesandroid/bridge/auth/PairingManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1#2:55\n1549#3:56\n1620#3,3:57\n*S KotlinDebug\n*F\n+ 1 PairingManager.kt\ncom/hermesandroid/bridge/auth/PairingManager\n*L\n38#1:56\n38#1:57,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/auth/PairingManager;",
        "",
        "()V",
        "CODE_LENGTH",
        "",
        "KEY_PAIRING_CODE",
        "",
        "PREFS_NAME",
        "cachedCode",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "getCode",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "regenerateCode",
        "validateToken",
        "",
        "authHeader",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CODE_LENGTH:I = 0x6

.field public static final INSTANCE:Lcom/hermesandroid/bridge/auth/PairingManager;

.field private static final KEY_PAIRING_CODE:Ljava/lang/String; = "pairing_code"

.field private static final PREFS_NAME:Ljava/lang/String; = "hermes_bridge_prefs"

.field private static cachedCode:Ljava/lang/String;

.field private static prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/auth/PairingManager;

    invoke-direct {v0}, Lcom/hermesandroid/bridge/auth/PairingManager;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/auth/PairingManager;->INSTANCE:Lcom/hermesandroid/bridge/auth/PairingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 3

    .line 30
    sget-object v0, Lcom/hermesandroid/bridge/auth/PairingManager;->cachedCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 55
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 30
    .local v1, "$i$a$-let-PairingManager$getCode$1":I
    return-object v0

    .line 31
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-PairingManager$getCode$1":I
    :cond_0
    sget-object v0, Lcom/hermesandroid/bridge/auth/PairingManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_2

    const-string v2, "pairing_code"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    move-object v0, v1

    .line 32
    .local v0, "code":Ljava/lang/String;
    sput-object v0, Lcom/hermesandroid/bridge/auth/PairingManager;->cachedCode:Ljava/lang/String;

    .line 33
    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const-string v0, "hermes_bridge_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/hermesandroid/bridge/auth/PairingManager;->prefs:Landroid/content/SharedPreferences;

    .line 24
    invoke-virtual {p0}, Lcom/hermesandroid/bridge/auth/PairingManager;->getCode()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/hermesandroid/bridge/auth/PairingManager;->regenerateCode()Ljava/lang/String;

    .line 27
    :cond_0
    return-void
.end method

.method public final regenerateCode()Ljava/lang/String;
    .locals 13

    .line 37
    const-string v0, "ABCDEFGHJKLMNPQRSTUVWXYZ23456789"

    .line 38
    .local v0, "chars":Ljava/lang/String;
    new-instance v1, Lkotlin/ranges/IntRange;

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 56
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 57
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Lkotlin/collections/IntIterator;

    invoke-virtual {v7}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v7

    .line 58
    .local v7, "item$iv$iv":I
    move v8, v7

    .local v8, "it":I
    const/4 v9, 0x0

    .line 38
    .local v9, "$i$a$-map-PairingManager$regenerateCode$code$1":I
    move-object v10, v0

    check-cast v10, Ljava/lang/CharSequence;

    sget-object v11, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v11, Lkotlin/random/Random;

    invoke-static {v10, v11}, Lkotlin/text/StringsKt;->random(Ljava/lang/CharSequence;Lkotlin/random/Random;)C

    move-result v10

    .end local v8    # "it":I
    .end local v9    # "$i$a$-map-PairingManager$regenerateCode$code$1":I
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    .line 58
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v7    # "item$iv$iv":I
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 56
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    .line 38
    const-string v1, ""

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "code":Ljava/lang/String;
    sget-object v2, Lcom/hermesandroid/bridge/auth/PairingManager;->prefs:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "pairing_code"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    :cond_1
    sput-object v1, Lcom/hermesandroid/bridge/auth/PairingManager;->cachedCode:Ljava/lang/String;

    .line 41
    return-object v1
.end method

.method public final validateToken(Ljava/lang/String;)Z
    .locals 2
    .param p1, "authHeader"    # Ljava/lang/String;

    .line 49
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    const-string v0, "Bearer "

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/hermesandroid/bridge/auth/PairingManager;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
