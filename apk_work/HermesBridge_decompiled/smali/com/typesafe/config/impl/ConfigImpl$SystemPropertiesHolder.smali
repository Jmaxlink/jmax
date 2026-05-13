.class Lcom/typesafe/config/impl/ConfigImpl$SystemPropertiesHolder;
.super Ljava/lang/Object;
.source "ConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemPropertiesHolder"
.end annotation


# static fields
.field static volatile systemProperties:Lcom/typesafe/config/impl/AbstractConfigObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 323
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->access$000()Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl$SystemPropertiesHolder;->systemProperties:Lcom/typesafe/config/impl/AbstractConfigObject;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
