.class public abstract Lio/netty/util/Recycler$EnhancedHandle;
.super Ljava/lang/Object;
.source "Recycler.java"

# interfaces
.implements Lio/netty/util/Recycler$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnhancedHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/Recycler$Handle<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 230
    .local p0, "this":Lio/netty/util/Recycler$EnhancedHandle;, "Lio/netty/util/Recycler$EnhancedHandle<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/Recycler$1;

    .line 226
    .local p0, "this":Lio/netty/util/Recycler$EnhancedHandle;, "Lio/netty/util/Recycler$EnhancedHandle<TT;>;"
    invoke-direct {p0}, Lio/netty/util/Recycler$EnhancedHandle;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract unguardedRecycle(Ljava/lang/Object;)V
.end method
