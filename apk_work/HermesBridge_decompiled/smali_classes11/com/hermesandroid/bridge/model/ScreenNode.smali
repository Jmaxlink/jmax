.class public final Lcom/hermesandroid/bridge/model/ScreenNode;
.super Ljava/lang/Object;
.source "ScreenNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008$\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0011\u00a2\u0006\u0002\u0010\u0012J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u000b\u0010\'\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000f\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0011H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\tH\u00c6\u0003J\t\u0010.\u001a\u00020\tH\u00c6\u0003J\t\u0010/\u001a\u00020\tH\u00c6\u0003J\t\u00100\u001a\u00020\tH\u00c6\u0003J\u0098\u0001\u00101\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0011H\u00c6\u0001\u00a2\u0006\u0002\u00102J\u0013\u00103\u001a\u00020\t2\u0008\u00104\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00105\u001a\u000206H\u00d6\u0001J\t\u00107\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0015\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001bR\u0011\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001dR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001bR\u0011\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001dR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001b\u00a8\u00068"
    }
    d2 = {
        "Lcom/hermesandroid/bridge/model/ScreenNode;",
        "",
        "nodeId",
        "",
        "text",
        "contentDescription",
        "className",
        "packageName",
        "clickable",
        "",
        "focusable",
        "scrollable",
        "editable",
        "checked",
        "bounds",
        "Lcom/hermesandroid/bridge/model/NodeBounds;",
        "children",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Boolean;Lcom/hermesandroid/bridge/model/NodeBounds;Ljava/util/List;)V",
        "getBounds",
        "()Lcom/hermesandroid/bridge/model/NodeBounds;",
        "getChecked",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getChildren",
        "()Ljava/util/List;",
        "getClassName",
        "()Ljava/lang/String;",
        "getClickable",
        "()Z",
        "getContentDescription",
        "getEditable",
        "getFocusable",
        "getNodeId",
        "getPackageName",
        "getScrollable",
        "getText",
        "component1",
        "component10",
        "component11",
        "component12",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Boolean;Lcom/hermesandroid/bridge/model/NodeBounds;Ljava/util/List;)Lcom/hermesandroid/bridge/model/ScreenNode;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final bounds:Lcom/hermesandroid/bridge/model/NodeBounds;

.field private final checked:Ljava/lang/Boolean;

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermesandroid/bridge/model/ScreenNode;",
            ">;"
        }
    .end annotation
.end field

.field private final className:Ljava/lang/String;

.field private final clickable:Z

.field private final contentDescription:Ljava/lang/String;

.field private final editable:Z

.field private final focusable:Z

.field private final nodeId:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final scrollable:Z

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Boolean;Lcom/hermesandroid/bridge/model/NodeBounds;Ljava/util/List;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "contentDescription"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "clickable"    # Z
    .param p7, "focusable"    # Z
    .param p8, "scrollable"    # Z
    .param p9, "editable"    # Z
    .param p10, "checked"    # Ljava/lang/Boolean;
    .param p11, "bounds"    # Lcom/hermesandroid/bridge/model/NodeBounds;
    .param p12, "children"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/Boolean;",
            "Lcom/hermesandroid/bridge/model/NodeBounds;",
            "Ljava/util/List<",
            "Lcom/hermesandroid/bridge/model/ScreenNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nodeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->nodeId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->text:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->contentDescription:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->className:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->packageName:Ljava/lang/String;

    .line 9
    iput-boolean p6, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->clickable:Z

    .line 10
    iput-boolean p7, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->focusable:Z

    .line 11
    iput-boolean p8, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->scrollable:Z

    .line 12
    iput-boolean p9, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->editable:Z

    .line 13
    iput-object p10, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->checked:Ljava/lang/Boolean;

    .line 14
    iput-object p11, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->bounds:Lcom/hermesandroid/bridge/model/NodeBounds;

    .line 15
    iput-object p12, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->children:Ljava/util/List;

    .line 3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Boolean;Lcom/hermesandroid/bridge/model/NodeBounds;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    .line 3
    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 3
    :cond_0
    move-object/from16 v13, p12

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v13}, Lcom/hermesandroid/bridge/model/ScreenNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Boolean;Lcom/hermesandroid/bridge/model/NodeBounds;Ljava/util/List;)V

    .line 16
    return-void
.end method

