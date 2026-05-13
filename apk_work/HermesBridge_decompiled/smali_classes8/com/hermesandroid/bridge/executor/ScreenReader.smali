.class public final Lcom/hermesandroid/bridge/executor/ScreenReader;
.super Ljava/lang/Object;
.source "ScreenReader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenReader.kt\ncom/hermesandroid/bridge/executor/ScreenReader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1603#2,9:139\n1855#2:148\n1856#2:150\n1612#2:151\n1559#2:152\n1590#2,4:153\n1855#2,2:157\n1603#2,9:159\n1855#2:168\n1856#2:170\n1612#2:171\n1603#2,9:173\n1855#2:182\n1856#2:184\n1612#2:185\n1603#2,9:186\n1855#2:195\n1856#2:197\n1612#2:198\n1#3:149\n1#3:169\n1#3:172\n1#3:183\n1#3:196\n*S KotlinDebug\n*F\n+ 1 ScreenReader.kt\ncom/hermesandroid/bridge/executor/ScreenReader\n*L\n14#1:139,9\n14#1:148\n14#1:150\n14#1:151\n15#1:152\n15#1:153,4\n16#1:157,2\n30#1:159,9\n30#1:168\n30#1:170\n30#1:171\n58#1:173,9\n58#1:182\n58#1:184\n58#1:185\n95#1:186,9\n95#1:195\n95#1:197\n95#1:198\n14#1:149\n30#1:169\n58#1:183\n95#1:196\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0002J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008J\"\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0008H\u0002J\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00112\u0006\u0010\u0007\u001a\u00020\u0008JM\u0010\u0012\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00130\u00112\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u0019J_\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0017\u001a\u00020\u00182\u001a\u0010\u001c\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00130\u001d2\u0006\u0010\t\u001a\u00020\nH\u0002\u00a2\u0006\u0002\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/executor/ScreenReader;",
        "",
        "()V",
        "buildNode",
        "Lcom/hermesandroid/bridge/model/ScreenNode;",
        "info",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        "includeBounds",
        "",
        "path",
        "",
        "findNodeByText",
        "text",
        "exact",
        "findNodeByTextDfs",
        "node",
        "readCurrentScreen",
        "",
        "searchNodes",
        "",
        "textFilter",
        "classNameFilter",
        "clickableFilter",
        "limit",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/util/List;",
        "searchNodesDfs",
        "",
        "results",
        "",
        "(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/util/List;Ljava/lang/String;)V",
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
.field public static final INSTANCE:Lcom/hermesandroid/bridge/executor/ScreenReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermesandroid/bridge/executor/ScreenReader;

    invoke-direct {v0}, Lcom/hermesandroid/bridge/executor/ScreenReader;-><init>()V

    sput-object v0, Lcom/hermesandroid/bridge/executor/ScreenReader;->INSTANCE:Lcom/hermesandroid/bridge/executor/ScreenReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildNode(Landroid/view/accessibility/AccessibilityNodeInfo;ZLjava/lang/String;)Lcom/hermesandroid/bridge/model/ScreenNode;
    .locals 24
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "includeBounds"    # Z
    .param p3, "path"    # Ljava/lang/String;

    .line 22
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 24
    if-eqz v1, :cond_0

    new-instance v5, Lcom/hermesandroid/bridge/model/NodeBounds;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/hermesandroid/bridge/model/NodeBounds;-><init>(IIII)V

    move-object/from16 v21, v5

    goto :goto_0

    :cond_0
    const/16 v21, 0x0

    .line 27
    .local v21, "rect":Lcom/hermesandroid/bridge/model/NodeBounds;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "?"

    if-nez v5, :cond_1

    move-object v5, v6

    check-cast v5, Ljava/lang/CharSequence;

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    :cond_2
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "_"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, "nodeId":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v7

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 30
    nop

    .local v6, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 159
    .local v7, "$i$f$mapNotNull":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v6

    .local v9, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 167
    .local v10, "$i$f$mapNotNullTo":I
    move-object v12, v9

    .local v12, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 168
    .local v13, "$i$f$forEach":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v15, v14

    check-cast v15, Lkotlin/collections/IntIterator;

    invoke-virtual {v15}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v15

    .local v15, "element$iv$iv$iv":I
    move/from16 v16, v15

    .local v16, "element$iv$iv":I
    const/16 v17, 0x0

    .line 167
    .local v17, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move/from16 v18, v16

    .local v18, "i":I
    const/16 v19, 0x0

    .line 31
    .local v19, "$i$a$-mapNotNull-ScreenReader$buildNode$children$1":I
    move/from16 v4, v18

    .end local v18    # "i":I
    .local v4, "i":I
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v18

    if-nez v18, :cond_3

    move-object/from16 v23, v3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v22, v18

    .line 32
    .local v22, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    sget-object v0, Lcom/hermesandroid/bridge/executor/ScreenReader;->INSTANCE:Lcom/hermesandroid/bridge/executor/ScreenReader;

    move-object/from16 v23, v3

    .end local v3    # "r":Landroid/graphics/Rect;
    .local v23, "r":Landroid/graphics/Rect;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, v22

    .end local v22    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v2, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0, v2, v1, v3}, Lcom/hermesandroid/bridge/executor/ScreenReader;->buildNode(Landroid/view/accessibility/AccessibilityNodeInfo;ZLjava/lang/String;)Lcom/hermesandroid/bridge/model/ScreenNode;

    move-result-object v0

    .line 33
    .local v0, "node":Lcom/hermesandroid/bridge/model/ScreenNode;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 34
    nop

    .line 167
    .end local v0    # "node":Lcom/hermesandroid/bridge/model/ScreenNode;
    .end local v2    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "i":I
    .end local v19    # "$i$a$-mapNotNull-ScreenReader$buildNode$children$1":I
    :goto_2
    if-eqz v0, :cond_4

    .line 169
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 167
    .local v2, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v16    # "element$iv$iv":I
    .end local v17    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v23

    .end local v15    # "element$iv$iv$iv":I
    goto :goto_1

    .line 170
    .end local v23    # "r":Landroid/graphics/Rect;
    .restart local v3    # "r":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v23, v3

    .line 171
    .end local v3    # "r":Landroid/graphics/Rect;
    .end local v12    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach":I
    .restart local v23    # "r":Landroid/graphics/Rect;
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$mapNotNullTo":I
    move-object/from16 v22, v8

    check-cast v22, Ljava/util/List;

    .line 159
    nop

    .line 30
    .end local v6    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapNotNull":I
    nop

    .line 29
    nop

    .line 37
    .local v22, "children":Ljava/util/List;
    nop

    .line 38
    nop

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 172
    move-object v2, v0

    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 39
    .local v3, "$i$a$-takeIf-ScreenReader$buildNode$1":I
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-takeIf-ScreenReader$buildNode$1":I
    if-eqz v4, :cond_6

    move-object v12, v0

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    .line 40
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 172
    move-object v2, v0

    .restart local v2    # "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 40
    .local v3, "$i$a$-takeIf-ScreenReader$buildNode$2":I
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-takeIf-ScreenReader$buildNode$2":I
    if-eqz v4, :cond_7

    move-object v13, v0

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    .line 41
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    .line 42
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    .line 43
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v16

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v17

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v18

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v19

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v20, v4

    goto :goto_7

    :cond_a
    const/16 v20, 0x0

    .line 48
    :goto_7
    nop

    .line 49
    nop

    .line 37
    new-instance v0, Lcom/hermesandroid/bridge/model/ScreenNode;

    move-object v10, v0

    move-object v11, v5

    invoke-direct/range {v10 .. v22}, Lcom/hermesandroid/bridge/model/ScreenNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Boolean;Lcom/hermesandroid/bridge/model/NodeBounds;Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic buildNode$default(Lcom/hermesandroid/bridge/executor/ScreenReader;Landroid/view/accessibility/AccessibilityNodeInfo;ZLjava/lang/String;ILjava/lang/Object;)Lcom/hermesandroid/bridge/model/ScreenNode;
    .locals 0

    .line 20
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "0"

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hermesandroid/bridge/executor/ScreenReader;->buildNode(Landroid/view/accessibility/AccessibilityNodeInfo;ZLjava/lang/String;)Lcom/hermesandroid/bridge/model/ScreenNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findNodeByText$default(Lcom/hermesandroid/bridge/executor/ScreenReader;Ljava/lang/String;ZILjava/lang/Object;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 53
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 55
    const/4 p2, 0x0

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hermesandroid/bridge/executor/ScreenReader;->findNodeByText(Ljava/lang/String;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method private final findNodeByTextDfs(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "exact"    # Z

    .line 79
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 80
    .local v0, "nodeText":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-nez p3, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    :cond_4
    return-object p1

    .line 83
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_8

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_2

    .line 85
    .local v3, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    invoke-direct {p0, v3, p2, p3}, Lcom/hermesandroid/bridge/executor/ScreenReader;->findNodeByTextDfs(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 86
    .local v4, "found":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v4, :cond_7

    return-object v4

    .line 87
    :cond_7
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 83
    .end local v3    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "found":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    .end local v1    # "i":I
    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method public static synthetic searchNodes$default(Lcom/hermesandroid/bridge/executor/ScreenReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;IILjava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 92
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermesandroid/bridge/executor/ScreenReader;->searchNodes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final searchNodesDfs(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/util/List;Ljava/lang/String;)V
    .locals 19
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "textFilter"    # Ljava/lang/String;
    .param p3, "classNameFilter"    # Ljava/lang/String;
    .param p4, "clickableFilter"    # Ljava/lang/Boolean;
    .param p5, "limit"    # I
    .param p6, "results"    # Ljava/util/List;
    .param p7, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "I",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v11, p5

    if-lt v1, v11, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_0
    move-object v12, v1

    .line 115
    .local v12, "nodeText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v1

    :cond_5
    :goto_1
    move-object v13, v2

    .line 116
    .local v13, "nodeClass":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz p2, :cond_6

    move-object v3, v12

    check-cast v3, Ljava/lang/CharSequence;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 117
    :cond_6
    if-eqz p3, :cond_7

    move-object v3, v13

    check-cast v3, Ljava/lang/CharSequence;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 118
    :cond_7
    if-eqz v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    move v3, v2

    .line 116
    :goto_3
    move v14, v3

    .line 119
    .local v14, "matches":Z
    const-string v15, "_"

    if-eqz v14, :cond_e

    .line 120
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 122
    nop

    .line 123
    const/4 v4, 0x6

    new-array v4, v4, [Lkotlin/Pair;

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "?"

    if-nez v5, :cond_a

    move-object v5, v6

    check-cast v5, Ljava/lang/CharSequence;

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_b

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    :cond_b
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nodeId"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_c
    move-object v1, v2

    :goto_4
    const-string v5, "text"

    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 123
    nop

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_d
    const-string v1, "contentDescription"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    .line 123
    nop

    .line 126
    const-string v1, "className"

    invoke-static {v1, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    .line 123
    nop

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "clickable"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v4, v2

    .line 123
    nop

    .line 128
    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    const-string v2, "bounds"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v4, v2

    .line 123
    nop

    .line 122
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v9, p6

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 119
    .end local v3    # "r":Landroid/graphics/Rect;
    :cond_e
    move-object/from16 v9, p6

    .line 131
    :goto_5
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v8

    move v7, v1

    .end local v1    # "i":I
    .local v7, "i":I
    :goto_6
    if-ge v7, v8, :cond_10

    .line 132
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_f

    move/from16 v17, v7

    move/from16 v18, v8

    goto :goto_7

    .line 133
    .local v2, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v17, v7

    .end local v7    # "i":I
    .local v17, "i":I
    move-object/from16 v7, p6

    move/from16 v18, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/hermesandroid/bridge/executor/ScreenReader;->searchNodesDfs(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/util/List;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 131
    .end local v2    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_7
    add-int/lit8 v7, v17, 0x1

    move/from16 v8, v18

    .end local v17    # "i":I
    .restart local v7    # "i":I
    goto :goto_6

    .line 136
    .end local v7    # "i":I
    :cond_10
    return-void
.end method


# virtual methods
.method public final findNodeByText(Ljava/lang/String;Z)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "exact"    # Z

    move-object/from16 v0, p1

    const-string v1, "text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 58
    .local v1, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    invoke-virtual {v1}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v2

    const-string v3, "getWindows(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 173
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 181
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 182
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "element$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 181
    .local v12, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v13, v11

    check-cast v13, Landroid/view/accessibility/AccessibilityWindowInfo;

    .local v13, "it":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v14, 0x0

    .line 58
    .local v14, "$i$a$-mapNotNull-ScreenReader$findNodeByText$roots$1":I
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    .line 181
    .end local v13    # "it":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v14    # "$i$a$-mapNotNull-ScreenReader$findNodeByText$roots$1":I
    if-eqz v13, :cond_1

    .line 183
    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 181
    .local v14, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_1
    nop

    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 184
    :cond_2
    nop

    .line 185
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNullTo":I
    check-cast v4, Ljava/util/List;

    .line 173
    nop

    .line 58
    .end local v2    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapNotNull":I
    move-object v2, v4

    .line 59
    .local v2, "roots":Ljava/util/List;
    const/4 v3, 0x0

    .line 60
    .local v3, "found":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 61
    .local v5, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v6, p0

    move/from16 v7, p2

    invoke-direct {p0, v5, v0, v7}, Lcom/hermesandroid/bridge/executor/ScreenReader;->findNodeByTextDfs(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Z)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 62
    .local v8, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_4

    .line 63
    move-object v3, v8

    .line 65
    if-eq v8, v5, :cond_3

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 66
    :cond_3
    goto :goto_2

    .line 68
    :cond_4
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .end local v5    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_1

    .line 60
    :cond_5
    move-object v6, p0

    move/from16 v7, p2

    .line 71
    :goto_2
    return-object v3
.end method

.method public final readCurrentScreen(Z)Ljava/util/List;
    .locals 16
    .param p1, "includeBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/hermesandroid/bridge/model/ScreenNode;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 14
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v1

    const-string v2, "getWindows(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 147
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 148
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

    .line 147
    .local v11, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v12, v10

    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    .local v12, "it":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v13, 0x0

    .line 14
    .local v13, "$i$a$-mapNotNull-ScreenReader$readCurrentScreen$roots$1":I
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12

    .line 147
    .end local v12    # "it":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v13    # "$i$a$-mapNotNull-ScreenReader$readCurrentScreen$roots$1":I
    if-eqz v12, :cond_1

    .line 149
    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 147
    .local v13, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_1
    nop

    .end local v9    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 150
    :cond_2
    nop

    .line 151
    .end local v6    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNullTo":I
    check-cast v3, Ljava/util/List;

    .line 139
    nop

    .line 14
    .end local v1    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapNotNull":I
    move-object v1, v3

    .line 15
    .local v1, "roots":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 152
    .local v3, "$i$f$mapIndexed":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 153
    .local v6, "$i$f$mapIndexedTo":I
    const/4 v7, 0x0

    .line 154
    .local v7, "index$iv$iv":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 155
    .local v9, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "index$iv$iv":I
    .local v10, "index$iv$iv":I
    if-gez v7, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    move-object v11, v9

    check-cast v11, Landroid/view/accessibility/AccessibilityNodeInfo;

    .local v7, "i":I
    .local v11, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v12, 0x0

    .line 15
    .local v12, "$i$a$-mapIndexed-ScreenReader$readCurrentScreen$result$1":I
    sget-object v13, Lcom/hermesandroid/bridge/executor/ScreenReader;->INSTANCE:Lcom/hermesandroid/bridge/executor/ScreenReader;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v15, p1

    invoke-direct {v13, v11, v15, v14}, Lcom/hermesandroid/bridge/executor/ScreenReader;->buildNode(Landroid/view/accessibility/AccessibilityNodeInfo;ZLjava/lang/String;)Lcom/hermesandroid/bridge/model/ScreenNode;

    move-result-object v7

    .line 155
    .end local v7    # "i":I
    .end local v11    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12    # "$i$a$-mapIndexed-ScreenReader$readCurrentScreen$result$1":I
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v7, v10

    goto :goto_1

    .line 156
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    .end local v10    # "index$iv$iv":I
    .local v7, "index$iv$iv":I
    :cond_4
    move/from16 v15, p1

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapIndexedTo":I
    .end local v7    # "index$iv$iv":I
    check-cast v4, Ljava/util/List;

    .line 152
    nop

    .line 15
    .end local v2    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapIndexed":I
    move-object v2, v4

    .line 16
    .local v2, "result":Ljava/util/List;
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 157
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .local v7, "it":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v8, 0x0

    .line 16
    .local v8, "$i$a$-forEach-ScreenReader$readCurrentScreen$1":I
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 157
    .end local v7    # "it":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "$i$a$-forEach-ScreenReader$readCurrentScreen$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 158
    :cond_5
    nop

    .line 17
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    return-object v2
.end method

.method public final searchNodes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/util/List;
    .locals 15
    .param p1, "textFilter"    # Ljava/lang/String;
    .param p2, "classNameFilter"    # Ljava/lang/String;
    .param p3, "clickableFilter"    # Ljava/lang/Boolean;
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->Companion:Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService$Companion;->getInstance()Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 94
    .local v0, "service":Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 95
    .local v1, "results":Ljava/util/List;
    invoke-virtual {v0}, Lcom/hermesandroid/bridge/service/BridgeAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v2

    const-string v3, "getWindows(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 186
    .local v3, "$i$f$mapNotNull":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 194
    .local v6, "$i$f$mapNotNullTo":I
    move-object v7, v5

    .local v7, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 195
    .local v8, "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "element$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 194
    .local v12, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v13, v11

    check-cast v13, Landroid/view/accessibility/AccessibilityWindowInfo;

    .local v13, "it":Landroid/view/accessibility/AccessibilityWindowInfo;
    const/4 v14, 0x0

    .line 95
    .local v14, "$i$a$-mapNotNull-ScreenReader$searchNodes$roots$1":I
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    .line 194
    .end local v13    # "it":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v14    # "$i$a$-mapNotNull-ScreenReader$searchNodes$roots$1":I
    if-eqz v13, :cond_1

    .line 196
    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 194
    .local v14, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    :cond_1
    nop

    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 197
    :cond_2
    nop

    .line 198
    .end local v7    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapNotNullTo":I
    check-cast v4, Ljava/util/List;

    .line 186
    nop

    .line 95
    .end local v2    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$mapNotNull":I
    move-object v10, v4

    .line 96
    .local v10, "roots":Ljava/util/List;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move v12, v2

    .local v12, "wi":I
    add-int/lit8 v13, v2, 0x1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 97
    .local v14, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    move-object v3, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object v8, v1

    invoke-direct/range {v2 .. v9}, Lcom/hermesandroid/bridge/executor/ScreenReader;->searchNodesDfs(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/util/List;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v3, p4

    if-lt v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v13

    goto :goto_1

    .line 96
    .end local v12    # "wi":I
    .end local v14    # "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    move/from16 v3, p4

    .line 101
    :goto_2
    return-object v1
.end method
