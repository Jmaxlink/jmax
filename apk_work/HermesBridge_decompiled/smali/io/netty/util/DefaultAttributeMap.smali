.class public Lio/netty/util/DefaultAttributeMap;
.super Ljava/lang/Object;
.source "DefaultAttributeMap.java"

# interfaces
.implements Lio/netty/util/AttributeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ATTRIBUTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/DefaultAttributeMap;",
            "[",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ATTRIBUTES:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;


# instance fields
.field private volatile attributes:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    nop

    .line 31
    const-class v0, [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 32
    const-class v1, Lio/netty/util/DefaultAttributeMap;

    const-string v2, "attributes"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/DefaultAttributeMap;->ATTRIBUTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    sput-object v0, Lio/netty/util/DefaultAttributeMap;->EMPTY_ATTRIBUTES:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lio/netty/util/DefaultAttributeMap;->EMPTY_ATTRIBUTES:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    iput-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    return-void
.end method

.method static synthetic access$200(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/util/DefaultAttributeMap;
    .param p1, "x1"    # Lio/netty/util/AttributeKey;
    .param p2, "x2"    # Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 29
    invoke-direct {p0, p1, p2}, Lio/netty/util/DefaultAttributeMap;->removeAttributeIfMatch(Lio/netty/util/AttributeKey;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V

    return-void
.end method

.method private static orderedCopyOnInsert([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;I[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V
    .locals 5
    .param p0, "sortedSrc"    # [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .param p1, "srcLength"    # I
    .param p2, "copy"    # [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .param p3, "toInsert"    # Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 67
    invoke-static {p3}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/AttributeKey;->id()I

    move-result v0

    .line 69
    .local v0, "id":I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 70
    aget-object v2, p0, v1

    .line 71
    .local v2, "attribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    invoke-static {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/AttributeKey;->id()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 72
    invoke-static {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/AttributeKey;->id()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 73
    goto :goto_1

    .line 75
    :cond_0
    add-int/lit8 v3, v1, 0x1

    aget-object v4, p0, v1

    aput-object v4, p2, v3

    .line 69
    .end local v2    # "attribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 71
    .restart local v2    # "attribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 77
    .end local v2    # "attribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    :cond_2
    :goto_1
    add-int/lit8 v2, v1, 0x1

    aput-object p3, p2, v2

    .line 78
    add-int/lit8 v2, v1, 0x1

    .line 79
    .local v2, "toCopy":I
    if-lez v2, :cond_3

    .line 80
    const/4 v3, 0x0

    invoke-static {p0, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    :cond_3
    return-void
.end method

.method private removeAttributeIfMatch(Lio/netty/util/AttributeKey;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<",
            "TT;>;)V"
        }
    .end annotation

    .line 130
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    .local p2, "value":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    nop

    :goto_0
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 131
    .local v0, "attributes":[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    invoke-static {v0, p1}, Lio/netty/util/DefaultAttributeMap;->searchAttributeByKey([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)I

    move-result v1

    .line 132
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    aget-object v2, v0, v1

    .line 136
    .local v2, "attribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    invoke-virtual {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key()Lio/netty/util/AttributeKey;

    move-result-object v3

    if-ne v3, p1, :cond_5

    .line 137
    if-eq v2, p2, :cond_1

    .line 138
    return-void

    .line 140
    :cond_1
    array-length v3, v0

    .line 141
    .local v3, "count":I
    add-int/lit8 v4, v3, -0x1

    .line 142
    .local v4, "newCount":I
    if-nez v4, :cond_2

    sget-object v5, Lio/netty/util/DefaultAttributeMap;->EMPTY_ATTRIBUTES:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    goto :goto_1

    :cond_2
    new-array v5, v4, [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 145
    .local v5, "newAttributes":[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    :goto_1
    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    sub-int v6, v3, v1

    add-int/lit8 v6, v6, -0x1

    .line 147
    .local v6, "remaining":I
    if-lez v6, :cond_3

    .line 148
    add-int/lit8 v7, v1, 0x1

    invoke-static {v0, v7, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    :cond_3
    sget-object v7, Lio/netty/util/DefaultAttributeMap;->ATTRIBUTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v7, p0, v0, v5}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 151
    return-void

    .line 153
    .end local v0    # "attributes":[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .end local v1    # "index":I
    .end local v2    # "attribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .end local v3    # "count":I
    .end local v4    # "newCount":I
    .end local v5    # "newAttributes":[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .end local v6    # "remaining":I
    :cond_4
    goto :goto_0

    .line 136
    .restart local v0    # "attributes":[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .restart local v1    # "index":I
    .restart local v2    # "attribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private static searchAttributeByKey([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)I
    .locals 9
    .param p0, "sortedAttributes"    # [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute;",
            "Lio/netty/util/AttributeKey<",
            "*>;)I"
        }
    .end annotation

    .line 40
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<*>;"
    const/4 v0, 0x0

    .line 41
    .local v0, "low":I
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 43
    .local v1, "high":I
    :goto_0
    if-gt v0, v1, :cond_4

    .line 44
    add-int v3, v0, v1

    ushr-int/2addr v3, v2

    .line 45
    .local v3, "mid":I
    aget-object v4, p0, v3

    .line 46
    .local v4, "midVal":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    invoke-static {v4}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v5

    .line 47
    .local v5, "midValKey":Lio/netty/util/AttributeKey;
    if-ne v5, p1, :cond_0

    .line 48
    return v3

    .line 50
    :cond_0
    invoke-virtual {v5}, Lio/netty/util/AttributeKey;->id()I

    move-result v6

    .line 51
    .local v6, "midValKeyId":I
    invoke-virtual {p1}, Lio/netty/util/AttributeKey;->id()I

    move-result v7

    .line 52
    .local v7, "keyId":I
    if-eq v6, v7, :cond_3

    .line 53
    if-ge v6, v7, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 54
    .local v8, "searchRight":Z
    :goto_1
    if-eqz v8, :cond_2

    .line 55
    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    .line 57
    :cond_2
    add-int/lit8 v1, v3, -0x1

    .line 59
    .end local v3    # "mid":I
    .end local v4    # "midVal":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .end local v5    # "midValKey":Lio/netty/util/AttributeKey;
    .end local v6    # "midValKeyId":I
    .end local v7    # "keyId":I
    .end local v8    # "searchRight":Z
    :goto_2
    goto :goto_0

    .line 52
    .restart local v3    # "mid":I
    .restart local v4    # "midVal":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .restart local v5    # "midValKey":Lio/netty/util/AttributeKey;
    .restart local v6    # "midValKeyId":I
    .restart local v7    # "keyId":I
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 61
    .end local v3    # "mid":I
    .end local v4    # "midVal":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .end local v5    # "midValKey":Lio/netty/util/AttributeKey;
    .end local v6    # "midValKeyId":I
    .end local v7    # "keyId":I
    :cond_4
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method


# virtual methods
.method public attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)",
            "Lio/netty/util/Attribute<",
            "TT;>;"
        }
    .end annotation

    .line 89
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "newAttribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    :goto_0
    iget-object v1, p0, Lio/netty/util/DefaultAttributeMap;->attributes:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 93
    .local v1, "attributes":[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    invoke-static {v1, p1}, Lio/netty/util/DefaultAttributeMap;->searchAttributeByKey([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)I

    move-result v2

    .line 95
    .local v2, "index":I
    if-ltz v2, :cond_3

    .line 96
    aget-object v3, v1, v2

    .line 97
    .local v3, "attribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    invoke-virtual {v3}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->key()Lio/netty/util/AttributeKey;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 98
    invoke-static {v3}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$100(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    return-object v3

    .line 102
    :cond_0
    if-nez v0, :cond_1

    .line 103
    new-instance v4, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v4, p0, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;)V

    move-object v0, v4

    .line 105
    :cond_1
    array-length v4, v1

    .line 106
    .local v4, "count":I
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 107
    .local v5, "newAttributes":[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    aput-object v0, v5, v2

    .line 108
    .end local v3    # "attribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .end local v4    # "count":I
    goto :goto_1

    .line 97
    .end local v5    # "newAttributes":[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .restart local v3    # "attribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 109
    .end local v3    # "attribute":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    :cond_3
    if-nez v0, :cond_4

    .line 110
    new-instance v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v3, p0, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap;Lio/netty/util/AttributeKey;)V

    move-object v0, v3

    .line 112
    :cond_4
    array-length v3, v1

    .line 113
    .local v3, "count":I
    add-int/lit8 v4, v3, 0x1

    new-array v5, v4, [Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 114
    .restart local v5    # "newAttributes":[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    invoke-static {v1, v3, v5, v0}, Lio/netty/util/DefaultAttributeMap;->orderedCopyOnInsert([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;I[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V

    .line 116
    .end local v3    # "count":I
    :goto_1
    sget-object v3, Lio/netty/util/DefaultAttributeMap;->ATTRIBUTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v5}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 117
    return-object v0

    .line 119
    .end local v1    # "attributes":[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    .end local v2    # "index":I
    .end local v5    # "newAttributes":[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    :cond_5
    goto :goto_0
.end method

.method public hasAttr(Lio/netty/util/AttributeKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)Z"
        }
    .end annotation

    .line 124
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:[Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-static {v0, p1}, Lio/netty/util/DefaultAttributeMap;->searchAttributeByKey([Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
