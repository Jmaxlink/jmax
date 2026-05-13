.class public final Lcom/hermesandroid/bridge/notification/NotificationStore;
.super Ljava/lang/Object;
.source "NotificationStore.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationStore.kt\ncom/hermesandroid/bridge/notification/NotificationStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n766#2:97\n857#2,2:98\n766#2:100\n857#2,2:101\n1#3:103\n*S KotlinDebug\n*F\n+ 1 NotificationStore.kt\ncom/hermesandroid/bridge/notification/NotificationStore\n*L\n36#1:97\n36#1:98,2\n40#1:100\n40#1:101,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000bJ\u0006\u0010\u000f\u001a\u00020\rJ\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004J\u001e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001a\u001a\u00020\u001bJ\u001c\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001d2\u0006\u0010\u000e\u001a\u00020\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/notification/NotificationStore;",
        "",
        "()V",
        "maxCapacity",
        "",
        "getMaxCapacity",
        "()I",
        "setMaxCapacity",
        "(I)V",
        "notifications",
        "Ljava/util/concurrent/ConcurrentLinkedDeque;",
        "Lcom/hermesandroid/bridge/notification/NotificationEntry;",
        "add",
        "",
        "entry",
        "clear",
        "getAll",
        "",
        "limit",
        "getSince",
        "sinceTimestamp",
        "",
        "markRemoved",
        "key",
        "",
        "parseNotification",
        "sbn",
        "Landroid/service/notification/StatusBarNotification;",
        "toMap",
        "",
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
.field public static final INSTANCE:Lcom/hermesandroid/bridge/notification/NotificationStore;

.field private static maxCapacity:I

