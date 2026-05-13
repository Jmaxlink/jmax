.class public final Lio/ktor/util/DelegatingMutableSet$iterator$1;
.super Ljava/lang/Object;
.source "DelegatingMutableSet.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/DelegatingMutableSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TTo;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0010)\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\u0005\u001a\u00020\u0006H\u0096\u0002J\u000e\u0010\u0007\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "io/ktor/util/DelegatingMutableSet$iterator$1",
        "",
        "delegateIterator",
        "getDelegateIterator",
        "()Ljava/util/Iterator;",
        "hasNext",
        "",
        "next",
        "()Ljava/lang/Object;",
        "remove",
        "",
        "ktor-utils"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TFrom;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/ktor/util/DelegatingMutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/DelegatingMutableSet<",
            "TFrom;TTo;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/util/DelegatingMutableSet;)V
    .locals 1
    .param p1, "$receiver"    # Lio/ktor/util/DelegatingMutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/DelegatingMutableSet<",
            "TFrom;TTo;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->this$0:Lio/ktor/util/DelegatingMutableSet;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lio/ktor/util/DelegatingMutableSet;->access$getDelegate$p(Lio/ktor/util/DelegatingMutableSet;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->delegateIterator:Ljava/util/Iterator;

    .line 38
    return-void
.end method


# virtual methods
.method public final getDelegateIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TFrom;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->delegateIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->this$0:Lio/ktor/util/DelegatingMutableSet;

    invoke-static {v0}, Lio/ktor/util/DelegatingMutableSet;->access$getConvertTo$p(Lio/ktor/util/DelegatingMutableSet;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 45
    iget-object v0, p0, Lio/ktor/util/DelegatingMutableSet$iterator$1;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
