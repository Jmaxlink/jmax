.class public interface abstract Lcom/typesafe/config/Config;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Lcom/typesafe/config/ConfigMergeable;


# virtual methods
.method public abstract atKey(Ljava/lang/String;)Lcom/typesafe/config/Config;
.end method

.method public abstract atPath(Ljava/lang/String;)Lcom/typesafe/config/Config;
.end method

.method public varargs abstract checkValid(Lcom/typesafe/config/Config;[Ljava/lang/String;)V
.end method

.method public abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigValue;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAnyRef(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAnyRefList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBoolean(Ljava/lang/String;)Z
.end method

.method public abstract getBooleanList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBytes(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getBytesList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfig(Ljava/lang/String;)Lcom/typesafe/config/Config;
.end method

.method public abstract getConfigList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/typesafe/config/Config;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDouble(Ljava/lang/String;)D
.end method

.method public abstract getDoubleList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDuration(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)J
.end method

.method public abstract getDuration(Ljava/lang/String;)Ljava/time/Duration;
.end method

.method public abstract getDurationList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDurationList(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getEnumList(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getInt(Ljava/lang/String;)I
.end method

.method public abstract getIntList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsNull(Ljava/lang/String;)Z
.end method

.method public abstract getList(Ljava/lang/String;)Lcom/typesafe/config/ConfigList;
.end method

.method public abstract getLong(Ljava/lang/String;)J
.end method

.method public abstract getLongList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMemorySize(Ljava/lang/String;)Lcom/typesafe/config/ConfigMemorySize;
.end method

.method public abstract getMemorySizeList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigMemorySize;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMilliseconds(Ljava/lang/String;)Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMillisecondsList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNanoseconds(Ljava/lang/String;)Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNanosecondsList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNumber(Ljava/lang/String;)Ljava/lang/Number;
.end method

.method public abstract getNumberList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getObject(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
.end method

.method public abstract getObjectList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/typesafe/config/ConfigObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPeriod(Ljava/lang/String;)Ljava/time/Period;
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTemporal(Ljava/lang/String;)Ljava/time/temporal/TemporalAmount;
.end method

.method public abstract getValue(Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;
.end method

.method public abstract hasPath(Ljava/lang/String;)Z
.end method

.method public abstract hasPathOrNull(Ljava/lang/String;)Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isResolved()Z
.end method

.method public abstract origin()Lcom/typesafe/config/ConfigOrigin;
.end method

.method public abstract resolve()Lcom/typesafe/config/Config;
.end method

.method public abstract resolve(Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;
.end method

.method public abstract resolveWith(Lcom/typesafe/config/Config;)Lcom/typesafe/config/Config;
.end method

.method public abstract resolveWith(Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;
.end method

.method public abstract root()Lcom/typesafe/config/ConfigObject;
.end method

.method public abstract withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/Config;
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigMergeable;
    .locals 0

    .line 168
    invoke-interface {p0, p1}, Lcom/typesafe/config/Config;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/Config;

    move-result-object p1

    return-object p1
.end method

.method public abstract withOnlyPath(Ljava/lang/String;)Lcom/typesafe/config/Config;
.end method

.method public abstract withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/Config;
.end method

.method public abstract withoutPath(Ljava/lang/String;)Lcom/typesafe/config/Config;
.end method
