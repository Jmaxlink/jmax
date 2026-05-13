.class public final Lcom/hermesandroid/bridge/executor/ActionExecutor;
.super Ljava/lang/Object;
.source "ActionExecutor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActionExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActionExecutor.kt\ncom/hermesandroid/bridge/executor/ActionExecutor\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,796:1\n314#2,11:797\n1603#3,9:808\n1855#3:817\n1856#3:819\n1612#3:820\n1655#3,8:821\n1045#3:829\n1603#3,9:835\n1855#3:844\n1856#3:846\n1612#3:847\n1603#3,9:848\n1855#3:857\n1856#3:859\n1612#3:860\n1#4:818\n1#4:830\n1#4:845\n1#4:858\n215#5,2:831\n215#5,2:833\n*S KotlinDebug\n*F\n+ 1 ActionExecutor.kt\ncom/hermesandroid/bridge/executor/ActionExecutor\n*L\n226#1:797,11\n277#1:808,9\n277#1:817\n277#1:819\n277#1:820\n283#1:821,8\n283#1:829\n665#1:835,9\n665#1:844\n665#1:846\n665#1:847\n712#1:848,9\n712#1:857\n712#1:859\n712#1:860\n277#1:818\n665#1:845\n712#1:858\n621#1:831,2\n641#1:833,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0018\n\u0002\u0010\u0007\n\u0002\u0008$\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bJ4\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u001a\u0010\u0010\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u0016H\u0002J\u000e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u000bJ\u000e\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u000bJ8\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00142\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0086@\u00a2\u0006\u0002\u0010\"J\u0008\u0010#\u001a\u00020\u0006H\u0002J,\u0010$\u001a\u0004\u0018\u00010\u00162\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00160&2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010(\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u000bH\u0002J&\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000f0&2\u0006\u0010*\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000bH\u0002J9\u0010-\u001a\u00020\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010/\u001a\u00020\u0014\u00a2\u0006\u0002\u00100J\u0018\u00101\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00120&J\u0006\u00102\u001a\u00020\u0008J<\u00103\u001a\u00020\u00082\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0086@\u00a2\u0006\u0002\u00106J\u000e\u00107\u001a\u00020\u00082\u0006\u00108\u001a\u00020\u000bJ\u000e\u00109\u001a\u00020\u00082\u0006\u0010:\u001a\u00020\u000bJ\u000e\u0010;\u001a\u00020\u00082\u0006\u0010<\u001a\u00020\u000bJ2\u0010=\u001a\u00020\u00082\u0006\u00104\u001a\u00020\u00142\u0006\u00105\u001a\u00020\u00142\u0008\u0008\u0002\u0010>\u001a\u00020?2\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0086@\u00a2\u0006\u0002\u0010@J\u000e\u0010A\u001a\u00020\u00082\u0006\u0010B\u001a\u00020\u000bJ\u000e\u0010C\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010DJ\u0006\u0010E\u001a\u00020\u0008J\"\u0010F\u001a\u00020\u00082\u0006\u0010G\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u0086@\u00a2\u0006\u0002\u0010HJ\u0018\u0010I\u001a\u00020\u00082\u0006\u0010J\u001a\u00020\u000b2\u0008\u0008\u0002\u0010/\u001a\u00020\u0014J&\u0010K\u001a\u00020\u00082\u0006\u0010:\u001a\u00020\u000b2\u0016\u0008\u0002\u0010L\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0012J>\u0010M\u001a\u00020\u00082\u0006\u0010:\u001a\u00020\u000b2\n\u0008\u0002\u0010N\u001a\u0004\u0018\u00010\u000b2\u0016\u0008\u0002\u0010L\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00122\n\u0008\u0002\u0010O\u001a\u0004\u0018\u00010\u000bJ\u0016\u0010P\u001a\u00020\u00082\u0006\u0010Q\u001a\u00020\u000b2\u0006\u0010R\u001a\u00020\u000bJ\u0018\u0010S\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010T\u001a\u00020\u0014J\u0006\u0010U\u001a\u00020\u0008J \u0010V\u001a\u00020\u00082\u0006\u0010G\u001a\u00020\u000b2\u0008\u0008\u0002\u0010W\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010HJ\u000e\u0010X\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010DJ2\u0010Y\u001a\u00020\u00082\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u0086@\u00a2\u0006\u0002\u0010ZJ \u0010[\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\\\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0002\u0010]J \u0010^\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010_\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0002\u0010]J0\u0010`\u001a\u00020\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010a\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0002\u0010bJ\u0014\u0010c\u001a\u00020\u0006*\u00020d2\u0006\u0010e\u001a\u00020\u000bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006f"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/executor/ActionExecutor;",
        "",
        "()V",
        "tts",
        "Landroid/speech/tts/TextToSpeech;",
        "ttsReady",
        "",
        "clipboardRead",
        "Lcom/hermesandroid/bridge/model/ActionResult;",
        "clipboardWrite",
        "text",
        "",
        "collectWidgetInfo",
        "",
        "node",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        "widgets",
        "",
        "",
        "depth",
        "",
        "countNodes",
        "Lcom/hermesandroid/bridge/model/ScreenNode;",
        "describeNode",
        "nodeId",
        "diffScreen",
        "previousHash",
        "drag",
        "startX",
        "startY",
        "endX",
        "endY",
        "duration",
        "",
        "(IIIIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ensureTts",
        "findInTree",
        "nodes",
        "",
        "className",
        "findNodeById",
        "findNodeByIdInTree",
        "info",
        "targetId",
        "path",
        "findNodes",
        "clickable",
        "limit",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)Lcom/hermesandroid/bridge/model/ActionResult;",
        "getInstalledApps",
        "location",
        "longPress",
        "x",
        "y",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeCall",
        "number",
        "mediaControl",
        "action",
        "openApp",
        "packageName",
        "pinch",
        "scale",
        "",
        "(IIFJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "pressKey",
        "key",
        "readWidgets",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "screenHash",
        "scroll",
        "direction",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "searchContacts",
        "query",
        "sendBroadcast",
        "extras",
        "sendIntent",
        "dataUri",
        "packageOverride",
        "sendSms",
        "to",
        "body",
        "speak",
        "queue",
        "stopSpeaking",
        "swipe",
        "distance",
        "takeScreenshot",
        "tap",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tapText",
        "exact",
        "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "typeText",
        "clearFirst",
        "waitForElement",
        "timeoutMs",
        "(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "hasSelfPermission",
        "Landroid/content/Context;",
        "permission",
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
.field public static final INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor;

.field private static tts:Landroid/speech/tts/TextToSpeech;

.field private static ttsReady:Z


