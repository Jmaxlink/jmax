.class public final synthetic Lcom/typesafe/config/impl/SimpleConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/typesafe/config/impl/SimpleConfig;

.field public final synthetic f$1:Lcom/typesafe/config/ConfigValue;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/typesafe/config/impl/SimpleConfig;Lcom/typesafe/config/ConfigValue;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleConfig$$ExternalSyntheticLambda0;->f$0:Lcom/typesafe/config/impl/SimpleConfig;

    iput-object p2, p0, Lcom/typesafe/config/impl/SimpleConfig$$ExternalSyntheticLambda0;->f$1:Lcom/typesafe/config/ConfigValue;

    iput-object p3, p0, Lcom/typesafe/config/impl/SimpleConfig$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfig$$ExternalSyntheticLambda0;->f$0:Lcom/typesafe/config/impl/SimpleConfig;

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfig$$ExternalSyntheticLambda0;->f$1:Lcom/typesafe/config/ConfigValue;

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfig$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2, p1}, Lcom/typesafe/config/impl/SimpleConfig;->lambda$getBytesList$0$com-typesafe-config-impl-SimpleConfig(Lcom/typesafe/config/ConfigValue;Ljava/lang/String;Ljava/math/BigInteger;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
