.class final Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "DefaultAttributeMap.java"

# interfaces
.implements Lio/netty/util/Attribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/DefaultAttributeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "Lio/netty/util/Attribute<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final MAP_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute;",
            "Lio/netty/util/DefaultAttributeMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x24ef3b9fc599cf83L


# instance fields
.field private volatile attributeMap:Lio/netty/util/DefaultAttributeMap;

.field private final key:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 159
    const-class v0, Lio/netty/util/DefaultAttributeMap;

    .line 160
    const-class v1, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    const-string v2, "attributeMap"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->MAP_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 159
    return-void
.end method

.method constructor <init>(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;)V
    .locals 0
    .param p1, "attributeMap"    # Lio/netty/util/DefaultAttributeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/DefaultAttributeMap;",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)V"
        }
    .end annotation

    .line 167
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    .local p2, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 168
    iput-object p1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->attributeMap:Lio/netty/util/DefaultAttributeMap;

    .line 169
    iput-object p2, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 157
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 157
    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->isRemoved()Z

    move-result v0

    return v0
.end method

.method private isRemoved()Z
    .locals 1

    .line 178
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->attributeMap:Lio/netty/util/DefaultAttributeMap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAndRemove()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->attributeMap:Lio/netty/util/DefaultAttributeMap;

    .line 195
    .local v0, "attributeMap":Lio/netty/util/DefaultAttributeMap;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->MAP_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 196
    .local v2, "removed":Z
    :goto_0
    invoke-virtual {p0, v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 197
    .local v1, "oldValue":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 198
    iget-object v3, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    invoke-static {v0, v3, p0}, Lio/netty/util/DefaultAttributeMap;->access$200(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V

    .line 200
    :cond_1
    return-object v1
.end method

.method public key()Lio/netty/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/AttributeKey<",
            "TT;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 205
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->attributeMap:Lio/netty/util/DefaultAttributeMap;

    .line 206
    .local v0, "attributeMap":Lio/netty/util/DefaultAttributeMap;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->MAP_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 207
    .local v2, "removed":Z
    :goto_0
    invoke-virtual {p0, v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->set(Ljava/lang/Object;)V

    .line 208
    if-eqz v2, :cond_1

    .line 209
    iget-object v1, p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key:Lio/netty/util/AttributeKey;

    invoke-static {v0, v1, p0}, Lio/netty/util/DefaultAttributeMap;->access$200(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V

    .line 211
    :cond_1
    return-void
.end method

.method public setIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    nop

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    invoke-virtual {p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->get()Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, "old":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 186
    return-object v0

    .line 188
    .end local v0    # "old":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 189
    :cond_1
    return-object v0
.end method
