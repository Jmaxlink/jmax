.class public final Lcom/hermesandroid/bridge/event/EventStore;
.super Ljava/lang/Object;
.source "EventStore.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventStore.kt\ncom/hermesandroid/bridge/event/EventStore\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1#2:89\n766#3:90\n857#3,2:91\n*S KotlinDebug\n*F\n+ 1 EventStore.kt\ncom/hermesandroid/bridge/event/EventStore\n*L\n64#1:90\n64#1:91,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0013J\u0016\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0007J\u001e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0007J\u000e\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\rJ\u001c\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020!\u0012\u0006\u0012\u0004\u0018\u00010\u00010 2\u0006\u0010\u0014\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\""
    }
    d2 = {
        "Lcom/hermesandroid/bridge/event/EventStore;",
        "",
        "()V",
        "events",
        "Ljava/util/concurrent/ConcurrentLinkedDeque;",
        "Lcom/hermesandroid/bridge/event/AccessibilityEventData;",
        "maxCapacity",
        "",
        "getMaxCapacity",
        "()I",
        "setMaxCapacity",
        "(I)V",
        "streamingEnabled",
        "",
        "getStreamingEnabled",
        "()Z",
        "setStreamingEnabled",
        "(Z)V",
        "add",
        "",
        "event",
        "Landroid/view/accessibility/AccessibilityEvent;",
        "clear",
        "getAll",
        "",
        "limit",
        "getSince",
        "sinceTimestamp",
        "",
        "setStreaming",
        "enabled",
        "toMap",
        "",
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
.field public static final INSTANCE:Lcom/hermesandroid/bridge/event/EventStore;

.field private static final events:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/hermesandroid/bridge/event/AccessibilityEventData;",
            ">;"
        }
    .end annotation
.end field

.field private static maxCapacity:I

