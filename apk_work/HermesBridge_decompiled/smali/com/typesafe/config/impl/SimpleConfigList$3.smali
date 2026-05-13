.class final Lcom/typesafe/config/impl/SimpleConfigList$3;
.super Ljava/lang/Object;
.source "SimpleConfigList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/typesafe/config/impl/SimpleConfigList;->wrapListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Lcom/typesafe/config/ConfigValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$i:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Ljava/util/ListIterator;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleConfigList$3;->val$i:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/typesafe/config/ConfigValue;)V
    .locals 1
    .param p1, "arg0"    # Lcom/typesafe/config/ConfigValue;

    .line 321
    const-string v0, "listIterator().add"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->access$000(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 303
    check-cast p1, Lcom/typesafe/config/ConfigValue;

    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList$3;->add(Lcom/typesafe/config/ConfigValue;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList$3;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList$3;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/typesafe/config/ConfigValue;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList$3;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/ConfigValue;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigList$3;->next()Lcom/typesafe/config/ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList$3;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Lcom/typesafe/config/ConfigValue;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList$3;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/ConfigValue;

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigList$3;->previous()Lcom/typesafe/config/ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList$3;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 316
    const-string v0, "listIterator().remove"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->access$000(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public set(Lcom/typesafe/config/ConfigValue;)V
    .locals 1
    .param p1, "arg0"    # Lcom/typesafe/config/ConfigValue;

    .line 346
    const-string v0, "listIterator().set"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->access$000(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 303
    check-cast p1, Lcom/typesafe/config/ConfigValue;

    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfigList$3;->set(Lcom/typesafe/config/ConfigValue;)V

    return-void
.end method
