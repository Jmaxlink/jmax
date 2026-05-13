.class Lio/netty/util/ResourceLeakDetector$TraceRecord;
.super Ljava/lang/Throwable;
.source "ResourceLeakDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ResourceLeakDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TraceRecord"
.end annotation


# static fields
.field private static final BOTTOM:Lio/netty/util/ResourceLeakDetector$TraceRecord;

.field private static final serialVersionUID:J = 0x542bc121fc24b620L


# instance fields
.field private final hintString:Ljava/lang/String;

.field private final next:Lio/netty/util/ResourceLeakDetector$TraceRecord;

.field private final pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 646
    new-instance v0, Lio/netty/util/ResourceLeakDetector$TraceRecord$1;

    invoke-direct {v0}, Lio/netty/util/ResourceLeakDetector$TraceRecord$1;-><init>()V

    sput-object v0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->BOTTOM:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 676
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->hintString:Ljava/lang/String;

    .line 678
    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->next:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    .line 679
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    .line 680
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/ResourceLeakDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/ResourceLeakDetector$1;

    .line 643
    invoke-direct {p0}, Lio/netty/util/ResourceLeakDetector$TraceRecord;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/netty/util/ResourceLeakDetector$TraceRecord;)V
    .locals 1
    .param p1, "next"    # Lio/netty/util/ResourceLeakDetector$TraceRecord;

    .line 669
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->hintString:Ljava/lang/String;

    .line 671
    iput-object p1, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->next:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    .line 672
    iget v0, p1, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    .line 673
    return-void
.end method

.method constructor <init>(Lio/netty/util/ResourceLeakDetector$TraceRecord;Ljava/lang/Object;)V
    .locals 1
    .param p1, "next"    # Lio/netty/util/ResourceLeakDetector$TraceRecord;
    .param p2, "hint"    # Ljava/lang/Object;

    .line 662
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 664
    instance-of v0, p2, Lio/netty/util/ResourceLeakHint;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/netty/util/ResourceLeakHint;

    invoke-interface {v0}, Lio/netty/util/ResourceLeakHint;->toHintString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->hintString:Ljava/lang/String;

    .line 665
    iput-object p1, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->next:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    .line 666
    iget v0, p1, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    .line 667
    return-void
.end method

.method static synthetic access$100()Lio/netty/util/ResourceLeakDetector$TraceRecord;
    .locals 1

    .line 643
    sget-object v0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->BOTTOM:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/util/ResourceLeakDetector$TraceRecord;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/util/ResourceLeakDetector$TraceRecord;

    .line 643
    iget v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->pos:I

    return v0
.end method

.method static synthetic access$400(Lio/netty/util/ResourceLeakDetector$TraceRecord;)Lio/netty/util/ResourceLeakDetector$TraceRecord;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/ResourceLeakDetector$TraceRecord;

    .line 643
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->next:Lio/netty/util/ResourceLeakDetector$TraceRecord;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 685
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->hintString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 686
    const-string v1, "\tHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/util/ResourceLeakDetector$TraceRecord;->hintString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakDetector$TraceRecord;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 692
    .local v1, "array":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 693
    aget-object v3, v1, v2

    .line 695
    .local v3, "element":Ljava/lang/StackTraceElement;
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$600()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 696
    .local v4, "exclusions":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 699
    aget-object v6, v4, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    aget-object v6, v4, v6

    .line 700
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 701
    goto :goto_2

    .line 696
    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 705
    .end local v5    # "k":I
    :cond_2
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    sget-object v5, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    .end local v4    # "exclusions":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
