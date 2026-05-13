.class final Lcom/typesafe/config/impl/ResolveMemos;
.super Ljava/lang/Object;
.source "ResolveMemos.java"


# instance fields
.field private final memos:Lcom/typesafe/config/impl/BadMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/typesafe/config/impl/BadMap<",
            "Lcom/typesafe/config/impl/MemoKey;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/typesafe/config/impl/BadMap;

    invoke-direct {v0}, Lcom/typesafe/config/impl/BadMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/ResolveMemos;-><init>(Lcom/typesafe/config/impl/BadMap;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Lcom/typesafe/config/impl/BadMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/BadMap<",
            "Lcom/typesafe/config/impl/MemoKey;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)V"
        }
    .end annotation

    .line 13
    .local p1, "memos":Lcom/typesafe/config/impl/BadMap;, "Lcom/typesafe/config/impl/BadMap<Lcom/typesafe/config/impl/MemoKey;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/typesafe/config/impl/ResolveMemos;->memos:Lcom/typesafe/config/impl/BadMap;

    .line 15
    return-void
.end method


# virtual methods
.method get(Lcom/typesafe/config/impl/MemoKey;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "key"    # Lcom/typesafe/config/impl/MemoKey;

    .line 22
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveMemos;->memos:Lcom/typesafe/config/impl/BadMap;

    invoke-virtual {v0, p1}, Lcom/typesafe/config/impl/BadMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigValue;

    return-object v0
.end method

.method put(Lcom/typesafe/config/impl/MemoKey;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveMemos;
    .locals 2
    .param p1, "key"    # Lcom/typesafe/config/impl/MemoKey;
    .param p2, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 26
    new-instance v0, Lcom/typesafe/config/impl/ResolveMemos;

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveMemos;->memos:Lcom/typesafe/config/impl/BadMap;

    invoke-virtual {v1, p1, p2}, Lcom/typesafe/config/impl/BadMap;->copyingPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/typesafe/config/impl/BadMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/ResolveMemos;-><init>(Lcom/typesafe/config/impl/BadMap;)V

    return-object v0
.end method
