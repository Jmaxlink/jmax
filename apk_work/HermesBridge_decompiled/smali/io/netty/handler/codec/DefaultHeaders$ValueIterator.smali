.class final Lio/netty/handler/codec/DefaultHeaders$ValueIterator;
.super Ljava/lang/Object;
.source "DefaultHeaders.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/DefaultHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final name:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private removalPrevious:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/handler/codec/DefaultHeaders;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/DefaultHeaders;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1310
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$ValueIterator;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>.ValueIterator;"
    .local p2, "name":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->this$0:Lio/netty/handler/codec/DefaultHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    const-string v0, "name"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->name:Ljava/lang/Object;

    .line 1312
    invoke-static {p1}, Lio/netty/handler/codec/DefaultHeaders;->access$100(Lio/netty/handler/codec/DefaultHeaders;)Lio/netty/util/HashingStrategy;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->hash:I

    .line 1313
    invoke-static {p1}, Lio/netty/handler/codec/DefaultHeaders;->access$200(Lio/netty/handler/codec/DefaultHeaders;)[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->hash:I

    invoke-static {p1, v1}, Lio/netty/handler/codec/DefaultHeaders;->access$300(Lio/netty/handler/codec/DefaultHeaders;I)I

    move-result p1

    aget-object p1, v0, p1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->calculateNext(Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V

    .line 1314
    return-void
.end method

.method private calculateNext(Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1344
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$ValueIterator;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>.ValueIterator;"
    .local p1, "entry":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    nop

    :goto_0
    if-eqz p1, :cond_1

    .line 1345
    iget v0, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    iget v1, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->hash:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->this$0:Lio/netty/handler/codec/DefaultHeaders;

    invoke-static {v0}, Lio/netty/handler/codec/DefaultHeaders;->access$100(Lio/netty/handler/codec/DefaultHeaders;)Lio/netty/util/HashingStrategy;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->name:Ljava/lang/Object;

    iget-object v2, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    iput-object p1, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1347
    return-void

    .line 1349
    :cond_0
    iget-object p1, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 1351
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1352
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1318
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$ValueIterator;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>.ValueIterator;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1323
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$ValueIterator;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>.ValueIterator;"
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1326
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->removalPrevious:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1329
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1330
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v0, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->calculateNext(Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V

    .line 1331
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v0, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    return-object v0

    .line 1324
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1336
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders$ValueIterator;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>.ValueIterator;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->this$0:Lio/netty/handler/codec/DefaultHeaders;

    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->removalPrevious:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/DefaultHeaders;->remove0(Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->removalPrevious:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1340
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;->previous:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1341
    return-void

    .line 1337
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