.method public static synthetic copy$default(Lcom/hermesandroid/bridge/model/ScreenNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Boolean;Lcom/hermesandroid/bridge/model/NodeBounds;Ljava/util/List;ILjava/lang/Object;)Lcom/hermesandroid/bridge/model/ScreenNode;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->nodeId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->text:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->contentDescription:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->className:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->packageName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->clickable:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->focusable:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->scrollable:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->editable:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->checked:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->bounds:Lcom/hermesandroid/bridge/model/NodeBounds;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/hermesandroid/bridge/model/ScreenNode;->children:Ljava/util/List;

    goto :goto_b

    :cond_b
    move-object/from16 v1, p12

    :goto_b
    move-object p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/hermesandroid/bridge/model/ScreenNode;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Boolean;Lcom/hermesandroid/bridge/model/NodeBounds;Ljava/util/List;)Lcom/hermesandroid/bridge/model/ScreenNode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->checked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component11()Lcom/hermesandroid/bridge/model/NodeBounds;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->bounds:Lcom/hermesandroid/bridge/model/NodeBounds;

    return-object v0
.end method

.method public final component12()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermesandroid/bridge/model/ScreenNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->clickable:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->focusable:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->scrollable:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->editable:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Boolean;Lcom/hermesandroid/bridge/model/NodeBounds;Ljava/util/List;)Lcom/hermesandroid/bridge/model/ScreenNode;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/Boolean;",
            "Lcom/hermesandroid/bridge/model/NodeBounds;",
            "Ljava/util/List<",
            "Lcom/hermesandroid/bridge/model/ScreenNode;",
            ">;)",
            "Lcom/hermesandroid/bridge/model/ScreenNode;"
        }
    .end annotation

    const-string v0, "nodeId"

    move-object/from16 v14, p1

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    move-object/from16 v15, p12

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermesandroid/bridge/model/ScreenNode;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/hermesandroid/bridge/model/ScreenNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/Boolean;Lcom/hermesandroid/bridge/model/NodeBounds;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermesandroid/bridge/model/ScreenNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hermesandroid/bridge/model/ScreenNode;

    iget-object v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->nodeId:Ljava/lang/String;

    iget-object v4, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->nodeId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->text:Ljava/lang/String;

    iget-object v4, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->text:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->contentDescription:Ljava/lang/String;

    iget-object v4, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->contentDescription:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->className:Ljava/lang/String;

    iget-object v4, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->className:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->clickable:Z

    iget-boolean v4, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->clickable:Z

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-boolean v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->focusable:Z

    iget-boolean v4, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->focusable:Z

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->scrollable:Z

    iget-boolean v4, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->scrollable:Z

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-boolean v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->editable:Z

    iget-boolean v4, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->editable:Z

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->checked:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->checked:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->bounds:Lcom/hermesandroid/bridge/model/NodeBounds;

    iget-object v4, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->bounds:Lcom/hermesandroid/bridge/model/NodeBounds;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->children:Ljava/util/List;

    iget-object v1, v1, Lcom/hermesandroid/bridge/model/ScreenNode;->children:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getBounds()Lcom/hermesandroid/bridge/model/NodeBounds;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->bounds:Lcom/hermesandroid/bridge/model/NodeBounds;

    return-object v0
.end method

.method public final getChecked()Ljava/lang/Boolean;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->checked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermesandroid/bridge/model/ScreenNode;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickable()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->clickable:Z

    return v0
.end method

.method public final getContentDescription()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getEditable()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->editable:Z

    return v0
.end method

.method public final getFocusable()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->focusable:Z

    return v0
.end method

.method public final getNodeId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getScrollable()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->scrollable:Z

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->nodeId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->text:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->contentDescription:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->contentDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->className:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->className:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->packageName:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->clickable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->focusable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->scrollable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->editable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->checked:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->checked:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->bounds:Lcom/hermesandroid/bridge/model/NodeBounds;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->bounds:Lcom/hermesandroid/bridge/model/NodeBounds;

    invoke-virtual {v2}, Lcom/hermesandroid/bridge/model/NodeBounds;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->children:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->nodeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->contentDescription:Ljava/lang/String;

    iget-object v3, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->className:Ljava/lang/String;

    iget-object v4, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->packageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->clickable:Z

    iget-boolean v6, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->focusable:Z

    iget-boolean v7, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->scrollable:Z

    iget-boolean v8, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->editable:Z

    iget-object v9, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->checked:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->bounds:Lcom/hermesandroid/bridge/model/NodeBounds;

    iget-object v11, p0, Lcom/hermesandroid/bridge/model/ScreenNode;->children:Ljava/util/List;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ScreenNode(nodeId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", text="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", focusable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scrollable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", editable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
