.class public final Lio/netty/channel/kqueue/AcceptFilter;
.super Ljava/lang/Object;
.source "AcceptFilter.java"


# static fields
.field static final PLATFORM_UNSUPPORTED:Lio/netty/channel/kqueue/AcceptFilter;


# instance fields
.field private final filterArgs:Ljava/lang/String;

.field private final filterName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lio/netty/channel/kqueue/AcceptFilter;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lio/netty/channel/kqueue/AcceptFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/netty/channel/kqueue/AcceptFilter;->PLATFORM_UNSUPPORTED:Lio/netty/channel/kqueue/AcceptFilter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "filterArgs"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "filterName"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/channel/kqueue/AcceptFilter;->filterName:Ljava/lang/String;

    .line 29
    const-string v0, "filterArgs"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/channel/kqueue/AcceptFilter;->filterArgs:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 43
    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lio/netty/channel/kqueue/AcceptFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 46
    return v2

    .line 48
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/netty/channel/kqueue/AcceptFilter;

    .line 49
    .local v1, "rhs":Lio/netty/channel/kqueue/AcceptFilter;
    iget-object v3, p0, Lio/netty/channel/kqueue/AcceptFilter;->filterName:Ljava/lang/String;

    iget-object v4, v1, Lio/netty/channel/kqueue/AcceptFilter;->filterName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/netty/channel/kqueue/AcceptFilter;->filterArgs:Ljava/lang/String;

    iget-object v4, v1, Lio/netty/channel/kqueue/AcceptFilter;->filterArgs:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public filterArgs()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/netty/channel/kqueue/AcceptFilter;->filterArgs:Ljava/lang/String;

    return-object v0
.end method

.method public filterName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/netty/channel/kqueue/AcceptFilter;->filterName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 54
    iget-object v0, p0, Lio/netty/channel/kqueue/AcceptFilter;->filterName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/netty/channel/kqueue/AcceptFilter;->filterArgs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/netty/channel/kqueue/AcceptFilter;->filterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/kqueue/AcceptFilter;->filterArgs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