.field private static streamingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/event/EventStore;

    invoke-direct {v0}, Lcom/hermesandroid/bridge/event/EventStore;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/event/EventStore;->INSTANCE:Lcom/hermesandroid/bridge/event/EventStore;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/event/EventStore;->events:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 18
    const/16 v0, 0xc8

    sput v0, Lcom/hermesandroid/bridge/event/EventStore;->maxCapacity:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getAll$default(Lcom/hermesandroid/bridge/event/EventStore;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 59
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x32

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hermesandroid/bridge/event/EventStore;->getAll(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSince$default(Lcom/hermesandroid/bridge/event/EventStore;JIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 63
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/16 p3, 0x32

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/event/EventStore;->getSince(JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    const-string v0, "_"

    const-string v1, "event"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/hermesandroid/bridge/event/EventStore;->events:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v1

    sget v3, Lcom/hermesandroid/bridge/event/EventStore;->maxCapacity:I

    if-lt v1, v3, :cond_0

    .line 23
    sget-object v1, Lcom/hermesandroid/bridge/event/EventStore;->events:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeLast()Ljava/lang/Object;

    .line 26
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTHER_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    .line 34
    :sswitch_0
    const-string v1, "VIEW_TEXT_SELECTION_CHANGED"

    move-object v4, v1

    goto :goto_0

    .line 32
    :sswitch_1
    const-string v1, "VIEW_SCROLLED"

    move-object v4, v1

    goto :goto_0

    .line 31
    :sswitch_2
    const-string v1, "WINDOW_CONTENT_CHANGED"

    move-object v4, v1

    goto :goto_0

    .line 35
    :sswitch_3
    const-string v1, "NOTIFICATION_STATE_CHANGED"

    move-object v4, v1

    goto :goto_0

    .line 30
    :sswitch_4
    const-string v1, "WINDOW_STATE_CHANGED"

    move-object v4, v1

    goto :goto_0

    .line 29
    :sswitch_5
    const-string v1, "VIEW_TEXT_CHANGED"

    move-object v4, v1

    goto :goto_0

    .line 28
    :sswitch_6
    const-string v1, "VIEW_FOCUSED"

    move-object v4, v1

    goto :goto_0

    .line 33
    :sswitch_7
    const-string v1, "VIEW_SELECTED"

    move-object v4, v1

    goto :goto_0

    .line 36
    :sswitch_8
    const-string v1, "VIEW_LONG_CLICKED"

    move-object v4, v1

    goto :goto_0

    .line 27
    :sswitch_9
    const-string v1, "VIEW_CLICKED"

    move-object v4, v1

    .line 26
    :goto_0
    nop

    .line 40
    .local v4, "eventTypeStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    const-string v1, ", "

    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v12, 0x3e

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, ""

    .line 42
    .local v1, "text":Ljava/lang/String;
    :cond_2
    sget-object v12, Lcom/hermesandroid/bridge/event/EventStore;->events:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 43
    nop

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    :cond_3
    move-object v6, v5

    .line 45
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_2

    :cond_4
    move-object v7, v5

    .line 46
    :goto_2
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 89
    const/4 v3, 0x0

    .line 46
    .local v3, "$i$a$-ifBlank-EventStore$add$1":I
    move-object v3, v5

    .end local v3    # "$i$a$-ifBlank-EventStore$add$1":I
    :cond_5
    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_3

    :cond_6
    move-object v9, v5

    .line 48
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    .local v3, "src":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v5, 0x0

    .line 49
    .local v5, "$i$a$-let-EventStore$add$2":I
    nop

    .line 50
    :try_start_0
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 51
    .local v10, "r":Landroid/graphics/Rect;
    invoke-virtual {v3, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 52
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v13, "?"

    if-nez v11, :cond_7

    :try_start_1
    move-object v11, v13

    check-cast v11, Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 53
    .end local v10    # "r":Landroid/graphics/Rect;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v1

    move/from16 v17, v5

    goto :goto_6

    .line 52
    .restart local v10    # "r":Landroid/graphics/Rect;
    :cond_7
    :try_start_2
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v14, :cond_8

    :try_start_3
    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :cond_8
    :try_start_4
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_5
    iget v13, v10, Landroid/graphics/Rect;->left:I

    iget v15, v10, Landroid/graphics/Rect;->top:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v16, v1

    .end local v1    # "text":Ljava/lang/String;
    .local v16, "text":Ljava/lang/String;
    :try_start_5
    iget v1, v10, Landroid/graphics/Rect;->right:I

    iget v2, v10, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move/from16 v17, v5

    .end local v5    # "$i$a$-let-EventStore$add$2":I
    .local v17, "$i$a$-let-EventStore$add$2":I
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 53
    .end local v10    # "r":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 49
    nop

    .line 48
    .end local v3    # "src":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v17    # "$i$a$-let-EventStore$add$2":I
    goto :goto_7

    .line 53
    .restart local v3    # "src":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v17    # "$i$a$-let-EventStore$add$2":I
    :catchall_1
    move-exception v0

    goto :goto_6

    .end local v17    # "$i$a$-let-EventStore$add$2":I
    .restart local v5    # "$i$a$-let-EventStore$add$2":I
    :catchall_2
    move-exception v0

    move/from16 v17, v5

    .end local v5    # "$i$a$-let-EventStore$add$2":I
    .restart local v17    # "$i$a$-let-EventStore$add$2":I
    goto :goto_6

    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "$i$a$-let-EventStore$add$2":I
    .restart local v1    # "text":Ljava/lang/String;
    .restart local v5    # "$i$a$-let-EventStore$add$2":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v1

    move/from16 v17, v5

    .end local v1    # "text":Ljava/lang/String;
    .end local v5    # "$i$a$-let-EventStore$add$2":I
    .restart local v16    # "text":Ljava/lang/String;
    .restart local v17    # "$i$a$-let-EventStore$add$2":I
    :goto_6
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    throw v0

    .line 48
    .end local v3    # "src":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "$i$a$-let-EventStore$add$2":I
    .restart local v1    # "text":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v1

    .end local v1    # "text":Ljava/lang/String;
    .restart local v16    # "text":Ljava/lang/String;
    move-object v0, v5

    .line 55
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v10

    .line 42
    new-instance v1, Lcom/hermesandroid/bridge/event/AccessibilityEventData;

    move-object v3, v1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v0

    invoke-direct/range {v3 .. v11}, Lcom/hermesandroid/bridge/event/AccessibilityEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v12, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    .line 57
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x4 -> :sswitch_7
        0x8 -> :sswitch_6
        0x10 -> :sswitch_5
        0x20 -> :sswitch_4
        0x40 -> :sswitch_3
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final clear()V
    .locals 1

    .line 68
    sget-object v0, Lcom/hermesandroid/bridge/event/EventStore;->events:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 69
    return-void
.end method

.method public final getAll(I)Ljava/util/List;
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/hermesandroid/bridge/event/AccessibilityEventData;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/hermesandroid/bridge/event/EventStore;->events:Ljava/util/concurrent/ConcurrentLinkedDeque;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxCapacity()I
    .locals 1

    .line 18
    sget v0, Lcom/hermesandroid/bridge/event/EventStore;->maxCapacity:I

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
            "Lcom/hermesandroid/bridge/event/AccessibilityEventData;",
            ">;"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/hermesandroid/bridge/event/EventStore;->events:Ljava/util/concurrent/ConcurrentLinkedDeque;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 90
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 91
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

    check-cast v7, Lcom/hermesandroid/bridge/event/AccessibilityEventData;

    .local v7, "it":Lcom/hermesandroid/bridge/event/AccessibilityEventData;
    const/4 v8, 0x0

    .line 64
    .local v8, "$i$a$-filter-EventStore$getSince$1":I
    invoke-virtual {v7}, Lcom/hermesandroid/bridge/event/AccessibilityEventData;->getTimestamp()J

    move-result-wide v9

    cmp-long v9, v9, p1

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 91
    .end local v7    # "it":Lcom/hermesandroid/bridge/event/AccessibilityEventData;
    .end local v8    # "$i$a$-filter-EventStore$getSince$1":I
    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 90
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 64
    invoke-static {v2, p3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getStreamingEnabled()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/hermesandroid/bridge/event/EventStore;->streamingEnabled:Z

    return v0
.end method

.method public final setMaxCapacity(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 18
    sput p1, Lcom/hermesandroid/bridge/event/EventStore;->maxCapacity:I

    return-void
.end method

.method public final setStreaming(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 72
    sput-boolean p1, Lcom/hermesandroid/bridge/event/EventStore;->streamingEnabled:Z

    .line 73
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/hermesandroid/bridge/event/EventStore;->clear()V

    .line 74
    :cond_0
    return-void
.end method

.method public final setStreamingEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 19
    sput-boolean p1, Lcom/hermesandroid/bridge/event/EventStore;->streamingEnabled:Z

    return-void
.end method

.method public final toMap(Lcom/hermesandroid/bridge/event/AccessibilityEventData;)Ljava/util/Map;
    .locals 9
    .param p1, "event"    # Lcom/hermesandroid/bridge/event/AccessibilityEventData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermesandroid/bridge/event/AccessibilityEventData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const-string v0, "eventType"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/event/AccessibilityEventData;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 79
    const-string v1, "packageName"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/event/AccessibilityEventData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 78
    nop

    .line 80
    const-string v2, "className"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/event/AccessibilityEventData;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 78
    nop

    .line 81
    const-string v3, "text"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/event/AccessibilityEventData;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 78
    nop

    .line 82
    const-string v4, "contentDescription"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/event/AccessibilityEventData;->getContentDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 78
    nop

    .line 83
    const-string v5, "sourceNodeId"

    invoke-virtual {p1}, Lcom/hermesandroid/bridge/event/AccessibilityEventData;->getSourceNodeId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 78
    nop

    .line 84
    invoke-virtual {p1}, Lcom/hermesandroid/bridge/event/AccessibilityEventData;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "timestamp"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Lkotlin/Pair;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    .line 78
    nop

    .line 77
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