.field private static final notifications:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/hermesandroid/bridge/notification/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/notification/NotificationStore;

    invoke-direct {v0}, Lcom/hermesandroid/bridge/notification/NotificationStore;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->INSTANCE:Lcom/hermesandroid/bridge/notification/NotificationStore;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->notifications:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 26
    const/16 v0, 0x32

    sput v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->maxCapacity:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getAll$default(Lcom/hermesandroid/bridge/notification/NotificationStore;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 35
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x32

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/notification/NotificationStore;->getAll(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSince$default(Lcom/hermesandroid/bridge/notification/NotificationStore;JIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 39
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/16 p3, 0x32

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/notification/NotificationStore;->getSince(JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Lcom/hermesandroid/bridge/notification/NotificationEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/hermesandroid/bridge/notification/NotificationEntry;

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->notifications:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    sget v1, Lcom/hermesandroid/bridge/notification/NotificationStore;->maxCapacity:I

    if-lt v0, v1, :cond_0

    .line 30
    sget-object v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->notifications:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeLast()Ljava/lang/Object;

    .line 32
    :cond_0
    sget-object v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->notifications:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 44
    sget-object v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->notifications:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 45
    return-void
.end method

.method public final getAll(I)Ljava/util/List;
    .locals 10
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/hermesandroid/bridge/notification/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->notifications:Ljava/util/concurrent/ConcurrentLinkedDeque;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 98
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/hermesandroid/bridge/notification/NotificationEntry;

    .local v7, "it":Lcom/hermesandroid/bridge/notification/NotificationEntry;
    const/4 v8, 0x0

    .line 36
    .local v8, "$i$a$-filter-NotificationStore$getAll$1":I
    invoke-virtual {v7}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getRemoved()Z

    move-result v9

    .line 98
    .end local v7    # "it":Lcom/hermesandroid/bridge/notification/NotificationEntry;
    .end local v8    # "$i$a$-filter-NotificationStore$getAll$1":I
    xor-int/lit8 v7, v9, 0x1

    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 97
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 36
    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxCapacity()I
    .locals 1

    .line 26
    sget v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->maxCapacity:I

    return v0
.end method

.method public final getSince(JI)Ljava/util/List;
    .locals 11
    .param p1, "sinceTimestamp"    # J
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcom/hermesandroid/bridge/notification/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->notifications:Ljava/util/concurrent/ConcurrentLinkedDeque;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 100
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 101
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/hermesandroid/bridge/notification/NotificationEntry;

    .local v7, "it":Lcom/hermesandroid/bridge/notification/NotificationEntry;
    const/4 v8, 0x0

    .line 40
    .local v8, "$i$a$-filter-NotificationStore$getSince$1":I
    invoke-virtual {v7}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getRemoved()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v7}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getTimestamp()J

    move-result-wide v9

    cmp-long v9, v9, p1

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 101
    .end local v7    # "it":Lcom/hermesandroid/bridge/notification/NotificationEntry;
    .end local v8    # "$i$a$-filter-NotificationStore$getSince$1":I
    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 100
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 40
    invoke-static {v2, p3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final markRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/hermesandroid/bridge/notification/NotificationStore;->notifications:Ljava/util/concurrent/ConcurrentLinkedDeque;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/hermesandroid/bridge/notification/NotificationEntry;

    .line 103
    .local v2, "it":Lcom/hermesandroid/bridge/notification/NotificationEntry;
    const/4 v3, 0x0

    .line 48
    .local v3, "$i$a$-find-NotificationStore$markRemoved$1":I
    invoke-virtual {v2}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .end local v2    # "it":Lcom/hermesandroid/bridge/notification/NotificationEntry;
    .end local v3    # "$i$a$-find-NotificationStore$markRemoved$1":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/hermesandroid/bridge/notification/NotificationEntry;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->setRemoved(Z)V

    .line 49
    :goto_1
    return-void
.end method

.method public final parseNotification(Landroid/service/notification/StatusBarNotification;)Lcom/hermesandroid/bridge/notification/NotificationEntry;
    .locals 23
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    const-string v0, "sbn"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 53
    .local v0, "extras":Landroid/os/Bundle;
    :goto_0
    if-nez v0, :cond_1

    return-object v2

    .line 55
    :cond_1
    const-string v3, "android.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 56
    .local v3, "title":Ljava/lang/String;
    :goto_1
    const-string v4, "android.text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    move-object/from16 v20, v4

    .line 57
    .local v20, "text":Ljava/lang/String;
    const-string v4, "android.subText"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_3

    :cond_4
    move-object v9, v2

    .line 58
    .local v9, "subText":Ljava/lang/String;
    :goto_3
    const-string v4, "android.bigText"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v2

    :goto_4
    move-object/from16 v21, v4

    .line 59
    .local v21, "bigText":Ljava/lang/String;
    const-string v4, "android.summaryText"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_5

    :cond_6
    move-object v11, v2

    .line 61
    .local v11, "summaryText":Ljava/lang/String;
    :goto_5
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    move v4, v5

    goto :goto_7

    :cond_8
    :goto_6
    move v4, v6

    :goto_7
    if-eqz v4, :cond_d

    move-object/from16 v4, v20

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_8

    :cond_9
    move v4, v5

    goto :goto_9

    :cond_a
    :goto_8
    move v4, v6

    :goto_9
    if-eqz v4, :cond_d

    move-object/from16 v4, v21

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_b

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    move v5, v6

    :cond_c
    if-eqz v5, :cond_d

    .line 62
    return-object v2

    .line 65
    :cond_d
    new-instance v22, Lcom/hermesandroid/bridge/notification/NotificationEntry;

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v4, "getKey(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v4, "getPackageName(...)"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    nop

    .line 69
    nop

    .line 70
    nop

    .line 71
    nop

    .line 72
    nop

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v2, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    :cond_e
    move-object v12, v2

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v13

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v15

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v16

    .line 65
    const/16 v18, 0x800

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v4, v22

    move-object v7, v3

    move-object/from16 v8, v20

    move-object/from16 v10, v21

    invoke-direct/range {v4 .. v19}, Lcom/hermesandroid/bridge/notification/NotificationEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v22
.end method

.method public final setMaxCapacity(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 26
    sput p1, Lcom/hermesandroid/bridge/notification/NotificationStore;->maxCapacity:I

    return-void
.end method

.method public final toMap(Lcom/hermesandroid/bridge/notification/NotificationEntry;)Ljava/util/Map;
    .locals 13
    .param p1, "entry"    # Lcom/hermesandroid/bridge/notification/NotificationEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermesandroid/bridge/notification/NotificationEntry;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const-string v0, "key"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 83
    const-string v1, "packageName"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 82
    nop

    .line 84
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 82
    nop

    .line 85
    const-string v3, "text"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 82
    nop

    .line 86
    const-string v4, "subText"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getSubText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 82
    nop

    .line 87
    const-string v5, "bigText"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getBigText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 82
    nop

    .line 88
    const-string v6, "summaryText"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getSummaryText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 82
    nop

    .line 89
    const-string v7, "category"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 82
    nop

    .line 90
    invoke-virtual {p1}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "timestamp"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 82
    nop

    .line 91
    invoke-virtual {p1}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->isOngoing()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "isOngoing"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 82
    nop

    .line 92
    invoke-virtual {p1}, Lcom/hermesandroid/bridge/notification/NotificationEntry;->isClearable()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "isClearable"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const/16 v11, 0xb

    new-array v11, v11, [Lkotlin/Pair;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v3, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v6, v11, v0

    const/4 v0, 0x7

    aput-object v7, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    .line 82
    nop

    .line 81
    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
