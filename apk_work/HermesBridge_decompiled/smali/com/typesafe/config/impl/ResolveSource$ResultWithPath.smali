.class final Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;
.super Ljava/lang/Object;
.source "ResolveSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ResolveSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResultWithPath"
.end annotation


# instance fields
.field final pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "Lcom/typesafe/config/impl/Container;",
            ">;"
        }
    .end annotation
.end field

.field final result:Lcom/typesafe/config/impl/ResolveResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/typesafe/config/impl/ResolveResult<",
            "+",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/ResolveResult;Lcom/typesafe/config/impl/ResolveSource$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/ResolveResult<",
            "+",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/ResolveSource$Node<",
            "Lcom/typesafe/config/impl/Container;",
            ">;)V"
        }
    .end annotation

    .line 340
    .local p1, "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .local p2, "pathFromRoot":Lcom/typesafe/config/impl/ResolveSource$Node;, "Lcom/typesafe/config/impl/ResolveSource$Node<Lcom/typesafe/config/impl/Container;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    .line 342
    iput-object p2, p0, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    .line 343
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultWithPath(result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->result:Lcom/typesafe/config/impl/ResolveResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pathFromRoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveSource$ResultWithPath;->pathFromRoot:Lcom/typesafe/config/impl/ResolveSource$Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
