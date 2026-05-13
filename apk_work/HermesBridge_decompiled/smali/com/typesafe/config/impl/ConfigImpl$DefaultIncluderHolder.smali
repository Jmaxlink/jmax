.class Lcom/typesafe/config/impl/ConfigImpl$DefaultIncluderHolder;
.super Ljava/lang/Object;
.source "ConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultIncluderHolder"
.end annotation


# static fields
.field static final defaultIncluder:Lcom/typesafe/config/ConfigIncluder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 289
    new-instance v0, Lcom/typesafe/config/impl/SimpleIncluder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/SimpleIncluder;-><init>(Lcom/typesafe/config/ConfigIncluder;)V

    sput-object v0, Lcom/typesafe/config/impl/ConfigImpl$DefaultIncluderHolder;->defaultIncluder:Lcom/typesafe/config/ConfigIncluder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
