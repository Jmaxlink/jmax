.class final Lcom/typesafe/config/impl/ResolveSource$Node;
.super Ljava/lang/Object;
.source "ResolveSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ResolveSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final next:Lcom/typesafe/config/impl/ResolveSource$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 268
    .local p0, "this":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/typesafe/config/impl/ResolveSource$Node;-><init>(Ljava/lang/Object;Lcom/typesafe/config/impl/ResolveSource$Node;)V

    .line 269
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/typesafe/config/impl/ResolveSource$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "next":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/typesafe/config/impl/ResolveSource$Node;->value:Ljava/lang/Object;

    .line 264
    iput-object p2, p0, Lcom/typesafe/config/impl/ResolveSource$Node;->next:Lcom/typesafe/config/impl/ResolveSource$Node;

    .line 265
    return-void
.end method


# virtual methods
.method head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    move-object v0, p0

    .line 285
    .local v0, "i":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    :goto_0
    iget-object v1, v0, Lcom/typesafe/config/impl/ResolveSource$Node;->next:Lcom/typesafe/config/impl/ResolveSource$Node;

    if-eqz v1, :cond_0

    .line 286
    iget-object v0, v0, Lcom/typesafe/config/impl/ResolveSource$Node;->next:Lcom/typesafe/config/impl/ResolveSource$Node;

    goto :goto_0

    .line 287
    :cond_0
    iget-object v1, v0, Lcom/typesafe/config/impl/ResolveSource$Node;->value:Ljava/lang/Object;

    return-object v1
.end method

.method prepend(Ljava/lang/Object;)Lcom/typesafe/config/impl/ResolveSource$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "TT;>;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/typesafe/config/impl/ResolveSource$Node;

    invoke-direct {v0, p1, p0}, Lcom/typesafe/config/impl/ResolveSource$Node;-><init>(Ljava/lang/Object;Lcom/typesafe/config/impl/ResolveSource$Node;)V

    return-object v0
.end method

.method reverse()Lcom/typesafe/config/impl/ResolveSource$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "TT;>;"
        }
    .end annotation

    .line 291
    .local p0, "this":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource$Node;->next:Lcom/typesafe/config/impl/ResolveSource$Node;

    if-nez v0, :cond_0

    .line 292
    return-object p0

    .line 294
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/ResolveSource$Node;

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveSource$Node;->value:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/ResolveSource$Node;-><init>(Ljava/lang/Object;)V

    .line 295
    .local v0, "reversed":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveSource$Node;->next:Lcom/typesafe/config/impl/ResolveSource$Node;

    .line 296
    .local v1, "i":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 297
    iget-object v2, v1, Lcom/typesafe/config/impl/ResolveSource$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/typesafe/config/impl/ResolveSource$Node;->prepend(Ljava/lang/Object;)Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v0

    .line 298
    iget-object v1, v1, Lcom/typesafe/config/impl/ResolveSource$Node;->next:Lcom/typesafe/config/impl/ResolveSource$Node;

    goto :goto_0

    .line 300
    :cond_1
    return-object v0
.end method

.method tail()Lcom/typesafe/config/impl/ResolveSource$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "TT;>;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveSource$Node;->next:Lcom/typesafe/config/impl/ResolveSource$Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 306
    .local p0, "this":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveSource$Node;->reverse()Lcom/typesafe/config/impl/ResolveSource$Node;

    move-result-object v1

    .line 309
    .local v1, "toAppendValue":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<TT;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 310
    iget-object v2, v1, Lcom/typesafe/config/impl/ResolveSource$Node;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    iget-object v2, v1, Lcom/typesafe/config/impl/ResolveSource$Node;->next:Lcom/typesafe/config/impl/ResolveSource$Node;

    if-eqz v2, :cond_0

    .line 312
    const-string v2, " <= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    :cond_0
    iget-object v1, v1, Lcom/typesafe/config/impl/ResolveSource$Node;->next:Lcom/typesafe/config/impl/ResolveSource$Node;

    goto :goto_0

    .line 315
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
