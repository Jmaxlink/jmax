.class final Lcom/typesafe/config/impl/SimpleConfig;
.super Ljava/lang/Object;
.source "SimpleConfig.java"

# interfaces
.implements Lcom/typesafe/config/Config;
.implements Lcom/typesafe/config/impl/MergeableValue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final object:Lcom/typesafe/config/impl/AbstractConfigObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V
    .locals 0
    .param p1, "object"    # Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 50
    return-void
.end method

.method private static addMissing(Ljava/util/List;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;)V
    .locals 1
    .param p1, "refValue"    # Lcom/typesafe/config/ConfigValue;
    .param p2, "path"    # Lcom/typesafe/config/impl/Path;
    .param p3, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;",
            "Lcom/typesafe/config/ConfigValue;",
            "Lcom/typesafe/config/impl/Path;",
            "Lcom/typesafe/config/ConfigOrigin;",
            ")V"
        }
    .end annotation

    .line 953
    .local p0, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    invoke-static {p1}, Lcom/typesafe/config/impl/SimpleConfig;->getDesc(Lcom/typesafe/config/ConfigValue;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->addMissing(Ljava/util/List;Ljava/lang/String;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;)V

    .line 954
    return-void
.end method

.method static addMissing(Ljava/util/List;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;)V
    .locals 1
    .param p1, "refType"    # Lcom/typesafe/config/ConfigValueType;
    .param p2, "path"    # Lcom/typesafe/config/impl/Path;
    .param p3, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;",
            "Lcom/typesafe/config/ConfigValueType;",
            "Lcom/typesafe/config/impl/Path;",
            "Lcom/typesafe/config/ConfigOrigin;",
            ")V"
        }
    .end annotation

    .line 959
    .local p0, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    invoke-static {p1}, Lcom/typesafe/config/impl/SimpleConfig;->getDesc(Lcom/typesafe/config/ConfigValueType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->addMissing(Ljava/util/List;Ljava/lang/String;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;)V

    .line 960
    return-void
.end method

.method private static addMissing(Ljava/util/List;Ljava/lang/String;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;)V
    .locals 2
    .param p1, "refDesc"    # Ljava/lang/String;
    .param p2, "path"    # Lcom/typesafe/config/impl/Path;
    .param p3, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/impl/Path;",
            "Lcom/typesafe/config/ConfigOrigin;",
            ")V"
        }
    .end annotation

    .line 947
    .local p0, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No setting at \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', expecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, p3, v0}, Lcom/typesafe/config/impl/SimpleConfig;->addProblem(Ljava/util/List;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method private static addProblem(Ljava/util/List;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "problem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;",
            "Lcom/typesafe/config/impl/Path;",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 926
    .local p0, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    new-instance v0, Lcom/typesafe/config/ConfigException$ValidationProblem;

    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/typesafe/config/ConfigException$ValidationProblem;-><init>(Ljava/lang/String;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    return-void
.end method

.method private static addWrongType(Ljava/util/List;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V
    .locals 1
    .param p1, "refValue"    # Lcom/typesafe/config/ConfigValue;
    .param p2, "actual"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p3, "path"    # Lcom/typesafe/config/impl/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;",
            "Lcom/typesafe/config/ConfigValue;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            "Lcom/typesafe/config/impl/Path;",
            ")V"
        }
    .end annotation

    .line 971
    .local p0, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    invoke-static {p1}, Lcom/typesafe/config/impl/SimpleConfig;->getDesc(Lcom/typesafe/config/ConfigValue;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->addWrongType(Ljava/util/List;Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V

    .line 972
    return-void
.end method

.method private static addWrongType(Ljava/util/List;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V
    .locals 1
    .param p1, "refType"    # Lcom/typesafe/config/ConfigValueType;
    .param p2, "actual"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p3, "path"    # Lcom/typesafe/config/impl/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;",
            "Lcom/typesafe/config/ConfigValueType;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            "Lcom/typesafe/config/impl/Path;",
            ")V"
        }
    .end annotation

    .line 976
    .local p0, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    invoke-static {p1}, Lcom/typesafe/config/impl/SimpleConfig;->getDesc(Lcom/typesafe/config/ConfigValueType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->addWrongType(Ljava/util/List;Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V

    .line 977
    return-void
.end method

.method private static addWrongType(Ljava/util/List;Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V
    .locals 3
    .param p1, "refDesc"    # Ljava/lang/String;
    .param p2, "actual"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p3, "path"    # Lcom/typesafe/config/impl/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            "Lcom/typesafe/config/impl/Path;",
            ")V"
        }
    .end annotation

    .line 964
    .local p0, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    invoke-virtual {p2}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong value type at \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', expecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 966
    invoke-static {p2}, Lcom/typesafe/config/impl/SimpleConfig;->getDesc(Lcom/typesafe/config/ConfigValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 964
    invoke-static {p0, p3, v0, v1}, Lcom/typesafe/config/impl/SimpleConfig;->addProblem(Ljava/util/List;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    .line 967
    return-void
.end method

.method private static checkListCompatibility(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/SimpleConfigList;Lcom/typesafe/config/impl/SimpleConfigList;Ljava/util/List;)V
    .locals 6
    .param p0, "path"    # Lcom/typesafe/config/impl/Path;
    .param p1, "listRef"    # Lcom/typesafe/config/impl/SimpleConfigList;
    .param p2, "listValue"    # Lcom/typesafe/config/impl/SimpleConfigList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/Path;",
            "Lcom/typesafe/config/impl/SimpleConfigList;",
            "Lcom/typesafe/config/impl/SimpleConfigList;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;)V"
        }
    .end annotation

    .line 1051
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    invoke-virtual {p1}, Lcom/typesafe/config/impl/SimpleConfigList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/typesafe/config/impl/SimpleConfigList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1054
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/typesafe/config/impl/SimpleConfigList;->get(I)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 1055
    .local v0, "refElement":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {p2}, Lcom/typesafe/config/impl/SimpleConfigList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/ConfigValue;

    .line 1056
    .local v2, "elem":Lcom/typesafe/config/ConfigValue;
    move-object v3, v2

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 1057
    .local v3, "e":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-static {v0, v3}, Lcom/typesafe/config/impl/SimpleConfig;->haveCompatibleTypes(Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1058
    invoke-virtual {v3}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List at \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' contains wrong value type, expecting list of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1060
    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfig;->getDesc(Lcom/typesafe/config/ConfigValue;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but got element of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/typesafe/config/impl/SimpleConfig;->getDesc(Lcom/typesafe/config/ConfigValue;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1058
    invoke-static {p3, p0, v1, v4}, Lcom/typesafe/config/impl/SimpleConfig;->addProblem(Ljava/util/List;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    .line 1062
    goto :goto_1

    .line 1064
    .end local v2    # "elem":Lcom/typesafe/config/ConfigValue;
    .end local v3    # "e":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_1
    goto :goto_0

    .line 1066
    .end local v0    # "refElement":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_2
    :goto_1
    return-void
.end method

.method private static checkValid(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/util/List;)V
    .locals 3
    .param p0, "path"    # Lcom/typesafe/config/impl/Path;
    .param p1, "reference"    # Lcom/typesafe/config/ConfigValue;
    .param p2, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/Path;",
            "Lcom/typesafe/config/ConfigValue;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;)V"
        }
    .end annotation

    .line 1089
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/SimpleConfig;->haveCompatibleTypes(Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1090
    instance-of v0, p1, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v0, :cond_0

    .line 1091
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    move-object v1, p2

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-static {p0, v0, v1, p3}, Lcom/typesafe/config/impl/SimpleConfig;->checkValidObject(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/AbstractConfigObject;Ljava/util/List;)V

    goto :goto_2

    .line 1093
    :cond_0
    instance-of v0, p1, Lcom/typesafe/config/impl/SimpleConfigList;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/typesafe/config/impl/SimpleConfigList;

    if-eqz v0, :cond_1

    .line 1094
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfigList;

    .line 1095
    .local v0, "listRef":Lcom/typesafe/config/impl/SimpleConfigList;
    move-object v1, p2

    check-cast v1, Lcom/typesafe/config/impl/SimpleConfigList;

    .line 1096
    .local v1, "listValue":Lcom/typesafe/config/impl/SimpleConfigList;
    invoke-static {p0, v0, v1, p3}, Lcom/typesafe/config/impl/SimpleConfig;->checkListCompatibility(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/SimpleConfigList;Lcom/typesafe/config/impl/SimpleConfigList;Ljava/util/List;)V

    .end local v0    # "listRef":Lcom/typesafe/config/impl/SimpleConfigList;
    .end local v1    # "listValue":Lcom/typesafe/config/impl/SimpleConfigList;
    goto :goto_1

    .line 1097
    :cond_1
    instance-of v0, p1, Lcom/typesafe/config/impl/SimpleConfigList;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/typesafe/config/impl/SimpleConfigObject;

    if-eqz v0, :cond_3

    .line 1099
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfigList;

    .line 1100
    .restart local v0    # "listRef":Lcom/typesafe/config/impl/SimpleConfigList;
    sget-object v1, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    invoke-static {p2, v1}, Lcom/typesafe/config/impl/DefaultTransformer;->transform(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    .line 1102
    .local v1, "listValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v2, v1, Lcom/typesafe/config/impl/SimpleConfigList;

    if-eqz v2, :cond_2

    .line 1103
    move-object v2, v1

    check-cast v2, Lcom/typesafe/config/impl/SimpleConfigList;

    invoke-static {p0, v0, v2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->checkListCompatibility(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/SimpleConfigList;Lcom/typesafe/config/impl/SimpleConfigList;Ljava/util/List;)V

    goto :goto_0

    .line 1105
    :cond_2
    invoke-static {p3, p1, p2, p0}, Lcom/typesafe/config/impl/SimpleConfig;->addWrongType(Ljava/util/List;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V

    .line 1106
    .end local v0    # "listRef":Lcom/typesafe/config/impl/SimpleConfigList;
    .end local v1    # "listValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_0
    goto :goto_2

    .line 1097
    :cond_3
    :goto_1
    goto :goto_2

    .line 1108
    :cond_4
    invoke-static {p3, p1, p2, p0}, Lcom/typesafe/config/impl/SimpleConfig;->addWrongType(Ljava/util/List;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V

    .line 1110
    :goto_2
    return-void
.end method

.method static checkValid(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/util/List;)V
    .locals 2
    .param p0, "path"    # Lcom/typesafe/config/impl/Path;
    .param p1, "referenceType"    # Lcom/typesafe/config/ConfigValueType;
    .param p2, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/Path;",
            "Lcom/typesafe/config/ConfigValueType;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;)V"
        }
    .end annotation

    .line 1071
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/SimpleConfig;->haveCompatibleTypes(Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    if-ne p1, v0, :cond_2

    instance-of v0, p2, Lcom/typesafe/config/impl/SimpleConfigObject;

    if-eqz v0, :cond_2

    .line 1074
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    invoke-static {p2, v0}, Lcom/typesafe/config/impl/DefaultTransformer;->transform(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 1076
    .local v0, "listValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v1, v0, Lcom/typesafe/config/impl/SimpleConfigList;

    if-nez v1, :cond_0

    .line 1077
    invoke-static {p3, p1, p2, p0}, Lcom/typesafe/config/impl/SimpleConfig;->addWrongType(Ljava/util/List;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V

    .line 1078
    .end local v0    # "listValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_0
    goto :goto_0

    .line 1080
    :cond_1
    invoke-static {p3, p1, p2, p0}, Lcom/typesafe/config/impl/SimpleConfig;->addWrongType(Ljava/util/List;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/Path;)V

    .line 1082
    :cond_2
    :goto_0
    return-void
.end method

.method private static checkValidObject(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/AbstractConfigObject;Ljava/util/List;)V
    .locals 7
    .param p0, "path"    # Lcom/typesafe/config/impl/Path;
    .param p1, "reference"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .param p2, "value"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/Path;",
            "Lcom/typesafe/config/impl/AbstractConfigObject;",
            "Lcom/typesafe/config/impl/AbstractConfigObject;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigException$ValidationProblem;",
            ">;)V"
        }
    .end annotation

    .line 1031
    .local p3, "accumulator":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    invoke-virtual {p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1032
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1035
    .local v2, "key":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1036
    invoke-static {v2}, Lcom/typesafe/config/impl/Path;->newKey(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/typesafe/config/impl/Path;->prepend(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/Path;

    move-result-object v3

    .local v3, "childPath":Lcom/typesafe/config/impl/Path;
    goto :goto_1

    .line 1038
    .end local v3    # "childPath":Lcom/typesafe/config/impl/Path;
    :cond_0
    invoke-static {v2}, Lcom/typesafe/config/impl/Path;->newKey(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v3

    .line 1040
    .restart local v3    # "childPath":Lcom/typesafe/config/impl/Path;
    :goto_1
    invoke-virtual {p2, v2}, Lcom/typesafe/config/impl/AbstractConfigObject;->get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v4

    .line 1041
    .local v4, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-nez v4, :cond_1

    .line 1042
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/typesafe/config/ConfigValue;

    invoke-virtual {p2}, Lcom/typesafe/config/impl/AbstractConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v6

    invoke-static {p3, v5, v3, v6}, Lcom/typesafe/config/impl/SimpleConfig;->addMissing(Ljava/util/List;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;)V

    goto :goto_2

    .line 1044
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/typesafe/config/ConfigValue;

    invoke-static {v3, v5, v4, p3}, Lcom/typesafe/config/impl/SimpleConfig;->checkValid(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/util/List;)V

    .line 1046
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "childPath":Lcom/typesafe/config/impl/Path;
    .end local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_2
    goto :goto_0

    .line 1047
    :cond_2
    return-void
.end method

.method private static couldBeNull(Lcom/typesafe/config/impl/AbstractConfigValue;)Z
    .locals 2
    .param p0, "v"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 980
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->NULL:Lcom/typesafe/config/ConfigValueType;

    invoke-static {p0, v0}, Lcom/typesafe/config/impl/DefaultTransformer;->transform(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 981
    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v0

    sget-object v1, Lcom/typesafe/config/ConfigValueType;->NULL:Lcom/typesafe/config/ConfigValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 980
    :goto_0
    return v0
.end method

.method private static findKey(Lcom/typesafe/config/impl/AbstractConfigObject;Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p0, "self"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expected"    # Lcom/typesafe/config/ConfigValueType;
    .param p3, "originalPath"    # Lcom/typesafe/config/impl/Path;

    .line 150
    invoke-static {p0, p1, p2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->findKeyOrNull(Lcom/typesafe/config/impl/AbstractConfigObject;Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->throwIfNull(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method private static findKeyOrNull(Lcom/typesafe/config/impl/AbstractConfigObject;Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 6
    .param p0, "self"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expected"    # Lcom/typesafe/config/ConfigValueType;
    .param p3, "originalPath"    # Lcom/typesafe/config/impl/Path;

    .line 155
    invoke-virtual {p0, p1, p3}, Lcom/typesafe/config/impl/AbstractConfigObject;->peekAssumingResolved(Ljava/lang/String;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 156
    .local v0, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v0, :cond_3

    .line 159
    if-eqz p2, :cond_0

    .line 160
    invoke-static {v0, p2}, Lcom/typesafe/config/impl/DefaultTransformer;->transform(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 162
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v1

    if-eq v1, p2, :cond_2

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v1

    sget-object v2, Lcom/typesafe/config/ConfigValueType;->NULL:Lcom/typesafe/config/ConfigValueType;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    new-instance v1, Lcom/typesafe/config/ConfigException$WrongType;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-virtual {p3}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/typesafe/config/ConfigException$WrongType;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_2
    :goto_0
    return-object v0

    .line 157
    :cond_3
    new-instance v1, Lcom/typesafe/config/ConfigException$Missing;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-virtual {p3}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/typesafe/config/ConfigException$Missing;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    throw v1
.end method

.method private static findOrNull(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 5
    .param p0, "self"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;
    .param p2, "expected"    # Lcom/typesafe/config/ConfigValueType;
    .param p3, "originalPath"    # Lcom/typesafe/config/impl/Path;

    .line 172
    :try_start_0
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    .line 174
    .local v1, "next":Lcom/typesafe/config/impl/Path;
    if-nez v1, :cond_0

    .line 175
    invoke-static {p0, v0, p2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->findKeyOrNull(Lcom/typesafe/config/impl/AbstractConfigObject;Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    return-object v2

    .line 177
    :cond_0
    sget-object v2, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    .line 179
    invoke-virtual {p3}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v3

    invoke-virtual {v1}, Lcom/typesafe/config/impl/Path;->length()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p3, v4, v3}, Lcom/typesafe/config/impl/Path;->subPath(II)Lcom/typesafe/config/impl/Path;

    move-result-object v3

    .line 177
    invoke-static {p0, v0, v2, v3}, Lcom/typesafe/config/impl/SimpleConfig;->findKey(Lcom/typesafe/config/impl/AbstractConfigObject;Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 180
    .local v2, "o":Lcom/typesafe/config/impl/AbstractConfigObject;
    if-eqz v2, :cond_1

    .line 181
    invoke-static {v2, v1, p2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->findOrNull(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v3

    return-object v3

    .line 180
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local p0    # "self":Lcom/typesafe/config/impl/AbstractConfigObject;
    .end local p1    # "path":Lcom/typesafe/config/impl/Path;
    .end local p2    # "expected":Lcom/typesafe/config/ConfigValueType;
    .end local p3    # "originalPath":Lcom/typesafe/config/impl/Path;
    throw v3
    :try_end_0
    .catch Lcom/typesafe/config/ConfigException$NotResolved; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "next":Lcom/typesafe/config/impl/Path;
    .end local v2    # "o":Lcom/typesafe/config/impl/AbstractConfigObject;
    .restart local p0    # "self":Lcom/typesafe/config/impl/AbstractConfigObject;
    .restart local p1    # "path":Lcom/typesafe/config/impl/Path;
    .restart local p2    # "expected":Lcom/typesafe/config/ConfigValueType;
    .restart local p3    # "originalPath":Lcom/typesafe/config/impl/Path;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lcom/typesafe/config/ConfigException$NotResolved;
    invoke-static {p1, v0}, Lcom/typesafe/config/impl/ConfigImpl;->improveNotResolved(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigException$NotResolved;)Lcom/typesafe/config/ConfigException$NotResolved;

    move-result-object v1

    throw v1
.end method

.method private findOrNull(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "pathExpression"    # Lcom/typesafe/config/impl/Path;
    .param p2, "expected"    # Lcom/typesafe/config/ConfigValueType;
    .param p3, "originalPath"    # Lcom/typesafe/config/impl/Path;

    .line 198
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-static {v0, p1, p2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->findOrNull(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method private findOrNull(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 2
    .param p1, "pathExpression"    # Ljava/lang/String;
    .param p2, "expected"    # Lcom/typesafe/config/ConfigValueType;

    .line 202
    invoke-static {p1}, Lcom/typesafe/config/impl/Path;->newPath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 203
    .local v0, "path":Lcom/typesafe/config/impl/Path;
    invoke-direct {p0, v0, p2, v0}, Lcom/typesafe/config/impl/SimpleConfig;->findOrNull(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    return-object v1
.end method

.method private static findPaths(Ljava/util/Set;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigObject;)V
    .locals 7
    .param p1, "parent"    # Lcom/typesafe/config/impl/Path;
    .param p2, "obj"    # Lcom/typesafe/config/impl/AbstractConfigObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigValue;",
            ">;>;",
            "Lcom/typesafe/config/impl/Path;",
            "Lcom/typesafe/config/impl/AbstractConfigObject;",
            ")V"
        }
    .end annotation

    .line 117
    .local p0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;>;"
    invoke-virtual {p2}, Lcom/typesafe/config/impl/AbstractConfigObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    .local v2, "elem":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/ConfigValue;

    .line 120
    .local v3, "v":Lcom/typesafe/config/ConfigValue;
    invoke-static {v2}, Lcom/typesafe/config/impl/Path;->newKey(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v4

    .line 121
    .local v4, "path":Lcom/typesafe/config/impl/Path;
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {v4, p1}, Lcom/typesafe/config/impl/Path;->prepend(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/Path;

    move-result-object v4

    .line 123
    :cond_0
    instance-of v5, v3, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v5, :cond_1

    .line 124
    move-object v5, v3

    check-cast v5, Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-static {p0, v4, v5}, Lcom/typesafe/config/impl/SimpleConfig;->findPaths(Ljava/util/Set;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigObject;)V

    goto :goto_1

    .line 125
    :cond_1
    instance-of v5, v3, Lcom/typesafe/config/impl/ConfigNull;

    if-eqz v5, :cond_2

    goto :goto_1

    .line 128
    :cond_2
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-virtual {v4}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;"
    .end local v2    # "elem":Ljava/lang/String;
    .end local v3    # "v":Lcom/typesafe/config/ConfigValue;
    .end local v4    # "path":Lcom/typesafe/config/impl/Path;
    :goto_1
    goto :goto_0

    .line 131
    :cond_3
    return-void
.end method

.method private getBytesBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 293
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 295
    .local v0, "v":Lcom/typesafe/config/ConfigValue;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1
    :try_end_0
    .catch Lcom/typesafe/config/ConfigException$WrongType; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .local v1, "bytes":Ljava/math/BigInteger;
    goto :goto_0

    .line 296
    .end local v1    # "bytes":Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Lcom/typesafe/config/ConfigException$WrongType;
    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v3

    .line 297
    invoke-static {v2, v3, p1}, Lcom/typesafe/config/impl/SimpleConfig;->parseBytes(Ljava/lang/String;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v1, v2

    .line 300
    .local v1, "bytes":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_0

    .line 303
    return-object v1

    .line 301
    :cond_0
    new-instance v2, Lcom/typesafe/config/ConfigException$BadValue;

    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to construct memory size with negative number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private getBytesListBigInteger(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getList(Ljava/lang/String;)Lcom/typesafe/config/ConfigList;

    move-result-object v1

    .line 310
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/typesafe/config/ConfigValue;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/ConfigValue;

    .line 312
    .local v3, "v":Lcom/typesafe/config/ConfigValue;
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v4

    sget-object v5, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    if-ne v4, v5, :cond_0

    .line 313
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .local v4, "bytes":Ljava/math/BigInteger;
    goto :goto_1

    .line 314
    .end local v4    # "bytes":Ljava/math/BigInteger;
    :cond_0
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v4

    sget-object v5, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    if-ne v4, v5, :cond_2

    .line 315
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 316
    .local v4, "s":Ljava/lang/String;
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/typesafe/config/impl/SimpleConfig;->parseBytes(Ljava/lang/String;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    .line 317
    .local v4, "bytes":Ljava/math/BigInteger;
    nop

    .line 322
    :goto_1
    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-ltz v5, :cond_1

    .line 326
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v3    # "v":Lcom/typesafe/config/ConfigValue;
    .end local v4    # "bytes":Ljava/math/BigInteger;
    goto :goto_0

    .line 323
    .restart local v3    # "v":Lcom/typesafe/config/ConfigValue;
    .restart local v4    # "bytes":Ljava/math/BigInteger;
    :cond_1
    new-instance v2, Lcom/typesafe/config/ConfigException$BadValue;

    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to construct ConfigMemorySize with negative number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, p1, v6}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 318
    .end local v4    # "bytes":Ljava/math/BigInteger;
    :cond_2
    new-instance v2, Lcom/typesafe/config/ConfigException$WrongType;

    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v4

    .line 319
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v5

    .line 320
    invoke-virtual {v5}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "memory size string or number of bytes"

    invoke-direct {v2, v4, p1, v6, v5}, Lcom/typesafe/config/ConfigException$WrongType;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 328
    .end local v3    # "v":Lcom/typesafe/config/ConfigValue;
    :cond_3
    return-object v0
.end method

.method private getConfigNumber(Ljava/lang/String;)Lcom/typesafe/config/impl/ConfigNumber;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 225
    .local v0, "v":Lcom/typesafe/config/ConfigValue;
    move-object v1, v0

    check-cast v1, Lcom/typesafe/config/impl/ConfigNumber;

    return-object v1
.end method

.method private static getDesc(Lcom/typesafe/config/ConfigValue;)Ljava/lang/String;
    .locals 3
    .param p0, "refValue"    # Lcom/typesafe/config/ConfigValue;

    .line 934
    instance-of v0, p0, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v0, :cond_1

    .line 935
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 936
    .local v0, "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object with keys "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 939
    :cond_0
    invoke-interface {p0}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v1

    invoke-static {v1}, Lcom/typesafe/config/impl/SimpleConfig;->getDesc(Lcom/typesafe/config/ConfigValueType;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 941
    .end local v0    # "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    :cond_1
    invoke-interface {p0}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfig;->getDesc(Lcom/typesafe/config/ConfigValueType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDesc(Lcom/typesafe/config/ConfigValueType;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Lcom/typesafe/config/ConfigValueType;

    .line 930
    invoke-virtual {p0}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEnumValue(Ljava/lang/String;Ljava/lang/Class;Lcom/typesafe/config/ConfigValue;)Ljava/lang/Enum;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "enumConfigValue"    # Lcom/typesafe/config/ConfigValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/typesafe/config/ConfigValue;",
            ")TT;"
        }
    .end annotation

    .line 455
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p3}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    .local v0, "enumName":Ljava/lang/String;
    :try_start_0
    invoke-static {p2, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v2, "enumNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    .line 461
    .local v3, "enumConstants":[Ljava/lang/Enum;
    if-eqz v3, :cond_0

    .line 462
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 463
    .local v6, "enumConstant":Ljava/lang/Enum;
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v6    # "enumConstant":Ljava/lang/Enum;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 466
    :cond_0
    new-instance v4, Lcom/typesafe/config/ConfigException$BadValue;

    .line 467
    invoke-interface {p3}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v5

    .line 469
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6, v0, v2}, [Ljava/lang/Object;

    move-result-object v6

    .line 468
    const-string v7, "The enum class %s has no constant of the name \'%s\' (should be one of %s.)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, v6}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method private getHomogeneousUnwrappedList(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Ljava/util/List;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "expected"    # Lcom/typesafe/config/ConfigValueType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigValueType;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getList(Ljava/lang/String;)Lcom/typesafe/config/ConfigList;

    move-result-object v1

    .line 384
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/typesafe/config/ConfigValue;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/ConfigValue;

    .line 386
    .local v3, "cv":Lcom/typesafe/config/ConfigValue;
    move-object v4, v3

    check-cast v4, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 387
    .local v4, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz p2, :cond_0

    .line 388
    invoke-static {v4, p2}, Lcom/typesafe/config/impl/DefaultTransformer;->transform(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v4

    .line 390
    :cond_0
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v5

    if-ne v5, p2, :cond_1

    .line 394
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v3    # "cv":Lcom/typesafe/config/ConfigValue;
    .end local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 391
    .restart local v3    # "cv":Lcom/typesafe/config/ConfigValue;
    .restart local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_1
    new-instance v2, Lcom/typesafe/config/ConfigException$WrongType;

    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "list of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 392
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 393
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, p1, v6, v7}, Lcom/typesafe/config/ConfigException$WrongType;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 396
    .end local v3    # "cv":Lcom/typesafe/config/ConfigValue;
    .end local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_2
    return-object v0
.end method

.method private getHomogeneousWrappedList(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Ljava/util/List;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "expected"    # Lcom/typesafe/config/ConfigValueType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/typesafe/config/ConfigValue;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigValueType;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getList(Ljava/lang/String;)Lcom/typesafe/config/ConfigList;

    move-result-object v1

    .line 478
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/typesafe/config/ConfigValue;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/ConfigValue;

    .line 480
    .local v3, "cv":Lcom/typesafe/config/ConfigValue;
    move-object v4, v3

    check-cast v4, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 481
    .local v4, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz p2, :cond_0

    .line 482
    invoke-static {v4, p2}, Lcom/typesafe/config/impl/DefaultTransformer;->transform(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v4

    .line 484
    :cond_0
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v5

    if-ne v5, p2, :cond_1

    .line 488
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v3    # "cv":Lcom/typesafe/config/ConfigValue;
    .end local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 485
    .restart local v3    # "cv":Lcom/typesafe/config/ConfigValue;
    .restart local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_1
    new-instance v2, Lcom/typesafe/config/ConfigException$WrongType;

    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "list of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 486
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 487
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, p1, v6, v7}, Lcom/typesafe/config/ConfigException$WrongType;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 490
    .end local v3    # "cv":Lcom/typesafe/config/ConfigValue;
    .end local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_2
    return-object v0
.end method

.method private static getUnits(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 625
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 626
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 627
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 628
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    goto :goto_1

    .line 630
    :cond_0
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, -0x1

    .line 631
    goto :goto_0

    .line 632
    :cond_1
    :goto_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasPathPeek(Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;
    .locals 3
    .param p1, "pathExpression"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/typesafe/config/impl/Path;->newPath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 91
    .local v0, "path":Lcom/typesafe/config/impl/Path;
    :try_start_0
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v1, v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->peekPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1
    :try_end_0
    .catch Lcom/typesafe/config/ConfigException$NotResolved; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .local v1, "peeked":Lcom/typesafe/config/ConfigValue;
    nop

    .line 95
    return-object v1

    .line 92
    .end local v1    # "peeked":Lcom/typesafe/config/ConfigValue;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Lcom/typesafe/config/ConfigException$NotResolved;
    invoke-static {v0, v1}, Lcom/typesafe/config/impl/ConfigImpl;->improveNotResolved(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigException$NotResolved;)Lcom/typesafe/config/ConfigException$NotResolved;

    move-result-object v2

    throw v2
.end method

.method private static haveCompatibleTypes(Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Z
    .locals 1
    .param p0, "reference"    # Lcom/typesafe/config/ConfigValue;
    .param p1, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 985
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfig;->couldBeNull(Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    const/4 v0, 0x1

    return v0

    .line 989
    :cond_0
    invoke-interface {p0}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->haveCompatibleTypes(Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v0

    return v0
.end method

.method private static haveCompatibleTypes(Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/AbstractConfigValue;)Z
    .locals 3
    .param p0, "referenceType"    # Lcom/typesafe/config/ConfigValueType;
    .param p1, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 994
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->NULL:Lcom/typesafe/config/ConfigValueType;

    const/4 v1, 0x1

    if-eq p0, v0, :cond_9

    invoke-static {p1}, Lcom/typesafe/config/impl/SimpleConfig;->couldBeNull(Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 997
    :cond_0
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    const/4 v2, 0x0

    if-ne p0, v0, :cond_2

    .line 998
    instance-of v0, p1, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v0, :cond_1

    .line 999
    return v1

    .line 1001
    :cond_1
    return v2

    .line 1003
    :cond_2
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    if-ne p0, v0, :cond_5

    .line 1005
    instance-of v0, p1, Lcom/typesafe/config/impl/SimpleConfigList;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/typesafe/config/impl/SimpleConfigObject;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1008
    :cond_3
    return v2

    .line 1006
    :cond_4
    :goto_0
    return v1

    .line 1010
    :cond_5
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    if-ne p0, v0, :cond_6

    .line 1014
    return v1

    .line 1015
    :cond_6
    instance-of v0, p1, Lcom/typesafe/config/impl/ConfigString;

    if-eqz v0, :cond_7

    .line 1017
    return v1

    .line 1019
    :cond_7
    invoke-virtual {p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v0

    if-ne p0, v0, :cond_8

    .line 1020
    return v1

    .line 1022
    :cond_8
    return v2

    .line 996
    :cond_9
    :goto_1
    return v1
.end method

.method public static parseBytes(Ljava/lang/String;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "originForException"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "pathForException"    # Ljava/lang/String;

    .line 883
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->unicodeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfig;->getUnits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 885
    .local v1, "unitString":Ljava/lang/String;
    nop

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 885
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/typesafe/config/impl/ConfigImplUtil;->unicodeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "numberString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\'"

    if-eqz v3, :cond_2

    .line 895
    invoke-static {v1}, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->parseUnit(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;

    move-result-object v3

    .line 897
    .local v3, "units":Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;
    if-eqz v3, :cond_1

    .line 907
    :try_start_0
    const-string v5, "[0-9]+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 908
    iget-object v5, v3, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->bytes:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .local v4, "result":Ljava/math/BigInteger;
    goto :goto_0

    .line 910
    .end local v4    # "result":Ljava/math/BigInteger;
    :cond_0
    new-instance v5, Ljava/math/BigDecimal;

    iget-object v6, v3, Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;->bytes:Ljava/math/BigInteger;

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 911
    .local v5, "resultDecimal":Ljava/math/BigDecimal;
    invoke-virtual {v5}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    .end local v5    # "resultDecimal":Ljava/math/BigDecimal;
    .restart local v4    # "result":Ljava/math/BigInteger;
    :goto_0
    return-object v4

    .line 914
    .end local v4    # "result":Ljava/math/BigInteger;
    :catch_0
    move-exception v5

    .line 915
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/typesafe/config/ConfigException$BadValue;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse size-in-bytes number \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, p1, p2, v4}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 898
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v4, Lcom/typesafe/config/ConfigException$BadValue;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse size-in-bytes unit \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (try k, K, kB, KiB, kilobytes, kibibytes)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, p2, v5}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 891
    .end local v3    # "units":Lcom/typesafe/config/impl/SimpleConfig$MemoryUnit;
    :cond_2
    new-instance v3, Lcom/typesafe/config/ConfigException$BadValue;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No number in size-in-bytes value \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public static parseDuration(Ljava/lang/String;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)J
    .locals 11
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "originForException"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "pathForException"    # Ljava/lang/String;

    .line 737
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->unicodeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfig;->getUnits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, "originalUnitString":Ljava/lang/String;
    move-object v2, v1

    .line 740
    .local v2, "unitString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 741
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 740
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/typesafe/config/impl/ConfigImplUtil;->unicodeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 742
    .local v3, "numberString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 746
    .local v4, "units":Ljava/util/concurrent/TimeUnit;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "\'"

    if-eqz v5, :cond_10

    .line 751
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x2

    const-string v8, "s"

    if-le v5, v7, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 752
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 755
    :cond_0
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "millis"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 756
    const-string v5, "milliseconds"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_6

    .line 758
    :cond_1
    const-string v5, "us"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "micros"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "microseconds"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_5

    .line 760
    :cond_2
    const-string v5, "ns"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "nanos"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "nanoseconds"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_4

    .line 762
    :cond_3
    const-string v5, "d"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "days"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 764
    :cond_4
    const-string v5, "h"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "hours"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 766
    :cond_5
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "seconds"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    .line 768
    :cond_6
    const-string v5, "m"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "minutes"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_0

    .line 771
    :cond_7
    new-instance v5, Lcom/typesafe/config/ConfigException$BadValue;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse time unit \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' (try ns, us, ms, s, m, h, d)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, p2, v6}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 769
    :cond_8
    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_7

    .line 767
    :cond_9
    :goto_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_7

    .line 765
    :cond_a
    :goto_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_7

    .line 763
    :cond_b
    :goto_3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    goto :goto_7

    .line 761
    :cond_c
    :goto_4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_7

    .line 759
    :cond_d
    :goto_5
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_7

    .line 757
    :cond_e
    :goto_6
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 781
    :goto_7
    :try_start_0
    const-string v5, "[+-]?[0-9]+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 782
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    return-wide v5

    .line 784
    :cond_f
    const-wide/16 v7, 0x1

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    .line 785
    .local v7, "nanosInUnit":J
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v9, v7

    mul-double/2addr v5, v9

    double-to-long v5, v5

    return-wide v5

    .line 787
    .end local v7    # "nanosInUnit":J
    :catch_0
    move-exception v5

    .line 788
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/typesafe/config/ConfigException$BadValue;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse duration number \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, p1, p2, v6}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 747
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_10
    new-instance v5, Lcom/typesafe/config/ConfigException$BadValue;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No number in duration value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, p2, v6}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method

.method public static parsePeriod(Ljava/lang/String;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Ljava/time/Period;
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "originForException"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "pathForException"    # Ljava/lang/String;

    .line 653
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->unicodeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfig;->getUnits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "originalUnitString":Ljava/lang/String;
    move-object v2, v1

    .line 656
    .local v2, "unitString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 657
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 656
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/typesafe/config/impl/ConfigImplUtil;->unicodeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "numberString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "\'"

    if-eqz v4, :cond_9

    .line 667
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_0

    const-string v4, "s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 668
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    :cond_0
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "d"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "days"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    .line 674
    :cond_1
    const-string v4, "w"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "weeks"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 677
    :cond_2
    const-string v4, "m"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "mo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "months"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 680
    :cond_3
    const-string v4, "y"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "years"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 684
    :cond_4
    new-instance v4, Lcom/typesafe/config/ConfigException$BadValue;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse time unit \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (try d, w, mo, y)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, p2, v5}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 681
    :cond_5
    :goto_0
    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    .local v4, "units":Ljava/time/temporal/ChronoUnit;
    goto :goto_4

    .line 678
    .end local v4    # "units":Ljava/time/temporal/ChronoUnit;
    :cond_6
    :goto_1
    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    .restart local v4    # "units":Ljava/time/temporal/ChronoUnit;
    goto :goto_4

    .line 675
    .end local v4    # "units":Ljava/time/temporal/ChronoUnit;
    :cond_7
    :goto_2
    sget-object v4, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    .restart local v4    # "units":Ljava/time/temporal/ChronoUnit;
    goto :goto_4

    .line 672
    .end local v4    # "units":Ljava/time/temporal/ChronoUnit;
    :cond_8
    :goto_3
    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 691
    .restart local v4    # "units":Ljava/time/temporal/ChronoUnit;
    :goto_4
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v4}, Lcom/typesafe/config/impl/SimpleConfig;->periodOf(ILjava/time/temporal/ChronoUnit;)Ljava/time/Period;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 692
    :catch_0
    move-exception v6

    .line 693
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/typesafe/config/ConfigException$BadValue;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse duration number \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, p1, p2, v5}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 663
    .end local v4    # "units":Ljava/time/temporal/ChronoUnit;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    new-instance v4, Lcom/typesafe/config/ConfigException$BadValue;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No number in period value \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, p2, v5}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method private peekPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;

    .line 921
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->peekPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method private static periodOf(ILjava/time/temporal/ChronoUnit;)Ljava/time/Period;
    .locals 3
    .param p0, "n"    # I
    .param p1, "unit"    # Ljava/time/temporal/ChronoUnit;

    .line 701
    invoke-virtual {p1}, Ljava/time/temporal/ChronoUnit;->isTimeBased()Z

    move-result v0

    const-string v1, " cannot be converted to a java.time.Period"

    if-nez v0, :cond_0

    .line 705
    sget-object v0, Lcom/typesafe/config/impl/SimpleConfig$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {p1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 715
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :pswitch_0
    invoke-static {p0}, Ljava/time/Period;->ofYears(I)Ljava/time/Period;

    move-result-object v0

    return-object v0

    .line 711
    :pswitch_1
    invoke-static {p0}, Ljava/time/Period;->ofMonths(I)Ljava/time/Period;

    move-result-object v0

    return-object v0

    .line 709
    :pswitch_2
    invoke-static {p0}, Ljava/time/Period;->ofWeeks(I)Ljava/time/Period;

    move-result-object v0

    return-object v0

    .line 707
    :pswitch_3
    invoke-static {p0}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v0

    return-object v0

    .line 702
    :cond_0
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static throwIfNull(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 4
    .param p0, "v"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p1, "expected"    # Lcom/typesafe/config/ConfigValueType;
    .param p2, "originalPath"    # Lcom/typesafe/config/impl/Path;

    .line 141
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v0

    sget-object v1, Lcom/typesafe/config/ConfigValueType;->NULL:Lcom/typesafe/config/ConfigValueType;

    if-ne v0, v1, :cond_1

    .line 142
    new-instance v0, Lcom/typesafe/config/ConfigException$Null;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    invoke-virtual {p2}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/typesafe/config/ConfigException$Null;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    return-object p0
.end method

.method private toLong(Ljava/math/BigInteger;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "originForException"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "pathForException"    # Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 529
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 531
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BadValue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size-in-bytes value is out of range for a 64-bit long: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/typesafe/config/ConfigException$BadValue;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1192
    new-instance v0, Lcom/typesafe/config/impl/SerializedConfigValue;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SerializedConfigValue;-><init>(Lcom/typesafe/config/Config;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic atKey(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->atKey(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method atKey(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "key"    # Ljava/lang/String;

    .line 1177
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/typesafe/config/impl/AbstractConfigObject;->atKey(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method public atKey(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1182
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->atKey(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method public atPath(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 1187
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->atPath(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method public varargs checkValid(Lcom/typesafe/config/Config;[Ljava/lang/String;)V
    .locals 9
    .param p1, "reference"    # Lcom/typesafe/config/Config;
    .param p2, "restrictToPaths"    # [Ljava/lang/String;

    .line 1119
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfig;

    .line 1122
    .local v0, "ref":Lcom/typesafe/config/impl/SimpleConfig;
    invoke-virtual {v0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigObject;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v1

    sget-object v2, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v1, v2, :cond_6

    .line 1128
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigObject;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v1

    sget-object v2, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v1, v2, :cond_5

    .line 1134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .local v1, "problems":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    array-length v2, p2

    if-nez v2, :cond_0

    .line 1137
    invoke-virtual {v0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3, v1}, Lcom/typesafe/config/impl/SimpleConfig;->checkValidObject(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/AbstractConfigObject;Ljava/util/List;)V

    goto :goto_2

    .line 1139
    :cond_0
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    .line 1140
    .local v4, "p":Ljava/lang/String;
    invoke-static {v4}, Lcom/typesafe/config/impl/Path;->newPath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v5

    .line 1141
    .local v5, "path":Lcom/typesafe/config/impl/Path;
    invoke-direct {v0, v5}, Lcom/typesafe/config/impl/SimpleConfig;->peekPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v6

    .line 1142
    .local v6, "refValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v6, :cond_2

    .line 1143
    invoke-direct {p0, v5}, Lcom/typesafe/config/impl/SimpleConfig;->peekPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v7

    .line 1144
    .local v7, "child":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v7, :cond_1

    .line 1145
    invoke-static {v5, v6, v7, v1}, Lcom/typesafe/config/impl/SimpleConfig;->checkValid(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/util/List;)V

    goto :goto_1

    .line 1147
    :cond_1
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v8

    invoke-static {v1, v6, v5, v8}, Lcom/typesafe/config/impl/SimpleConfig;->addMissing(Ljava/util/List;Lcom/typesafe/config/ConfigValue;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigOrigin;)V

    .line 1139
    .end local v4    # "p":Ljava/lang/String;
    .end local v5    # "path":Lcom/typesafe/config/impl/Path;
    .end local v6    # "refValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v7    # "child":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1153
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1156
    return-void

    .line 1154
    :cond_4
    new-instance v2, Lcom/typesafe/config/ConfigException$ValidationFailed;

    invoke-direct {v2, v1}, Lcom/typesafe/config/ConfigException$ValidationFailed;-><init>(Ljava/lang/Iterable;)V

    throw v2

    .line 1129
    .end local v1    # "problems":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$ValidationProblem;>;"
    :cond_5
    new-instance v1, Lcom/typesafe/config/ConfigException$NotResolved;

    const-string v2, "need to Config#resolve() each config before using it, see the API docs for Config#resolve()"

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$NotResolved;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1123
    :cond_6
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "do not call checkValid() with an unresolved reference config, call Config#resolve(), see Config#resolve() API docs"

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
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

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/typesafe/config/ConfigValue;>;>;"
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/SimpleConfig;->findPaths(Ljava/util/Set;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigObject;)V

    .line 137
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 604
    instance-of v0, p1, Lcom/typesafe/config/impl/SimpleConfig;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/SimpleConfig;

    iget-object v1, v1, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v0, v1}, Lcom/typesafe/config/impl/AbstractConfigObject;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 607
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method find(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "pathExpression"    # Lcom/typesafe/config/impl/Path;
    .param p2, "expected"    # Lcom/typesafe/config/ConfigValueType;
    .param p3, "originalPath"    # Lcom/typesafe/config/impl/Path;

    .line 189
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-static {v0, p1, p2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->findOrNull(Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/typesafe/config/impl/SimpleConfig;->throwIfNull(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 2
    .param p1, "pathExpression"    # Ljava/lang/String;
    .param p2, "expected"    # Lcom/typesafe/config/ConfigValueType;

    .line 193
    invoke-static {p1}, Lcom/typesafe/config/impl/Path;->newPath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 194
    .local v0, "path":Lcom/typesafe/config/impl/Path;
    invoke-virtual {p0, v0, p2, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValueType;Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    return-object v1
.end method

.method public getAnyRef(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 281
    .local v0, "v":Lcom/typesafe/config/ConfigValue;
    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAnyRefList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
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

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getList(Ljava/lang/String;)Lcom/typesafe/config/ConfigList;

    move-result-object v1

    .line 512
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/typesafe/config/ConfigValue;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/ConfigValue;

    .line 513
    .local v3, "v":Lcom/typesafe/config/ConfigValue;
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    .end local v3    # "v":Lcom/typesafe/config/ConfigValue;
    goto :goto_0

    .line 515
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 219
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->BOOLEAN:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 220
    .local v0, "v":Lcom/typesafe/config/ConfigValue;
    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getBooleanList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
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

    .line 401
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->BOOLEAN:Lcom/typesafe/config/ConfigValueType;

    invoke-direct {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->getHomogeneousUnwrappedList(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 286
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getBytesBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 287
    .local v0, "bytes":Ljava/math/BigInteger;
    sget-object v1, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p1, v1}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    .line 288
    .local v1, "v":Lcom/typesafe/config/ConfigValue;
    invoke-interface {v1}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v2

    invoke-direct {p0, v0, v2, p1}, Lcom/typesafe/config/impl/SimpleConfig;->toLong(Ljava/math/BigInteger;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public getBytesList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
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

    .line 520
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 521
    .local v0, "v":Lcom/typesafe/config/ConfigValue;
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getBytesListBigInteger(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/typesafe/config/impl/SimpleConfig$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/typesafe/config/impl/SimpleConfig$$ExternalSyntheticLambda0;-><init>(Lcom/typesafe/config/impl/SimpleConfig;Lcom/typesafe/config/ConfigValue;Ljava/lang/String;)V

    .line 522
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 523
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 521
    return-object v1
.end method

.method public bridge synthetic getConfig(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getConfig(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method public getConfig(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 275
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getObject(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->toConfig()Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfigList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
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

    .line 500
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getObjectList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 501
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/Config;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/ConfigObject;

    .line 503
    .local v3, "o":Lcom/typesafe/config/ConfigObject;
    invoke-interface {v3}, Lcom/typesafe/config/ConfigObject;->toConfig()Lcom/typesafe/config/Config;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    .end local v3    # "o":Lcom/typesafe/config/ConfigObject;
    goto :goto_0

    .line 505
    :cond_0
    return-object v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 246
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDoubleList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
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

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getNumberList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 433
    .local v1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 434
    .local v3, "n":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    .end local v3    # "n":Ljava/lang/Number;
    goto :goto_0

    .line 436
    :cond_0
    return-object v0
.end method

.method public getDuration(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 350
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 351
    .local v0, "v":Lcom/typesafe/config/ConfigValue;
    nop

    .line 352
    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/typesafe/config/impl/SimpleConfig;->parseDuration(Ljava/lang/String;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 351
    invoke-virtual {p2, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 354
    .local v1, "result":J
    return-wide v1
.end method

.method public getDuration(Ljava/lang/String;)Ljava/time/Duration;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 359
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 360
    .local v0, "v":Lcom/typesafe/config/ConfigValue;
    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/typesafe/config/impl/SimpleConfig;->parseDuration(Ljava/lang/String;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)J

    move-result-wide v1

    .line 361
    .local v1, "nanos":J
    invoke-static {v1, v2}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v3

    return-object v3
.end method

.method public getDurationList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
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

    .line 570
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->getDurationList(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    .line 571
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 572
    .local v1, "builder":Ljava/util/List;, "Ljava/util/List<Ljava/time/Duration;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 573
    .local v3, "value":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    .end local v3    # "value":Ljava/lang/Long;
    goto :goto_0

    .line 575
    :cond_0
    return-object v1
.end method

.method public getDurationList(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
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

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getList(Ljava/lang/String;)Lcom/typesafe/config/ConfigList;

    move-result-object v1

    .line 547
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/typesafe/config/ConfigValue;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/ConfigValue;

    .line 548
    .local v3, "v":Lcom/typesafe/config/ConfigValue;
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v4

    sget-object v5, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    if-ne v4, v5, :cond_0

    .line 549
    nop

    .line 550
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 549
    invoke-virtual {p2, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 552
    .local v4, "n":Ljava/lang/Long;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    .end local v4    # "n":Ljava/lang/Long;
    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v4

    sget-object v5, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    if-ne v4, v5, :cond_1

    .line 554
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 555
    .local v4, "s":Ljava/lang/String;
    nop

    .line 556
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/typesafe/config/impl/SimpleConfig;->parseDuration(Ljava/lang/String;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 555
    invoke-virtual {p2, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 558
    .local v5, "n":Ljava/lang/Long;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "n":Ljava/lang/Long;
    nop

    .line 564
    .end local v3    # "v":Lcom/typesafe/config/ConfigValue;
    :goto_1
    goto :goto_0

    .line 560
    .restart local v3    # "v":Lcom/typesafe/config/ConfigValue;
    :cond_1
    new-instance v2, Lcom/typesafe/config/ConfigException$WrongType;

    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v4

    .line 562
    invoke-interface {v3}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "duration string or number of milliseconds"

    invoke-direct {v2, v4, p1, v6, v5}, Lcom/typesafe/config/ConfigException$WrongType;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 565
    .end local v3    # "v":Lcom/typesafe/config/ConfigValue;
    :cond_2
    return-object v0
.end method

.method public getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2
    .param p2, "path"    # Ljava/lang/String;
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

    .line 257
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p2, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 258
    .local v0, "v":Lcom/typesafe/config/ConfigValue;
    invoke-direct {p0, p2, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->getEnumValue(Ljava/lang/String;Ljava/lang/Class;Lcom/typesafe/config/ConfigValue;)Ljava/lang/Enum;

    move-result-object v1

    return-object v1
.end method

.method public getEnumList(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p2, "path"    # Ljava/lang/String;
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

    .line 446
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-direct {p0, p2, v0}, Lcom/typesafe/config/impl/SimpleConfig;->getHomogeneousWrappedList(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Ljava/util/List;

    move-result-object v0

    .line 447
    .local v0, "enumNames":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/ConfigString;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v1, "enumList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/ConfigString;

    .line 449
    .local v3, "enumName":Lcom/typesafe/config/impl/ConfigString;
    invoke-direct {p0, p2, p1, v3}, Lcom/typesafe/config/impl/SimpleConfig;->getEnumValue(Ljava/lang/String;Ljava/lang/Class;Lcom/typesafe/config/ConfigValue;)Ljava/lang/Enum;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v3    # "enumName":Lcom/typesafe/config/impl/ConfigString;
    goto :goto_0

    .line 451
    :cond_0
    return-object v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 235
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getConfigNumber(Ljava/lang/String;)Lcom/typesafe/config/impl/ConfigNumber;

    move-result-object v0

    .line 236
    .local v0, "n":Lcom/typesafe/config/impl/ConfigNumber;
    invoke-virtual {v0, p1}, Lcom/typesafe/config/impl/ConfigNumber;->intValueRangeChecked(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getIntList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
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

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    invoke-direct {p0, p1, v1}, Lcom/typesafe/config/impl/SimpleConfig;->getHomogeneousWrappedList(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Ljava/util/List;

    move-result-object v1

    .line 413
    .local v1, "numbers":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 414
    .local v3, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    move-object v4, v3

    check-cast v4, Lcom/typesafe/config/impl/ConfigNumber;

    invoke-virtual {v4, p1}, Lcom/typesafe/config/impl/ConfigNumber;->intValueRangeChecked(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 416
    :cond_0
    return-object v0
.end method

.method public getIsNull(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->findOrNull(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 214
    .local v0, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v1

    sget-object v2, Lcom/typesafe/config/ConfigValueType;->NULL:Lcom/typesafe/config/ConfigValueType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getList(Ljava/lang/String;)Lcom/typesafe/config/ConfigList;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 263
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->LIST:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 264
    .local v0, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    move-object v1, v0

    check-cast v1, Lcom/typesafe/config/ConfigList;

    return-object v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
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

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getNumberList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 423
    .local v1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 424
    .local v3, "n":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v3    # "n":Ljava/lang/Number;
    goto :goto_0

    .line 426
    :cond_0
    return-object v0
.end method

.method public getMemorySize(Ljava/lang/String;)Lcom/typesafe/config/ConfigMemorySize;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 333
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getBytesBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/ConfigMemorySize;->ofBytes(Ljava/math/BigInteger;)Lcom/typesafe/config/ConfigMemorySize;

    move-result-object v0

    return-object v0
.end method

.method public getMemorySizeList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
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

    .line 538
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getBytesListBigInteger(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/typesafe/config/impl/SimpleConfig$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/typesafe/config/impl/SimpleConfig$$ExternalSyntheticLambda1;-><init>()V

    .line 539
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 540
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 538
    return-object v0
.end method

.method public getMilliseconds(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->getDuration(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMillisecondsList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
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

    .line 581
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->getDurationList(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNanoseconds(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->getDuration(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getNanosecondsList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
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

    .line 587
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->getDurationList(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 230
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getConfigNumber(Ljava/lang/String;)Lcom/typesafe/config/impl/ConfigNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ConfigNumber;->unwrapped()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getNumberList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
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

    .line 406
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->NUMBER:Lcom/typesafe/config/ConfigValueType;

    invoke-direct {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->getHomogeneousUnwrappedList(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getObject(Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getObject(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 269
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 270
    .local v0, "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    return-object v0
.end method

.method public getObjectList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/typesafe/config/ConfigObject;",
            ">;"
        }
    .end annotation

    .line 495
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->OBJECT:Lcom/typesafe/config/ConfigValueType;

    invoke-direct {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->getHomogeneousWrappedList(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPeriod(Ljava/lang/String;)Ljava/time/Period;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 366
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 367
    .local v0, "v":Lcom/typesafe/config/ConfigValue;
    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/typesafe/config/impl/SimpleConfig;->parsePeriod(Ljava/lang/String;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 251
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 252
    .local v0, "v":Lcom/typesafe/config/ConfigValue;
    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getStringList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
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

    .line 441
    sget-object v0, Lcom/typesafe/config/ConfigValueType;->STRING:Lcom/typesafe/config/ConfigValueType;

    invoke-direct {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->getHomogeneousUnwrappedList(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTemporal(Ljava/lang/String;)Ljava/time/temporal/TemporalAmount;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 373
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getDuration(Ljava/lang/String;)Ljava/time/Duration;

    move-result-object v0
    :try_end_0
    .catch Lcom/typesafe/config/ConfigException$BadValue; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Lcom/typesafe/config/ConfigException$BadValue;
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getValue(Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->getValue(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->find(Ljava/lang/String;Lcom/typesafe/config/ConfigValueType;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public hasPath(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pathExpression"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->hasPathPeek(Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;

    move-result-object v0

    .line 101
    .local v0, "peeked":Lcom/typesafe/config/ConfigValue;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v1

    sget-object v2, Lcom/typesafe/config/ConfigValueType;->NULL:Lcom/typesafe/config/ConfigValueType;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPathOrNull(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->hasPathPeek(Ljava/lang/String;)Lcom/typesafe/config/ConfigValue;

    move-result-object v0

    .line 107
    .local v0, "peeked":Lcom/typesafe/config/ConfigValue;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x29

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isResolved()Z
    .locals 2

    .line 1114
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v0

    sget-object v1, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$getBytesList$0$com-typesafe-config-impl-SimpleConfig(Lcom/typesafe/config/ConfigValue;Ljava/lang/String;Ljava/math/BigInteger;)Ljava/lang/Long;
    .locals 1
    .param p1, "v"    # Lcom/typesafe/config/ConfigValue;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "bytes"    # Ljava/math/BigInteger;

    .line 522
    invoke-interface {p1}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    invoke-direct {p0, p3, v0, p2}, Lcom/typesafe/config/impl/SimpleConfig;->toLong(Ljava/math/BigInteger;Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public origin()Lcom/typesafe/config/ConfigOrigin;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolve()Lcom/typesafe/config/Config;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->resolve()Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolve(Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->resolve(Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method public resolve()Lcom/typesafe/config/impl/SimpleConfig;
    .locals 1

    .line 64
    invoke-static {}, Lcom/typesafe/config/ConfigResolveOptions;->defaults()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/SimpleConfig;->resolve(Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 1
    .param p1, "options"    # Lcom/typesafe/config/ConfigResolveOptions;

    .line 69
    invoke-virtual {p0, p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->resolveWith(Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolveWith(Lcom/typesafe/config/Config;)Lcom/typesafe/config/Config;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->resolveWith(Lcom/typesafe/config/Config;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolveWith(Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/Config;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfig;->resolveWith(Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method public resolveWith(Lcom/typesafe/config/Config;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 1
    .param p1, "source"    # Lcom/typesafe/config/Config;

    .line 74
    invoke-static {}, Lcom/typesafe/config/ConfigResolveOptions;->defaults()Lcom/typesafe/config/ConfigResolveOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/typesafe/config/impl/SimpleConfig;->resolveWith(Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method public resolveWith(Lcom/typesafe/config/Config;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 3
    .param p1, "source"    # Lcom/typesafe/config/Config;
    .param p2, "options"    # Lcom/typesafe/config/ConfigResolveOptions;

    .line 79
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/SimpleConfig;

    iget-object v1, v1, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-static {v0, v1, p2}, Lcom/typesafe/config/impl/ResolveContext;->resolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigObject;Lcom/typesafe/config/ConfigResolveOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 81
    .local v0, "resolved":Lcom/typesafe/config/impl/AbstractConfigValue;
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    if-ne v0, v1, :cond_0

    .line 82
    return-object p0

    .line 84
    :cond_0
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfig;

    move-object v2, v0

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-direct {v1, v2}, Lcom/typesafe/config/impl/SimpleConfig;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V

    return-object v1
.end method

.method public bridge synthetic root()Lcom/typesafe/config/ConfigObject;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public root()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    return-object v0
.end method

.method public bridge synthetic toFallbackValue()Lcom/typesafe/config/ConfigValue;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->toFallbackValue()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public toFallbackValue()Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/Config;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigMergeable;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method public withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 1
    .param p1, "other"    # Lcom/typesafe/config/ConfigMergeable;

    .line 599
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfig;->object:Lcom/typesafe/config/impl/AbstractConfigObject;

    invoke-virtual {v0, p1}, Lcom/typesafe/config/impl/AbstractConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->toConfig()Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withOnlyPath(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->withOnlyPath(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method public withOnlyPath(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 3
    .param p1, "pathExpression"    # Ljava/lang/String;

    .line 1160
    invoke-static {p1}, Lcom/typesafe/config/impl/Path;->newPath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 1161
    .local v0, "path":Lcom/typesafe/config/impl/Path;
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfig;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->withOnlyPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/impl/SimpleConfig;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V

    return-object v1
.end method

.method public bridge synthetic withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/Config;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleConfig;->withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Ljava/lang/String;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 3
    .param p1, "pathExpression"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/typesafe/config/ConfigValue;

    .line 1172
    invoke-static {p1}, Lcom/typesafe/config/impl/Path;->newPath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 1173
    .local v0, "path":Lcom/typesafe/config/impl/Path;
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfig;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/typesafe/config/impl/AbstractConfigObject;->withValue(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/impl/SimpleConfig;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V

    return-object v1
.end method

.method public bridge synthetic withoutPath(Ljava/lang/String;)Lcom/typesafe/config/Config;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/SimpleConfig;->withoutPath(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;

    move-result-object p1

    return-object p1
.end method

.method public withoutPath(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfig;
    .locals 3
    .param p1, "pathExpression"    # Ljava/lang/String;

    .line 1166
    invoke-static {p1}, Lcom/typesafe/config/impl/Path;->newPath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 1167
    .local v0, "path":Lcom/typesafe/config/impl/Path;
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfig;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfig;->root()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/typesafe/config/impl/AbstractConfigObject;->withoutPath(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/typesafe/config/impl/SimpleConfig;-><init>(Lcom/typesafe/config/impl/AbstractConfigObject;)V

    return-object v1
.end method
