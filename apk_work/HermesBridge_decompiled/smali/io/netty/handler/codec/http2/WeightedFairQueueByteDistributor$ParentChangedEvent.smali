.class final Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;
.super Ljava/lang/Object;
.source "WeightedFairQueueByteDistributor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParentChangedEvent"
.end annotation


# instance fields
.field final oldParent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

.field final state:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;)V
    .locals 0
    .param p1, "state"    # Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;
    .param p2, "oldParent"    # Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    iput-object p1, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;->state:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    .line 800
    iput-object p2, p0, Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$ParentChangedEvent;->oldParent:Lio/netty/handler/codec/http2/WeightedFairQueueByteDistributor$State;

    .line 801
    return-void
.end method
