.class final Lcom/typesafe/config/impl/BadMap$Entry;
.super Ljava/lang/Object;
.source "BadMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/BadMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;

.field final next:Lcom/typesafe/config/impl/BadMap$Entry;

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/typesafe/config/impl/BadMap$Entry;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "v"    # Ljava/lang/Object;
    .param p4, "next"    # Lcom/typesafe/config/impl/BadMap$Entry;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/typesafe/config/impl/BadMap$Entry;->hash:I

    .line 17
    iput-object p2, p0, Lcom/typesafe/config/impl/BadMap$Entry;->key:Ljava/lang/Object;

    .line 18
    iput-object p3, p0, Lcom/typesafe/config/impl/BadMap$Entry;->value:Ljava/lang/Object;

    .line 19
    iput-object p4, p0, Lcom/typesafe/config/impl/BadMap$Entry;->next:Lcom/typesafe/config/impl/BadMap$Entry;

    .line 20
    return-void
.end method


# virtual methods
.method find(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/typesafe/config/impl/BadMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/typesafe/config/impl/BadMap$Entry;->value:Ljava/lang/Object;

    return-object v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/BadMap$Entry;->next:Lcom/typesafe/config/impl/BadMap$Entry;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/typesafe/config/impl/BadMap$Entry;->next:Lcom/typesafe/config/impl/BadMap$Entry;

    invoke-virtual {v0, p1}, Lcom/typesafe/config/impl/BadMap$Entry;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 28
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