# direct methods
.method public static synthetic $r8$lambda$ChKR0pwCCE7GXCdhWSwhXpbjwMI(Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->ensureTts$lambda$19(Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/executor/ActionExecutor;

    invoke-direct {v0}, Lcom/hermesandroid/bridge/executor/ActionExecutor;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/executor/ActionExecutor;->INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$findNodeById(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "$this"    # Lcom/hermesandroid/bridge/executor/ActionExecutor;
    .param p1, "nodeId"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->findNodeById(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method private final collectWidgetInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)V
    .locals 12
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "widgets"    # Ljava/util/List;
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .line 723
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 724
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "desc":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v3

    .line 727
    .local v2, "className":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-gt p3, v5, :cond_5

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, "Widget"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v7, v8, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    if-gt p3, v4, :cond_9

    if-nez v0, :cond_6

    if-eqz v1, :cond_9

    .line 728
    :cond_6
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 729
    .local v7, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 730
    nop

    .line 731
    const/4 v8, 0x5

    new-array v8, v8, [Lkotlin/Pair;

    const-string v9, "text"

    invoke-static {v9, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 732
    const-string v9, "contentDescription"

    invoke-static {v9, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v6

    .line 731
    nop

    .line 733
    const-string v6, "className"

    invoke-static {v6, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v8, v4

    .line 731
    nop

    .line 734
    iget v4, v7, Landroid/graphics/Rect;->left:I

    iget v6, v7, Landroid/graphics/Rect;->top:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "bounds"

    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v8, v5

    .line 731
    nop

    .line 735
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    move-object v3, v4

    :cond_8
    :goto_1
    const-string v4, "packageName"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v8, v4

    .line 731
    nop

    .line 730
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    .end local v7    # "r":Landroid/graphics/Rect;
    :cond_9
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_b

    .line 740
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_3

    .line 741
    .local v5, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_a
    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, v5, p2, v6}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->collectWidgetInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)V

    .line 742
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 739
    .end local v5    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 744
    .end local v3    # "i":I
    :cond_b
    return-void
.end method

.method private final countNodes(Lcom/hermesandroid/bridge/model/ScreenNode;)I
    .locals 5
    .param p1, "node"    # Lcom/hermesandroid/bridge/model/ScreenNode;

    .line 660
    invoke-virtual {p1}, Lcom/hermesandroid/bridge/model/ScreenNode;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hermesandroid/bridge/model/ScreenNode;

    .line 830
    nop

    .local v2, "it":Lcom/hermesandroid/bridge/model/ScreenNode;
    const/4 v3, 0x0

    .line 660
    .local v3, "$i$a$-sumOfInt-ActionExecutor$countNodes$1":I
    sget-object v4, Lcom/hermesandroid/bridge/executor/ActionExecutor;->INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor;

    invoke-direct {v4, v2}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->countNodes(Lcom/hermesandroid/bridge/model/ScreenNode;)I

    move-result v2

    .end local v2    # "it":Lcom/hermesandroid/bridge/model/ScreenNode;
    .end local v3    # "$i$a$-sumOfInt-ActionExecutor$countNodes$1":I
    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method private static final diffScreen$collectCurrent(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V
    .locals 4
    .param p0, "currentNodeIds"    # Ljava/util/Set;
    .param p1, "currentTexts"    # Ljava/util/Map;
    .param p2, "ns"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hermesandroid/bridge/model/ScreenNode;",
            ">;)V"
        }
    .end annotation

    .line 406
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hermesandroid/bridge/model/ScreenNode;

    .line 407
    .local v1, "n":Lcom/hermesandroid/bridge/model/ScreenNode;
    invoke-virtual {v1}, Lcom/hermesandroid/bridge/model/ScreenNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {v1}, Lcom/hermesandroid/bridge/model/ScreenNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hermesandroid/bridge/model/ScreenNode;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-virtual {v1}, Lcom/hermesandroid/bridge/model/ScreenNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->diffScreen$collectCurrent(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V

    .end local v1    # "n":Lcom/hermesandroid/bridge/model/ScreenNode;
    goto :goto_0

    .line 411
    :cond_0
    return-void
.end method

.method public static synthetic drag$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;IIIIJLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 363
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    move-wide v7, v0

    goto :goto_0

    :cond_0
    move-wide v7, p5

    :goto_0
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->drag(IIIIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final ensureTts()Z
    .locals 5

    .line 766
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 767
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    sget-object v1, Lcom/hermesandroid/bridge/executor/ActionExecutor;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/hermesandroid/bridge/executor/ActionExecutor;->ttsReady:Z

    if-nez v1, :cond_2

    .line 768
    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 769
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/hermesandroid/bridge/executor/ActionExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v2, Lcom/hermesandroid/bridge/executor/ActionExecutor;->tts:Landroid/speech/tts/TextToSpeech;

    .line 773
    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 775
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_2
    sget-boolean v1, Lcom/hermesandroid/bridge/executor/ActionExecutor;->ttsReady:Z

    return v1
.end method

.method private static final ensureTts$lambda$19(Ljava/util/concurrent/CountDownLatch;I)V
    .locals 1
    .param p0, "$latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "it"    # I

    const-string v0, "$latch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/hermesandroid/bridge/executor/ActionExecutor;->ttsReady:Z

    .line 771
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 772
    return-void
.end method

.method private final findInTree(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ScreenNode;
    .locals 6
    .param p1, "nodes"    # Ljava/util/List;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hermesandroid/bridge/model/ScreenNode;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hermesandroid/bridge/model/ScreenNode;"
        }
    .end annotation

    .line 751
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hermesandroid/bridge/model/ScreenNode;

    .line 752
    .local v1, "node":Lcom/hermesandroid/bridge/model/ScreenNode;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lcom/hermesandroid/bridge/model/ScreenNode;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Ljava/lang/CharSequence;

    move-object v5, p2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-ne v4, v3, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    if-nez v4, :cond_3

    .line 753
    invoke-virtual {v1}, Lcom/hermesandroid/bridge/model/ScreenNode;->getContentDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Ljava/lang/CharSequence;

    move-object v5, p2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    move v4, v2

    goto :goto_4

    :cond_3
    :goto_3
    move v4, v3

    .line 752
    :goto_4
    nop

    .line 754
    .local v4, "textMatch":Z
    if-eqz p3, :cond_4

    invoke-virtual {v1}, Lcom/hermesandroid/bridge/model/ScreenNode;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v2, v3

    .line 755
    .local v2, "classMatch":Z
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    return-object v1

    .line 756
    :cond_6
    invoke-virtual {v1}, Lcom/hermesandroid/bridge/model/ScreenNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->findInTree(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ScreenNode;

    move-result-object v3

    .line 757
    .local v3, "childMatch":Lcom/hermesandroid/bridge/model/ScreenNode;
    if-eqz v3, :cond_7

    return-object v3

    .end local v1    # "node":Lcom/hermesandroid/bridge/model/ScreenNode;
    .end local v2    # "classMatch":Z
    .end local v3    # "childMatch":Lcom/hermesandroid/bridge/model/ScreenNode;
    .end local v4    # "textMatch":Z
    :cond_7
    goto :goto_0

    .line 759
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method private final findNodeById(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 14
    .param p1, "nodeId"    # Ljava/lang/String;

    .line 664
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 665
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v1

    const-string v2, "getWindows(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 835
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 843
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 844
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "element$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 843
    .local v11, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v12, v10

    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    .local v12, "it":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v13, 0x0

    .line 665
    .local v13, "$i$a$-mapNotNull-ActionExecutor$findNodeById$roots$1":I
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12

    .line 843
    .end local v12    # "it":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v13    # "$i$a$-mapNotNull-ActionExecutor$findNodeById$roots$1":I
    if-eqz v12, :cond_1

    .line 845
    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 843
    .local v13, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 844
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_1
    nop

    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 846
    :cond_2
    nop

    .line 847
    .end local v6    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNullTo":I
    check-cast v3, Ljava/util/List;

    .line 835
    nop

    .line 665
    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapNotNull":I
    move-object v1, v3

    .line 666
    .local v1, "roots":Ljava/util/List;
    const/4 v2, 0x0

    .line 667
    .local v2, "found":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v4

    .local v5, "wi":I
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 668
    .local v6, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, p1, v7}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->findNodeByIdInTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 669
    .local v7, "matches":Ljava/util/List;
    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    .line 670
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 671
    add-int/lit8 v3, v5, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .local v4, "r":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .end local v4    # "r":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_2

    .line 672
    :cond_3
    goto :goto_3

    .line 674
    :cond_4
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .end local v7    # "matches":Ljava/util/List;
    goto :goto_1

    .line 676
    .end local v5    # "wi":I
    .end local v6    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_5
    :goto_3
    return-object v2
.end method

.method private final findNodeByIdInTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 683
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 684
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 685
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "?"

    if-nez v1, :cond_0

    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 687
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 688
    .local v2, "results":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_5

    .line 689
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 690
    .local v5, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, p2, v6}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->findNodeByIdInTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 691
    .local v6, "found":Ljava/util/List;
    move-object v8, v6

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    .line 692
    move-object v4, v6

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 693
    goto :goto_2

    .line 695
    :cond_4
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 688
    .end local v5    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "found":Ljava/util/List;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 698
    .end local v3    # "i":I
    :cond_5
    :goto_2
    return-object v2
.end method

.method public static synthetic findNodes$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;IILjava/lang/Object;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 1

    .line 386
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/16 p4, 0x14

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->findNodes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)Lcom/hermesandroid/bridge/model/ActionResult;

    move-result-object p0

    return-object p0
.end method

.method private final hasSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "$this$hasSelfPermission"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .line 793
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 792
    :goto_0
    return v0
.end method

.method public static synthetic longPress$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 331
    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, p3

    :goto_2
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1f4

    move-wide v6, v0

    goto :goto_3

    :cond_3
    move-wide v6, p4

    :goto_3
    move-object v2, p0

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->longPress(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic pinch$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;IIFJLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 420
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/high16 p3, 0x3fc00000    # 1.5f

    :cond_0
    move v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const-wide/16 p4, 0x12c

    :cond_1
    move-wide v4, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->pinch(IIFJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic scroll$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 286
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->scroll(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic searchContacts$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;IILjava/lang/Object;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 0

    .line 566
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x14

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->searchContacts(Ljava/lang/String;I)Lcom/hermesandroid/bridge/model/ActionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sendBroadcast$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 0

    .line 636
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)Lcom/hermesandroid/bridge/model/ActionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sendIntent$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 1

    .line 613
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ActionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic speak$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;IILjava/lang/Object;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 0

    .line 778
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->speak(Ljava/lang/String;I)Lcom/hermesandroid/bridge/model/ActionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic swipe$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-string p2, "medium"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->swipe(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic tap$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 30
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p3, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->tap(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic tapText$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->tapText(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic typeText$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->typeText(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic waitForElement$default(Lcom/hermesandroid/bridge/executor/ActionExecutor;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 200
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 201
    move-object p1, v0

    .line 200
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 202
    move-object p2, v0

    .line 200
    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 203
    const/16 p3, 0x1388

    .line 200
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->waitForElement(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clipboardRead()Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 7

    .line 308
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Accessibility service not running"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 310
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/ClipboardManager;

    .line 311
    .local v1, "cm":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    const-string v3, "Clipboard is empty"

    const-string v4, ""

    const/4 v5, 0x1

    if-nez v2, :cond_1

    .line 312
    new-instance v2, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-direct {v2, v5, v3, v4}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 314
    :cond_1
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-direct {v2, v5, v3, v4}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 315
    .local v2, "clip":Landroid/content/ClipData;
    :cond_2
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 316
    new-instance v6, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-direct {v6, v5, v3, v4}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v6

    .line 318
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move-object v4, v3

    :cond_5
    :goto_0
    move-object v3, v4

    .line 319
    .local v3, "text":Ljava/lang/String;
    new-instance v4, Lcom/hermesandroid/bridge/model/ActionResult;

    const-string v6, "Clipboard read"

    invoke-direct {v4, v5, v6, v3}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v4
.end method

.method public final clipboardWrite(Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Accessibility service not running"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 325
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/ClipboardManager;

    .line 326
    .local v1, "cm":Landroid/content/ClipboardManager;
    const-string v2, "hermes"

    check-cast v2, Ljava/lang/CharSequence;

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 327
    .local v2, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 328
    new-instance v3, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v4, 0x1

    const-string v5, "Copied to clipboard"

    invoke-direct {v3, v4, v5, p1}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final describeNode(Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 14
    .param p1, "nodeId"    # Ljava/lang/String;

    const-string v0, "nodeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    invoke-direct {p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->findNodeById(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 455
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 456
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 457
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 459
    const/16 v3, 0x12

    new-array v3, v3, [Lkotlin/Pair;

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 460
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v5

    :goto_0
    const-string v6, "className"

    invoke-static {v6, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v3, v6

    .line 459
    nop

    .line 461
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v5

    :goto_1
    const-string v7, "packageName"

    invoke-static {v7, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v7, 0x2

    aput-object v0, v3, v7

    .line 459
    nop

    .line 462
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v5

    :goto_2
    const-string v8, "text"

    invoke-static {v8, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v8, 0x3

    aput-object v0, v3, v8

    .line 459
    nop

    .line 463
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v5

    :goto_3
    const-string v9, "contentDescription"

    invoke-static {v9, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v9, 0x4

    aput-object v0, v3, v9

    .line 459
    nop

    .line 464
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v5

    :goto_4
    const-string v10, "hintText"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v10, 0x5

    aput-object v0, v3, v10

    .line 459
    nop

    .line 465
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v10, "left"

    invoke-static {v10, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    iget v10, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "top"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    iget v11, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "right"

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "bottom"

    invoke-static {v13, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    new-array v9, v9, [Lkotlin/Pair;

    aput-object v0, v9, v4

    aput-object v10, v9, v6

    aput-object v11, v9, v7

    aput-object v12, v9, v8

    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "bounds"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, v3, v4

    .line 459
    nop

    .line 466
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "clickable"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, v3, v4

    .line 459
    nop

    .line 467
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "longClickable"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, v3, v4

    .line 459
    nop

    .line 468
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "focusable"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0x9

    aput-object v0, v3, v4

    .line 459
    nop

    .line 469
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "editable"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xa

    aput-object v0, v3, v4

    .line 459
    nop

    .line 470
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "scrollable"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xb

    aput-object v0, v3, v4

    .line 459
    nop

    .line 471
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "checkable"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xc

    aput-object v0, v3, v4

    .line 459
    nop

    .line 472
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_6
    const-string v0, "checked"

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xd

    aput-object v0, v3, v4

    .line 459
    nop

    .line 473
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "enabled"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xe

    aput-object v0, v3, v4

    .line 459
    nop

    .line 474
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "selected"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xf

    aput-object v0, v3, v4

    .line 459
    nop

    .line 475
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "childCount"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0x10

    aput-object v0, v3, v4

    .line 459
    nop

    .line 476
    const-string v0, "viewIdResourceName"

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0x11

    aput-object v0, v3, v4

    .line 459
    nop

    .line 458
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 478
    .local v0, "result":Ljava/util/Map;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 479
    new-instance v3, Lcom/hermesandroid/bridge/model/ActionResult;

    const-string v4, "Node details"

    invoke-direct {v3, v6, v4, v0}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final diffScreen(Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 19
    .param p1, "previousHash"    # Ljava/lang/String;

    move-object/from16 v0, p1

    const-string v1, "previousHash"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    sget-object v1, Lcom/hermesandroid/bridge/executor/ScreenReader;->INSTANCE:Lcom/hermesandroid/bridge/executor/ScreenReader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hermesandroid/bridge/executor/ScreenReader;->readCurrentScreen(Z)Ljava/util/List;

    move-result-object v1

    .line 396
    .local v1, "nodes":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    new-instance v2, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "No screen content"

    const/4 v7, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 399
    :cond_0
    move-object v10, v1

    check-cast v10, Ljava/lang/Iterable;

    const-string v3, "|"

    move-object v11, v3

    check-cast v11, Ljava/lang/CharSequence;

    sget-object v3, Lcom/hermesandroid/bridge/executor/ActionExecutor$diffScreen$currentHash$1;->INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor$diffScreen$currentHash$1;

    move-object/from16 v16, v3

    check-cast v16, Lkotlin/jvm/functions/Function1;

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "currentHash":Ljava/lang/String;
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const-string v6, "hash"

    const-string v7, "changed"

    const/4 v8, 0x1

    if-eqz v4, :cond_1

    .line 401
    new-instance v4, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-static {v6, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    new-array v5, v5, [Lkotlin/Pair;

    aput-object v7, v5, v2

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    const-string v5, "No changes detected"

    invoke-direct {v4, v8, v5, v2}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v4

    .line 403
    :cond_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v4, Ljava/util/Set;

    .line 404
    .local v4, "currentNodeIds":Ljava/util/Set;
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v9, Ljava/util/Map;

    .line 412
    .local v9, "currentTexts":Ljava/util/Map;
    invoke-static {v4, v9, v1}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->diffScreen$collectCurrent(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V

    .line 413
    new-instance v10, Lcom/hermesandroid/bridge/model/ActionResult;

    .line 414
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v7, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 415
    invoke-static {v6, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 414
    nop

    .line 416
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "nodeCount"

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v12, 0x3

    new-array v12, v12, [Lkotlin/Pair;

    aput-object v7, v12, v2

    aput-object v6, v12, v8

    aput-object v11, v12, v5

    .line 414
    nop

    .line 413
    invoke-static {v12}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    const-string v5, "Screen changed"

    invoke-direct {v10, v8, v5, v2}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v10
.end method

.method public final drag(IIIIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "duration"    # J
    .param p7, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->INSTANCE:Lcom/hermesandroid/bridge/power/WakeLockManager;

    new-instance v9, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;

    const/4 v8, 0x0

    move-object v1, v9

    move-wide v2, p5

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/hermesandroid/bridge/executor/ActionExecutor$drag$2;-><init>(JIIIILkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p7

    invoke-virtual {v0, v9, v1}, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeForAction(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    return-object v0
.end method

.method public final findNodes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "clickable"    # Ljava/lang/Boolean;
    .param p4, "limit"    # I

    .line 387
    sget-object v0, Lcom/hermesandroid/bridge/executor/ScreenReader;->INSTANCE:Lcom/hermesandroid/bridge/executor/ScreenReader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hermesandroid/bridge/executor/ScreenReader;->searchNodes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/util/List;

    move-result-object v0

    .line 388
    .local v0, "nodes":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    new-instance v1, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, "No matching nodes found"

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 391
    :cond_0
    new-instance v1, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nodes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nodes"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "count"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lkotlin/Pair;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final getInstalledApps()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 272
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 274
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .local v3, "$this$getInstalledApps_u24lambda_u241":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 275
    .local v4, "$i$a$-apply-ActionExecutor$getInstalledApps$launchIntent$1":I
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    nop

    .line 274
    .end local v3    # "$this$getInstalledApps_u24lambda_u241":Landroid/content/Intent;
    .end local v4    # "$i$a$-apply-ActionExecutor$getInstalledApps$launchIntent$1":I
    nop

    .line 277
    .local v2, "launchIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    const-string v5, "queryIntentActivities(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 808
    .local v5, "$i$f$mapNotNull":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 816
    .local v8, "$i$f$mapNotNullTo":I
    move-object v9, v7

    .local v9, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 817
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "packageName"

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v14, v12

    .local v14, "element$iv$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 816
    .local v15, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v3, v14

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/16 v17, 0x0

    .line 278
    .local v17, "$i$a$-mapNotNull-ActionExecutor$getInstalledApps$1":I
    move-object/from16 v18, v0

    .end local v0    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .local v18, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/16 v19, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    :cond_1
    move-object/from16 v0, v19

    :goto_1
    if-nez v0, :cond_2

    move-object/from16 v0, v19

    const/16 v16, 0x0

    move-object/from16 v19, v2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 280
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v19, v2

    .end local v2    # "launchIntent":Landroid/content/Intent;
    .local v19, "launchIntent":Landroid/content/Intent;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 281
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v20, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v0, "label"

    invoke-static {v0, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v13, 0x2

    new-array v13, v13, [Lkotlin/Pair;

    const/16 v16, 0x0

    aput-object v2, v13, v16

    const/4 v2, 0x1

    aput-object v0, v13, v2

    .line 280
    nop

    .line 279
    invoke-static {v13}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 816
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v17    # "$i$a$-mapNotNull-ActionExecutor$getInstalledApps$1":I
    .end local v20    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    if-eqz v0, :cond_3

    .line 818
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 816
    .local v2, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 817
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_3
    move/from16 v3, v16

    move-object/from16 v0, v18

    move-object/from16 v2, v19

    .end local v12    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 819
    .end local v18    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .end local v19    # "launchIntent":Landroid/content/Intent;
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .local v2, "launchIntent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    .line 820
    .end local v0    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    .end local v9    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEach":I
    .restart local v18    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .restart local v19    # "launchIntent":Landroid/content/Intent;
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapNotNullTo":I
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    .line 808
    nop

    .end local v4    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/lang/Iterable;

    .line 283
    nop

    .local v0, "$this$distinctBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 821
    .local v2, "$i$f$distinctBy":I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 822
    .local v3, "set$iv":Ljava/util/HashSet;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v4, "list$iv":Ljava/util/ArrayList;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 824
    .local v6, "e$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/util/Map;

    .local v7, "it":Ljava/util/Map;
    const/4 v8, 0x0

    .line 283
    .local v8, "$i$a$-distinctBy-ActionExecutor$getInstalledApps$2":I
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 824
    .end local v7    # "it":Ljava/util/Map;
    .end local v8    # "$i$a$-distinctBy-ActionExecutor$getInstalledApps$2":I
    move-object v7, v9

    .line 825
    .local v7, "key$iv":Ljava/lang/Object;
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 826
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 828
    .end local v6    # "e$iv":Ljava/lang/Object;
    .end local v7    # "key$iv":Ljava/lang/Object;
    :cond_6
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .end local v0    # "$this$distinctBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$distinctBy":I
    .end local v3    # "set$iv":Ljava/util/HashSet;
    .end local v4    # "list$iv":Ljava/util/ArrayList;
    check-cast v0, Ljava/lang/Iterable;

    .line 283
    nop

    .local v0, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 829
    .local v2, "$i$f$sortedBy":I
    new-instance v3, Lcom/hermesandroid/bridge/executor/ActionExecutor$getInstalledApps$$inlined$sortedBy$1;

    invoke-direct {v3}, Lcom/hermesandroid/bridge/executor/ActionExecutor$getInstalledApps$$inlined$sortedBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 277
    .end local v0    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    return-object v0
.end method

.method public final location()Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 12

    .line 483
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Accessibility service not running"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 485
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/location/LocationManager;

    .line 486
    .local v1, "lm":Landroid/location/LocationManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    const-string v4, "getProviders(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    .local v3, "providers":Ljava/util/List;
    const/4 v4, 0x0

    .line 488
    .local v4, "best":Landroid/location/Location;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 490
    .local v6, "provider":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 491
    .local v7, "loc":Landroid/location/Location;
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 492
    :cond_3
    move-object v4, v7

    .end local v6    # "provider":Ljava/lang/String;
    .end local v7    # "loc":Landroid/location/Location;
    goto :goto_0

    .line 495
    :cond_4
    if-nez v4, :cond_5

    .line 496
    new-instance v2, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v7, 0x0

    const-string v8, "No location available. Enable GPS/Location."

    const/4 v9, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 498
    :cond_5
    new-instance v5, Lcom/hermesandroid/bridge/model/ActionResult;

    .line 499
    const/4 v6, 0x6

    new-array v6, v6, [Lkotlin/Pair;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v8, "latitude"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 500
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v8, "longitude"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v2

    .line 499
    nop

    .line 501
    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v8, "accuracy"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 499
    nop

    .line 502
    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v8, "altitude"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 499
    nop

    .line 503
    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    const-string v7, "unknown"

    :cond_6
    const-string v8, "provider"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    .line 499
    nop

    .line 504
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "timestamp"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v6, v8

    .line 499
    nop

    .line 498
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    const-string v7, "Location"

    invoke-direct {v5, v2, v7, v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v5
.end method

.method public final longPress(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "x"    # Ljava/lang/Integer;
    .param p2, "y"    # Ljava/lang/Integer;
    .param p3, "nodeId"    # Ljava/lang/String;
    .param p4, "duration"    # J
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 332
    sget-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->INSTANCE:Lcom/hermesandroid/bridge/power/WakeLockManager;

    new-instance v8, Lcom/hermesandroid/bridge/executor/ActionExecutor$longPress$2;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/hermesandroid/bridge/executor/ActionExecutor$longPress$2;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JLkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v8, p6}, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeForAction(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 361
    return-object v0
.end method

.method public final makeCall(Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 11
    .param p1, "number"    # Ljava/lang/String;

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Accessibility service not running"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 531
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-string v2, "android.permission.CALL_PHONE"

    invoke-direct {p0, v1, v2}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->hasSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 532
    .local v1, "hasCallPermission":Z
    new-instance v2, Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string v3, "android.intent.action.CALL"

    goto :goto_0

    :cond_1
    const-string v3, "android.intent.action.DIAL"

    :goto_0
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .local v3, "$this$makeCall_u24lambda_u245":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 533
    .local v4, "$i$a$-apply-ActionExecutor$makeCall$intent$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 534
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 535
    nop

    .line 532
    .end local v3    # "$this$makeCall_u24lambda_u245":Landroid/content/Intent;
    .end local v4    # "$i$a$-apply-ActionExecutor$makeCall$intent$1":I
    nop

    .line 536
    .local v2, "intent":Landroid/content/Intent;
    nop

    .line 537
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->startActivity(Landroid/content/Intent;)V

    .line 538
    new-instance v9, Lcom/hermesandroid/bridge/model/ActionResult;

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opened dialer for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (grant CALL_PHONE permission to auto-dial)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_1

    :goto_2
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 539
    :catch_0
    move-exception v3

    .line 540
    .local v3, "e":Ljava/lang/SecurityException;
    new-instance v10, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v10

    .line 536
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_3
    return-object v9
.end method

.method public final mediaControl(Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 18
    .param p1, "action"    # Ljava/lang/String;

    move-object/from16 v0, p1

    const-string v1, "action"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    sget-object v1, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 546
    new-instance v1, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, "Accessibility service not running"

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 547
    .local v1, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    goto/16 :goto_2

    :sswitch_0
    const-string v2, "pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 549
    :cond_1
    const/16 v2, 0x7f

    goto :goto_1

    .line 547
    :sswitch_1
    const-string v2, "play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 548
    :cond_2
    const/16 v2, 0x7e

    goto :goto_1

    .line 547
    :sswitch_2
    const-string v2, "next"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 551
    :cond_3
    const/16 v2, 0x57

    goto :goto_1

    .line 547
    :sswitch_3
    const-string v2, "toggle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 550
    :cond_4
    const/16 v2, 0x55

    goto :goto_1

    .line 547
    :sswitch_4
    const-string v2, "previous"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 552
    :cond_5
    const/16 v2, 0x58

    .line 547
    :goto_1
    nop

    .line 555
    .local v2, "keyCode":I
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v3

    .local v5, "$this$mediaControl_u24lambda_u246":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 556
    .local v6, "$i$a$-apply-ActionExecutor$mediaControl$downIntent$1":I
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v2}, Landroid/view/KeyEvent;-><init>(II)V

    check-cast v7, Landroid/os/Parcelable;

    const-string v8, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 557
    nop

    .line 555
    .end local v5    # "$this$mediaControl_u24lambda_u246":Landroid/content/Intent;
    .end local v6    # "$i$a$-apply-ActionExecutor$mediaControl$downIntent$1":I
    nop

    .line 558
    .local v3, "downIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .local v4, "$this$mediaControl_u24lambda_u247":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 559
    .local v6, "$i$a$-apply-ActionExecutor$mediaControl$upIntent$1":I
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    invoke-direct {v7, v9, v2}, Landroid/view/KeyEvent;-><init>(II)V

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 560
    nop

    .line 558
    .end local v4    # "$this$mediaControl_u24lambda_u247":Landroid/content/Intent;
    .end local v6    # "$i$a$-apply-ActionExecutor$mediaControl$upIntent$1":I
    nop

    .line 561
    .local v4, "upIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 562
    invoke-virtual {v1, v4, v5}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 563
    new-instance v5, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Media "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    .line 553
    .end local v2    # "keyCode":I
    .end local v3    # "downIntent":Landroid/content/Intent;
    .end local v4    # "upIntent":Landroid/content/Intent;
    :goto_2
    new-instance v2, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown media action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Use play, pause, toggle, next, previous."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x4bec4509 -> :sswitch_4
        -0x33c144ac -> :sswitch_3
        0x338af3 -> :sswitch_2
        0x348b34 -> :sswitch_1
        0x65825f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final openApp(Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Accessibility service not running"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 168
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 169
    new-instance v1, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    :cond_1
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->startActivity(Landroid/content/Intent;)V

    .line 172
    new-instance v2, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public final pinch(IIFJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scale"    # F
    .param p4, "duration"    # J
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->INSTANCE:Lcom/hermesandroid/bridge/power/WakeLockManager;

    new-instance v8, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;

    const/4 v7, 0x0

    move-object v1, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/hermesandroid/bridge/executor/ActionExecutor$pinch$2;-><init>(IIFJLkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v8, p6}, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeForAction(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 451
    return-object v0
.end method

.method public final pressKey(Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 18
    .param p1, "key"    # Ljava/lang/String;

    move-object/from16 v0, p1

    const-string v1, "key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget-object v1, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, "Accessibility service not running"

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 178
    .local v1, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x1c

    const-string v4, "Key \'"

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    goto/16 :goto_3

    :sswitch_0
    const-string v2, "notifications"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v2, 0x4

    goto/16 :goto_1

    .line 178
    :sswitch_1
    const-string v2, "recents"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 178
    :sswitch_2
    const-string v2, "take_screenshot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 187
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_4

    .line 188
    const/16 v2, 0x9

    goto :goto_1

    :cond_4
    move v2, v5

    goto :goto_1

    .line 178
    :sswitch_3
    const-string v2, "power"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 183
    :cond_5
    const/4 v2, 0x6

    goto :goto_1

    .line 178
    :sswitch_4
    const-string v2, "enter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :sswitch_5
    const-string v2, "home"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 180
    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    .line 178
    :sswitch_6
    const-string v2, "back"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    .line 179
    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    .line 178
    :sswitch_7
    const-string v2, "tab"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :sswitch_8
    const-string v2, "lock_screen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    .line 185
    :cond_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_9

    .line 186
    const/16 v2, 0x8

    goto :goto_1

    :cond_9
    move v2, v5

    goto :goto_1

    .line 178
    :sswitch_9
    const-string v2, "quick_settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    .line 184
    :cond_a
    const/4 v2, 0x5

    .line 178
    :goto_1
    nop

    .line 193
    .local v2, "action":I
    if-ne v2, v5, :cond_b

    .line 194
    new-instance v3, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' requires Android 9+ (API 28)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    .line 196
    :cond_b
    invoke-virtual {v1, v2}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->performGlobalAction(I)Z

    move-result v3

    .line 197
    .local v3, "result":Z
    new-instance v4, Lcom/hermesandroid/bridge/model/ActionResult;

    if-eqz v3, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pressed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_c
    const-string v5, "Key press failed"

    :goto_2
    move-object v14, v5

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v12, v4

    move v13, v3

    invoke-direct/range {v12 .. v17}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    .line 178
    .end local v2    # "action":I
    .end local v3    # "result":Z
    :sswitch_a
    const-string v2, "volume_down"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "escape"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "delete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "volume_up"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    .line 190
    :cond_d
    new-instance v2, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not supported via AccessibilityService global actions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 191
    :goto_3
    new-instance v2, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edb0220 -> :sswitch_e
        -0x4f997a55 -> :sswitch_d
        -0x4d237f7f -> :sswitch_c
        -0x36059a58 -> :sswitch_b
        -0x342aa959 -> :sswitch_a
        -0x194fddcb -> :sswitch_9
        -0x16c21e00 -> :sswitch_8
        0x1bf95 -> :sswitch_7
        0x2e04e7 -> :sswitch_6
        0x30f4df -> :sswitch_5
        0x5c306d8 -> :sswitch_4
        0x65e8905 -> :sswitch_3
        0x2e5b5c1e -> :sswitch_2
        0x40828578 -> :sswitch_1
        0x4bd694e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final readWidgets(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;

    iget v1, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;

    invoke-direct {v0, p0, p1}, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;-><init>(Lcom/hermesandroid/bridge/executor/ActionExecutor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 701
    iget v2, p1, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v1, p1, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    .local v1, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    iget-object v2, p1, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/hermesandroid/bridge/executor/ActionExecutor;

    .local v2, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .end local v2    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 702
    .restart local v2    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor;
    sget-object v4, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v4}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v4

    if-nez v4, :cond_1

    .line 703
    new-instance v1, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string v7, "Accessibility service not running"

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 705
    .local v4, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v5

    .local v6, "$this$readWidgets_u24lambda_u2417":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 706
    .local v7, "$i$a$-apply-ActionExecutor$readWidgets$homeIntent$1":I
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const/high16 v8, 0x10000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    nop

    .line 705
    .end local v6    # "$this$readWidgets_u24lambda_u2417":Landroid/content/Intent;
    .end local v7    # "$i$a$-apply-ActionExecutor$readWidgets$homeIntent$1":I
    nop

    .line 709
    .local v5, "homeIntent":Landroid/content/Intent;
    invoke-virtual {v4, v5}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->startActivity(Landroid/content/Intent;)V

    .line 710
    .end local v5    # "homeIntent":Landroid/content/Intent;
    iput-object v2, p1, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;->L$0:Ljava/lang/Object;

    iput-object v4, p1, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;->L$1:Ljava/lang/Object;

    iput v3, p1, Lcom/hermesandroid/bridge/executor/ActionExecutor$readWidgets$1;->label:I

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_2

    .line 701
    return-object v1

    .line 710
    :cond_2
    move-object v1, v4

    .line 712
    .end local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .restart local v1    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :goto_1
    invoke-virtual {v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v4

    .end local v1    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    const-string v1, "getWindows(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v4

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 848
    .local v4, "$i$f$mapNotNull":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v1, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .local v5, "destination$iv$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 856
    .local v6, "$i$f$mapNotNullTo":I
    nop

    .local v1, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 857
    .local v7, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v1    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 856
    .local v9, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v10, v1

    check-cast v10, Landroid/view/accessibility/AccessibilityWindowInfo;

    .local v10, "it":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v11, 0x0

    .line 712
    .local v11, "$i$a$-mapNotNull-ActionExecutor$readWidgets$roots$1":I
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 856
    .end local v10    # "it":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v11    # "$i$a$-mapNotNull-ActionExecutor$readWidgets$roots$1":I
    if-eqz v10, :cond_3

    .line 858
    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 856
    .local v11, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 857
    .end local v1    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_3
    goto :goto_2

    .line 859
    :cond_4
    nop

    .line 860
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$mapNotNullTo":I
    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .line 848
    nop

    .line 712
    .end local v4    # "$i$f$mapNotNull":I
    nop

    .line 713
    .local v1, "roots":Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 714
    .local v4, "widgets":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "roots":Ljava/util/List;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 715
    .local v1, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v2, v1, v4, v6}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->collectWidgetInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)V

    .line 716
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .end local v1    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_3

    .line 719
    :cond_5
    new-instance v1, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " widget elements"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "widgets"

    invoke-static {v7, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "count"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Lkotlin/Pair;

    aput-object v7, v9, v6

    aput-object v8, v9, v3

    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v1, v3, v5, v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final screenHash()Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 18

    .line 650
    sget-object v0, Lcom/hermesandroid/bridge/executor/ScreenReader;->INSTANCE:Lcom/hermesandroid/bridge/executor/ScreenReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/executor/ScreenReader;->readCurrentScreen(Z)Ljava/util/List;

    move-result-object v0

    .line 651
    .local v0, "nodes":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 652
    new-instance v1, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v5, "No screen content"

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 654
    :cond_0
    move-object v9, v0

    check-cast v9, Ljava/lang/Iterable;

    const-string v2, "|"

    move-object v10, v2

    check-cast v10, Ljava/lang/CharSequence;

    sget-object v2, Lcom/hermesandroid/bridge/executor/ActionExecutor$screenHash$hash$1;->INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor$screenHash$hash$1;

    move-object v15, v2

    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/16 v16, 0x1e

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "hash":Ljava/lang/String;
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hermesandroid/bridge/model/ScreenNode;

    .line 830
    nop

    .local v5, "it":Lcom/hermesandroid/bridge/model/ScreenNode;
    const/4 v6, 0x0

    .line 655
    .local v6, "$i$a$-sumOfInt-ActionExecutor$screenHash$count$1":I
    sget-object v7, Lcom/hermesandroid/bridge/executor/ActionExecutor;->INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor;

    invoke-direct {v7, v5}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->countNodes(Lcom/hermesandroid/bridge/model/ScreenNode;)I

    move-result v5

    .end local v5    # "it":Lcom/hermesandroid/bridge/model/ScreenNode;
    .end local v6    # "$i$a$-sumOfInt-ActionExecutor$screenHash$count$1":I
    add-int/2addr v4, v5

    goto :goto_0

    :cond_1
    move v3, v4

    .line 656
    .local v3, "count":I
    new-instance v4, Lcom/hermesandroid/bridge/model/ActionResult;

    const-string v5, "hash"

    invoke-static {v5, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const-string v6, "nodeCount"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Lkotlin/Pair;

    aput-object v5, v7, v1

    const/4 v1, 0x1

    aput-object v6, v7, v1

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "Screen hash"

    invoke-direct {v4, v1, v6, v5}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v4
.end method

.method public final scroll(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "direction"    # Ljava/lang/String;
    .param p2, "nodeId"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->INSTANCE:Lcom/hermesandroid/bridge/power/WakeLockManager;

    new-instance v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$scroll$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lcom/hermesandroid/bridge/executor/ActionExecutor$scroll$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p3}, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeForAction(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 305
    return-object v0
.end method

.method public final searchContacts(Ljava/lang/String;I)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 36
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "limit"    # I

    move-object/from16 v1, p1

    const-string v0, "data1"

    const-string v2, "display_name"

    const-string v3, "_id"

    const-string v4, "query"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    sget-object v4, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v4}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 568
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string v7, "Accessibility service not running"

    const/4 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 569
    .local v4, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    const-string v6, "android.permission.READ_CONTACTS"

    move-object/from16 v7, p0

    invoke-direct {v7, v5, v6}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->hasSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 570
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v9, 0x0

    const-string v10, "READ_CONTACTS permission not granted. Grant it in Settings > Apps > Hermes Bridge > Permissions."

    const/4 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 572
    :cond_1
    nop

    .line 573
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 574
    .local v5, "results":Ljava/util/List;
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v6, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 576
    .local v9, "uri":Landroid/net/Uri;
    const/4 v6, 0x2

    new-array v10, v6, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v3, v10, v14

    .line 577
    const/4 v15, 0x1

    aput-object v2, v10, v15

    .line 576
    nop

    .line 575
    nop

    .line 579
    .local v10, "projection":[Ljava/lang/String;
    invoke-virtual {v4}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "display_name ASC LIMIT "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v13, p2

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 580
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_8

    move-object v11, v8

    check-cast v11, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v12, v11

    check-cast v12, Landroid/database/Cursor;

    .local v12, "it":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 581
    .local v13, "$i$a$-use-ActionExecutor$searchContacts$1":I
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 582
    .local v3, "idIdx":I
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 583
    .local v2, "nameIdx":I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 584
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_2

    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v17, v16

    .line 585
    .local v17, "contactId":Ljava/lang/String;
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_3

    const/4 v6, 0x2

    goto :goto_0

    :cond_3
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v18, v16

    .line 586
    .local v18, "name":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    check-cast v16, Ljava/util/List;

    move-object/from16 v19, v16

    .line 587
    .local v19, "phoneNumbers":Ljava/util/List;
    invoke-virtual {v4}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 588
    sget-object v21, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 589
    new-array v6, v15, [Ljava/lang/String;

    aput-object v0, v6, v14

    .line 590
    const-string v23, "contact_id = ?"

    .line 591
    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v24

    .line 592
    nop

    .line 587
    const/16 v25, 0x0

    move-object/from16 v22, v6

    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 594
    .local v6, "phoneCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    move-object v15, v6

    check-cast v15, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    move-object/from16 v21, v15

    check-cast v21, Landroid/database/Cursor;

    move-object/from16 v22, v21

    .local v22, "pc":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 595
    .local v21, "$i$a$-use-ActionExecutor$searchContacts$1$1":I
    move-object/from16 v14, v22

    .end local v22    # "pc":Landroid/database/Cursor;
    .local v14, "pc":Landroid/database/Cursor;
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v24, v22

    .line 596
    .local v24, "numIdx":I
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 597
    move-object/from16 v22, v0

    move/from16 v0, v24

    .end local v24    # "numIdx":I
    .local v0, "numIdx":I
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_4

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v25, v24

    .line 830
    .local v25, "num":Ljava/lang/String;
    const/16 v24, 0x0

    .line 597
    .local v24, "$i$a$-let-ActionExecutor$searchContacts$1$1$1":I
    move/from16 v26, v2

    move-object/from16 v2, v19

    move/from16 v19, v0

    move-object/from16 v0, v25

    .end local v25    # "num":Ljava/lang/String;
    .local v0, "num":Ljava/lang/String;
    .local v2, "phoneNumbers":Ljava/util/List;
    .local v19, "numIdx":I
    .local v26, "nameIdx":I
    :try_start_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v24, v19

    move-object/from16 v0, v22

    move-object/from16 v19, v2

    move/from16 v2, v26

    .end local v0    # "num":Ljava/lang/String;
    .end local v24    # "$i$a$-let-ActionExecutor$searchContacts$1$1$1":I
    goto :goto_1

    .end local v26    # "nameIdx":I
    .local v0, "numIdx":I
    .local v2, "nameIdx":I
    .local v19, "phoneNumbers":Ljava/util/List;
    :cond_4
    move/from16 v26, v2

    move-object/from16 v2, v19

    move/from16 v19, v0

    .end local v0    # "numIdx":I
    .local v2, "phoneNumbers":Ljava/util/List;
    .local v19, "numIdx":I
    .restart local v26    # "nameIdx":I
    move/from16 v24, v19

    move-object/from16 v0, v22

    move-object/from16 v19, v2

    move/from16 v2, v26

    goto :goto_1

    .line 599
    .end local v26    # "nameIdx":I
    .local v2, "nameIdx":I
    .local v19, "phoneNumbers":Ljava/util/List;
    .local v24, "numIdx":I
    :cond_5
    move-object/from16 v22, v0

    move/from16 v26, v2

    move-object/from16 v2, v19

    move/from16 v19, v24

    .end local v14    # "pc":Landroid/database/Cursor;
    .end local v19    # "phoneNumbers":Ljava/util/List;
    .end local v21    # "$i$a$-use-ActionExecutor$searchContacts$1$1":I
    .end local v24    # "numIdx":I
    .local v2, "phoneNumbers":Ljava/util/List;
    .restart local v26    # "nameIdx":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 594
    const/4 v0, 0x0

    :try_start_4
    invoke-static {v15, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v14, v0

    goto :goto_2

    .end local v26    # "nameIdx":I
    .local v2, "nameIdx":I
    .restart local v19    # "phoneNumbers":Ljava/util/List;
    :catchall_1
    move-exception v0

    move/from16 v26, v2

    move-object/from16 v2, v19

    move-object v14, v0

    .end local v2    # "nameIdx":I
    .end local v3    # "idIdx":I
    .end local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .end local v5    # "results":Ljava/util/List;
    .end local v6    # "phoneCursor":Landroid/database/Cursor;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "projection":[Ljava/lang/String;
    .end local v12    # "it":Landroid/database/Cursor;
    .end local v13    # "$i$a$-use-ActionExecutor$searchContacts$1":I
    .end local v17    # "contactId":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "phoneNumbers":Ljava/util/List;
    .end local p1    # "query":Ljava/lang/String;
    .end local p2    # "limit":I
    :goto_2
    :try_start_5
    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .local v2, "phoneNumbers":Ljava/util/List;
    .restart local v3    # "idIdx":I
    .restart local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .restart local v5    # "results":Ljava/util/List;
    .restart local v6    # "phoneCursor":Landroid/database/Cursor;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "projection":[Ljava/lang/String;
    .restart local v12    # "it":Landroid/database/Cursor;
    .restart local v13    # "$i$a$-use-ActionExecutor$searchContacts$1":I
    .restart local v17    # "contactId":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v26    # "nameIdx":I
    .restart local p1    # "query":Ljava/lang/String;
    .restart local p2    # "limit":I
    :catchall_2
    move-exception v0

    move-object/from16 v16, v0

    :try_start_6
    invoke-static {v15, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .end local v5    # "results":Ljava/util/List;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "projection":[Ljava/lang/String;
    .end local p1    # "query":Ljava/lang/String;
    .end local p2    # "limit":I
    throw v16

    .end local v26    # "nameIdx":I
    .local v2, "nameIdx":I
    .restart local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .restart local v5    # "results":Ljava/util/List;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "projection":[Ljava/lang/String;
    .restart local v19    # "phoneNumbers":Ljava/util/List;
    .restart local p1    # "query":Ljava/lang/String;
    .restart local p2    # "limit":I
    :cond_6
    move-object/from16 v22, v0

    move/from16 v26, v2

    move-object/from16 v2, v19

    .line 600
    .end local v19    # "phoneNumbers":Ljava/util/List;
    .local v2, "phoneNumbers":Ljava/util/List;
    .restart local v26    # "nameIdx":I
    :goto_3
    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    const-string v14, "id"

    move-object/from16 v15, v17

    .end local v17    # "contactId":Ljava/lang/String;
    .local v15, "contactId":Ljava/lang/String;
    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v0, v16

    const-string v14, "name"

    move/from16 v17, v3

    move-object/from16 v3, v18

    .end local v18    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v17, "idIdx":I
    invoke-static {v14, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const/16 v16, 0x1

    aput-object v14, v0, v16

    const-string v14, "phones"

    move-object/from16 v27, v2

    check-cast v27, Ljava/lang/Iterable;

    const-string v16, ", "

    move-object/from16 v28, v16

    check-cast v28, Ljava/lang/CharSequence;

    const/16 v34, 0x3e

    const/16 v35, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v16, v2

    .end local v2    # "phoneNumbers":Ljava/util/List;
    .local v16, "phoneNumbers":Ljava/util/List;
    invoke-static/range {v27 .. v35}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v14, 0x2

    aput-object v2, v0, v14

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v17

    move-object/from16 v0, v22

    move/from16 v2, v26

    const/4 v6, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 602
    .end local v6    # "phoneCursor":Landroid/database/Cursor;
    .end local v15    # "contactId":Ljava/lang/String;
    .end local v16    # "phoneNumbers":Ljava/util/List;
    .end local v17    # "idIdx":I
    .end local v26    # "nameIdx":I
    .local v2, "nameIdx":I
    .local v3, "idIdx":I
    :cond_7
    move/from16 v26, v2

    move/from16 v17, v3

    .end local v2    # "nameIdx":I
    .end local v3    # "idIdx":I
    .end local v12    # "it":Landroid/database/Cursor;
    .end local v13    # "$i$a$-use-ActionExecutor$searchContacts$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 580
    const/4 v0, 0x0

    :try_start_7
    invoke-static {v11, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v0

    .end local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .end local v5    # "results":Ljava/util/List;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "projection":[Ljava/lang/String;
    .end local p1    # "query":Ljava/lang/String;
    .end local p2    # "limit":I
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .restart local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .restart local v5    # "results":Ljava/util/List;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "projection":[Ljava/lang/String;
    .restart local p1    # "query":Ljava/lang/String;
    .restart local p2    # "limit":I
    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .end local p1    # "query":Ljava/lang/String;
    .end local p2    # "limit":I
    throw v3

    .line 603
    .restart local v4    # "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    .restart local p1    # "query":Ljava/lang/String;
    .restart local p2    # "limit":I
    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 604
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No contacts found matching \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    .line 606
    :cond_9
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/Pair;

    const-string v6, "contacts"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v3, v11

    const-string v6, "count"

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const/4 v11, 0x1

    aput-object v6, v3, v11

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v11, v2, v3}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0

    .end local v5    # "results":Ljava/util/List;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "projection":[Ljava/lang/String;
    :goto_5
    goto :goto_6

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v2, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ_CONTACTS permission denied: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v2

    .line 572
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_6
    return-object v0
.end method

.method public final sendBroadcast(Ljava/lang/String;Ljava/util/Map;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hermesandroid/bridge/model/ActionResult;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Accessibility service not running"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 639
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    nop

    .line 640
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_2

    move-object v2, p2

    .local v2, "$this$forEach$iv":Ljava/util/Map;
    const/4 v3, 0x0

    .line 833
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "element$iv":Ljava/util/Map$Entry;
    const/4 v6, 0x0

    .line 641
    .local v6, "$i$a$-forEach-ActionExecutor$sendBroadcast$1":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    nop

    .end local v5    # "element$iv":Ljava/util/Map$Entry;
    .end local v6    # "$i$a$-forEach-ActionExecutor$sendBroadcast$1":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_0

    .line 834
    :cond_1
    nop

    .line 642
    .end local v2    # "$this$forEach$iv":Ljava/util/Map;
    .end local v3    # "$i$f$forEach":I
    :cond_2
    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->sendBroadcast(Landroid/content/Intent;)V

    .line 643
    new-instance v8, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast sent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 644
    :catch_0
    move-exception v1

    .line 645
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v8, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 639
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-object v8
.end method

.method public final sendIntent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "dataUri"    # Ljava/lang/String;
    .param p3, "extras"    # Ljava/util/Map;
    .param p4, "packageOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hermesandroid/bridge/model/ActionResult;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Accessibility service not running"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 616
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .local v2, "$this$sendIntent_u24lambda_u2412":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 617
    .local v3, "$i$a$-apply-ActionExecutor$sendIntent$intent$1":I
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 618
    if-eqz p2, :cond_1

    .line 619
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 621
    :cond_1
    if-eqz p3, :cond_3

    move-object v4, p3

    .local v4, "$this$forEach$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 831
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "element$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 621
    .local v8, "$i$a$-forEach-ActionExecutor$sendIntent$intent$1$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 622
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    nop

    .line 831
    .end local v8    # "$i$a$-forEach-ActionExecutor$sendIntent$intent$1$1":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    nop

    .end local v7    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 832
    :cond_2
    nop

    .line 624
    .end local v4    # "$this$forEach$iv":Ljava/util/Map;
    .end local v5    # "$i$f$forEach":I
    :cond_3
    if-eqz p4, :cond_4

    .line 625
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    :cond_4
    nop

    .line 616
    .end local v2    # "$this$sendIntent_u24lambda_u2412":Landroid/content/Intent;
    .end local v3    # "$i$a$-apply-ActionExecutor$sendIntent$intent$1":I
    nop

    .line 628
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 629
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->startActivity(Landroid/content/Intent;)V

    .line 630
    new-instance v8, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent sent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 631
    :catch_0
    move-exception v2

    .line 632
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v9

    .line 628
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8
.end method

.method public final sendSms(Ljava/lang/String;Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 17
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    move-object/from16 v7, p1

    const-string v0, "to"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    move-object/from16 v8, p2

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Accessibility service not running"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 509
    :cond_0
    move-object v9, v0

    .line 511
    .local v9, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    move-object v0, v9

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    move-object/from16 v10, p0

    invoke-direct {v10, v0, v1}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->hasSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "SEND_SMS permission not granted. Grant it in Settings > Apps > Hermes Bridge > Permissions."

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 514
    :cond_1
    nop

    .line 515
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    .line 516
    const-class v0, Landroid/telephony/SmsManager;

    invoke-virtual {v9, v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsManager;

    move-object v1, v0

    goto :goto_0

    .line 519
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, v0

    .line 515
    :goto_0
    nop

    .line 521
    .local v1, "smsManager":Landroid/telephony/SmsManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 522
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS sent to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "smsManager":Landroid/telephony/SmsManager;
    goto :goto_1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v11, Lcom/hermesandroid/bridge/model/ActionResult;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS permission denied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v11

    .line 514
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-object v0
.end method

.method public final speak(Ljava/lang/String;I)Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "queue"    # I

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    invoke-direct {p0}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->ensureTts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "TTS not available"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 782
    :cond_0
    sget-object v0, Lcom/hermesandroid/bridge/executor/ActionExecutor;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hermes_speak_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 783
    :cond_1
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/16 v1, 0x32

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Speaking: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final stopSpeaking()Lcom/hermesandroid/bridge/model/ActionResult;
    .locals 7

    .line 787
    sget-object v0, Lcom/hermesandroid/bridge/executor/ActionExecutor;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 788
    :cond_0
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x1

    const-string v3, "Stopped speaking"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final swipe(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "direction"    # Ljava/lang/String;
    .param p2, "distance"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->INSTANCE:Lcom/hermesandroid/bridge/power/WakeLockManager;

    new-instance v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lcom/hermesandroid/bridge/executor/ActionExecutor$swipe$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p3}, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeForAction(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method public final takeScreenshot(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 221
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, "Screenshot requires Android 11 (API 30) or higher"

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 223
    :cond_0
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 224
    new-instance v0, Lcom/hermesandroid/bridge/model/ActionResult;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Accessibility service not running"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 226
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_1
    const/4 v1, 0x0

    .line 797
    .local v1, "$i$f$suspendCancellableCoroutine":I
    move-object v2, p1

    .local v2, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 798
    .local v3, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 804
    .local v4, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 805
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/CancellableContinuation;

    .local v5, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v6, 0x0

    .line 227
    .local v6, "$i$a$-suspendCancellableCoroutine-ActionExecutor$takeScreenshot$2":I
    sget-object v7, Lcom/hermesandroid/bridge/executor/ActionExecutor$takeScreenshot$2$executor$1;->INSTANCE:Lcom/hermesandroid/bridge/executor/ActionExecutor$takeScreenshot$2$executor$1;

    check-cast v7, Ljava/util/concurrent/Executor;

    .line 228
    .local v7, "executor":Ljava/util/concurrent/Executor;
    nop

    .line 229
    nop

    .line 230
    nop

    .line 231
    new-instance v8, Lcom/hermesandroid/bridge/executor/ActionExecutor$takeScreenshot$2$1;

    invoke-direct {v8, v5}, Lcom/hermesandroid/bridge/executor/ActionExecutor$takeScreenshot$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v8, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;

    .line 228
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v7, v8}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->takeScreenshot(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    .line 267
    nop

    .line 805
    .end local v5    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v6    # "$i$a$-suspendCancellableCoroutine-ActionExecutor$takeScreenshot$2":I
    .end local v7    # "executor":Ljava/util/concurrent/Executor;
    nop

    .line 806
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 797
    .end local v2    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v4    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 807
    :cond_2
    nop

    .line 226
    .end local v1    # "$i$f$suspendCancellableCoroutine":I
    return-object v2
.end method

.method public final tap(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "x"    # Ljava/lang/Integer;
    .param p2, "y"    # Ljava/lang/Integer;
    .param p3, "nodeId"    # Ljava/lang/String;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->INSTANCE:Lcom/hermesandroid/bridge/power/WakeLockManager;

    new-instance v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p1, p2, v2}, Lcom/hermesandroid/bridge/executor/ActionExecutor$tap$2;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p4}, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeForAction(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method public final tapText(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "exact"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->INSTANCE:Lcom/hermesandroid/bridge/power/WakeLockManager;

    new-instance v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/hermesandroid/bridge/executor/ActionExecutor$tapText$2;-><init>(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p3}, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeForAction(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method public final typeText(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "clearFirst"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/hermesandroid/bridge/power/WakeLockManager;->INSTANCE:Lcom/hermesandroid/bridge/power/WakeLockManager;

    new-instance v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lcom/hermesandroid/bridge/executor/ActionExecutor$typeText$2;-><init>(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, p3}, Lcom/hermesandroid/bridge/power/WakeLockManager;->wakeForAction(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    return-object v0
.end method

.method public final waitForElement(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermesandroid/bridge/model/ActionResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;

    iget v2, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;-><init>(Lcom/hermesandroid/bridge/executor/ActionExecutor;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 200
    iget v4, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->label:I

    packed-switch v4, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide v4, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->J$1:J

    .local v4, "elapsed":J
    iget-wide v6, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->J$0:J

    .local v6, "interval":J
    iget v8, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->I$0:I

    .local v8, "timeoutMs":I
    iget-object v9, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .local v9, "className":Ljava/lang/String;
    iget-object v10, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .local v10, "text":Ljava/lang/String;
    iget-object v11, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/hermesandroid/bridge/executor/ActionExecutor;

    .local v11, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v4    # "elapsed":J
    .end local v6    # "interval":J
    .end local v8    # "timeoutMs":I
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lcom/hermesandroid/bridge/executor/ActionExecutor;
    move-object/from16 v5, p2

    .local v5, "className":Ljava/lang/String;
    move-object/from16 v6, p1

    .local v6, "text":Ljava/lang/String;
    move/from16 v7, p3

    .line 205
    .local v7, "timeoutMs":I
    const-wide/16 v8, 0x1f4

    .line 206
    .local v8, "interval":J
    const-wide/16 v10, 0x0

    move-wide/from16 v18, v10

    move-object v11, v4

    move-object v10, v6

    move-wide/from16 v20, v8

    move-object v9, v5

    move v8, v7

    move-wide/from16 v6, v20

    move-wide/from16 v4, v18

    .line 207
    .end local v5    # "className":Ljava/lang/String;
    .end local v7    # "timeoutMs":I
    .local v4, "elapsed":J
    .local v6, "interval":J
    .local v8, "timeoutMs":I
    .restart local v9    # "className":Ljava/lang/String;
    .restart local v10    # "text":Ljava/lang/String;
    .restart local v11    # "this":Lcom/hermesandroid/bridge/executor/ActionExecutor;
    :goto_1
    int-to-long v12, v8

    cmp-long v12, v4, v12

    if-gez v12, :cond_3

    .line 208
    sget-object v12, Lcom/hermesandroid/bridge/executor/ScreenReader;->INSTANCE:Lcom/hermesandroid/bridge/executor/ScreenReader;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/hermesandroid/bridge/executor/ScreenReader;->readCurrentScreen(Z)Ljava/util/List;

    move-result-object v12

    .line 209
    .local v12, "nodes":Ljava/util/List;
    invoke-direct {v11, v12, v10, v9}, Lcom/hermesandroid/bridge/executor/ActionExecutor;->findInTree(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/hermesandroid/bridge/model/ScreenNode;

    move-result-object v12

    .line 210
    .local v12, "found":Lcom/hermesandroid/bridge/model/ScreenNode;
    const/4 v13, 0x1

    if-eqz v12, :cond_1

    .line 211
    new-instance v3, Lcom/hermesandroid/bridge/model/ActionResult;

    const-string v14, "Element found"

    invoke-direct {v3, v13, v14, v12}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 213
    .end local v12    # "found":Lcom/hermesandroid/bridge/model/ScreenNode;
    :cond_1
    iput-object v11, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->L$2:Ljava/lang/Object;

    iput v8, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->I$0:I

    iput-wide v6, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->J$0:J

    iput-wide v4, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->J$1:J

    iput v13, v0, Lcom/hermesandroid/bridge/executor/ActionExecutor$waitForElement$1;->label:I

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_2

    .line 200
    return-object v3

    .line 214
    :cond_2
    :goto_2
    add-long/2addr v4, v6

    goto :goto_1

    .line 216
    :cond_3
    new-instance v3, Lcom/hermesandroid/bridge/model/ActionResult;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Timeout waiting for element (text="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", class="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lcom/hermesandroid/bridge/model/ActionResult;-><init>(ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
