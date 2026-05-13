.class public final Lio/ktor/util/debug/plugins/PluginTraceElement;
.super Ljava/lang/Object;
.source "PluginsTrace.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0017B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/ktor/util/debug/plugins/PluginTraceElement;",
        "",
        "pluginName",
        "",
        "handler",
        "event",
        "Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;",
        "(Ljava/lang/String;Ljava/lang/String;Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;)V",
        "getEvent",
        "()Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;",
        "getHandler",
        "()Ljava/lang/String;",
        "getPluginName",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "PluginEvent",
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
.field private final event:Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;

.field private final handler:Ljava/lang/String;

.field private final pluginName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;)V
    .locals 1
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "handler"    # Ljava/lang/String;
    .param p3, "event"    # Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;

    const-string v0, "pluginName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->pluginName:Ljava/lang/String;

    iput-object p2, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->handler:Ljava/lang/String;

    iput-object p3, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->event:Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;

    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/util/debug/plugins/PluginTraceElement;Ljava/lang/String;Ljava/lang/String;Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;ILjava/lang/Object;)Lio/ktor/util/debug/plugins/PluginTraceElement;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->pluginName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->handler:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->event:Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/util/debug/plugins/PluginTraceElement;->copy(Ljava/lang/String;Ljava/lang/String;Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;)Lio/ktor/util/debug/plugins/PluginTraceElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->pluginName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;
    .locals 1

    iget-object v0, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->event:Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;)Lio/ktor/util/debug/plugins/PluginTraceElement;
    .locals 1

    const-string v0, "pluginName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ktor/util/debug/plugins/PluginTraceElement;

    invoke-direct {v0, p1, p2, p3}, Lio/ktor/util/debug/plugins/PluginTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/util/debug/plugins/PluginTraceElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/util/debug/plugins/PluginTraceElement;

    iget-object v3, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->pluginName:Ljava/lang/String;

    iget-object v4, v1, Lio/ktor/util/debug/plugins/PluginTraceElement;->pluginName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->handler:Ljava/lang/String;

    iget-object v4, v1, Lio/ktor/util/debug/plugins/PluginTraceElement;->handler:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->event:Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;

    iget-object v1, v1, Lio/ktor/util/debug/plugins/PluginTraceElement;->event:Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEvent()Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->event:Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;

    return-object v0
.end method

.method public final getHandler()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public final getPluginName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->pluginName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->pluginName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->handler:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->event:Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;

    invoke-virtual {v2}, Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginTraceElement(pluginName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->pluginName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->handler:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/util/debug/plugins/PluginTraceElement;->event:Lio/ktor/util/debug/plugins/PluginTraceElement$PluginEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
