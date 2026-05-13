.class public Lorg/fusesource/jansi/Ansi;
.super Ljava/lang/Object;
.source "Ansi.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fusesource/jansi/Ansi$NoAnsi;,
        Lorg/fusesource/jansi/Ansi$Consumer;,
        Lorg/fusesource/jansi/Ansi$Erase;,
        Lorg/fusesource/jansi/Ansi$Attribute;,
        Lorg/fusesource/jansi/Ansi$Color;
    }
.end annotation


# static fields
.field public static final DISABLE:Ljava/lang/String;

.field private static final FIRST_ESC_CHAR:C = '\u001b'

.field private static final SECOND_ESC_CHAR:C = '['

.field private static detector:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final holder:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final attributeOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final builder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/fusesource/jansi/Ansi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".disable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/fusesource/jansi/Ansi;->DISABLE:Ljava/lang/String;

    .line 160
    new-instance v0, Lorg/fusesource/jansi/Ansi$1;

    invoke-direct {v0}, Lorg/fusesource/jansi/Ansi$1;-><init>()V

    sput-object v0, Lorg/fusesource/jansi/Ansi;->detector:Ljava/util/concurrent/Callable;

    .line 179
    new-instance v0, Lorg/fusesource/jansi/Ansi$2;

    invoke-direct {v0}, Lorg/fusesource/jansi/Ansi$2;-><init>()V

    sput-object v0, Lorg/fusesource/jansi/Ansi;->holder:Ljava/lang/InheritableThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/fusesource/jansi/Ansi;-><init>(Ljava/lang/StringBuilder;)V

    .line 384
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/fusesource/jansi/Ansi;-><init>(Ljava/lang/StringBuilder;)V

    .line 393
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    .line 396
    iput-object p1, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    .line 397
    return-void
.end method

.method public constructor <init>(Lorg/fusesource/jansi/Ansi;)V
    .locals 2
    .param p1, "parent"    # Lorg/fusesource/jansi/Ansi;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lorg/fusesource/jansi/Ansi;-><init>(Ljava/lang/StringBuilder;)V

    .line 388
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 389
    return-void
.end method

.method private varargs _appendEscapeSequence(C[Ljava/lang/Object;)Lorg/fusesource/jansi/Ansi;
    .locals 4
    .param p1, "command"    # C
    .param p2, "options"    # [Ljava/lang/Object;

    .line 916
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 917
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 918
    array-length v0, p2

    .line 919
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 920
    if-eqz v1, :cond_0

    .line 921
    iget-object v2, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 923
    :cond_0
    aget-object v2, p2, v1

    if-eqz v2, :cond_1

    .line 924
    iget-object v2, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 919
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 928
    return-object p0
.end method

.method public static ansi()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 195
    invoke-static {}, Lorg/fusesource/jansi/Ansi;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lorg/fusesource/jansi/Ansi;

    invoke-direct {v0}, Lorg/fusesource/jansi/Ansi;-><init>()V

    return-object v0

    .line 198
    :cond_0
    new-instance v0, Lorg/fusesource/jansi/Ansi$NoAnsi;

    invoke-direct {v0}, Lorg/fusesource/jansi/Ansi$NoAnsi;-><init>()V

    return-object v0
.end method

.method public static ansi(I)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p0, "size"    # I

    .line 211
    invoke-static {}, Lorg/fusesource/jansi/Ansi;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lorg/fusesource/jansi/Ansi;

    invoke-direct {v0, p0}, Lorg/fusesource/jansi/Ansi;-><init>(I)V

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Lorg/fusesource/jansi/Ansi$NoAnsi;

    invoke-direct {v0, p0}, Lorg/fusesource/jansi/Ansi$NoAnsi;-><init>(I)V

    return-object v0
.end method

.method public static ansi(Ljava/lang/StringBuilder;)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p0, "builder"    # Ljava/lang/StringBuilder;

    .line 203
    invoke-static {}, Lorg/fusesource/jansi/Ansi;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Lorg/fusesource/jansi/Ansi;

    invoke-direct {v0, p0}, Lorg/fusesource/jansi/Ansi;-><init>(Ljava/lang/StringBuilder;)V

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Lorg/fusesource/jansi/Ansi$NoAnsi;

    invoke-direct {v0, p0}, Lorg/fusesource/jansi/Ansi$NoAnsi;-><init>(Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method private appendEscapeSequence(C)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "command"    # C

    .line 881
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 882
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 883
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 884
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 885
    return-object p0
.end method

.method private appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "command"    # C
    .param p2, "option"    # I

    .line 889
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 890
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 891
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 893
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 894
    return-object p0
.end method

.method private varargs appendEscapeSequence(C[Ljava/lang/Object;)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "command"    # C
    .param p2, "options"    # [Ljava/lang/Object;

    .line 898
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 899
    invoke-direct {p0, p1, p2}, Lorg/fusesource/jansi/Ansi;->_appendEscapeSequence(C[Ljava/lang/Object;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method private flushAttributes()V
    .locals 3

    .line 903
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x6d

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 906
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 907
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 908
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 910
    :cond_1
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/fusesource/jansi/Ansi;->_appendEscapeSequence(C[Ljava/lang/Object;)Lorg/fusesource/jansi/Ansi;

    .line 912
    :goto_0
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 913
    return-void
.end method

.method public static isDetected()Z
    .locals 2

    .line 173
    :try_start_0
    sget-object v0, Lorg/fusesource/jansi/Ansi;->detector:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method public static isEnabled()Z
    .locals 1

    .line 191
    sget-object v0, Lorg/fusesource/jansi/Ansi;->holder:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setDetector(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p0, "detector":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    if-eqz p0, :cond_0

    .line 168
    sput-object p0, Lorg/fusesource/jansi/Ansi;->detector:Ljava/util/concurrent/Callable;

    .line 169
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static setEnabled(Z)V
    .locals 2
    .param p0, "flag"    # Z

    .line 187
    sget-object v0, Lorg/fusesource/jansi/Ansi;->holder:Ljava/lang/InheritableThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 188
    return-void
.end method


# virtual methods
.method public a(C)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # C

    .line 754
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 755
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 756
    return-object p0
.end method

.method public a(D)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # D

    .line 784
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 785
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 786
    return-object p0
.end method

.method public a(F)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # F

    .line 790
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 791
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 792
    return-object p0
.end method

.method public a(I)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # I

    .line 796
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 797
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 798
    return-object p0
.end method

.method public a(J)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # J

    .line 802
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 803
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 804
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 778
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 779
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 780
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;II)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 772
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 773
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 774
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 808
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 809
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 810
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 742
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 743
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    return-object p0
.end method

.method public a(Ljava/lang/StringBuffer;)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # Ljava/lang/StringBuffer;

    .line 814
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 815
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 816
    return-object p0
.end method

.method public a(Lorg/fusesource/jansi/Ansi$Attribute;)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "attribute"    # Lorg/fusesource/jansi/Ansi$Attribute;

    .line 572
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/fusesource/jansi/Ansi$Attribute;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    return-object p0
.end method

.method public a(Z)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # Z

    .line 748
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 749
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 750
    return-object p0
.end method

.method public a([C)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # [C

    .line 766
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 767
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 768
    return-object p0
.end method

.method public a([CII)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "value"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 760
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 761
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 762
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lorg/fusesource/jansi/Ansi;->append(C)Lorg/fusesource/jansi/Ansi;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lorg/fusesource/jansi/Ansi;->append(Ljava/lang/CharSequence;)Lorg/fusesource/jansi/Ansi;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lorg/fusesource/jansi/Ansi;->append(Ljava/lang/CharSequence;II)Lorg/fusesource/jansi/Ansi;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "c"    # C

    .line 945
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 946
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 933
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 934
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 939
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 940
    return-object p0
.end method

.method public apply(Lorg/fusesource/jansi/Ansi$Consumer;)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "fun"    # Lorg/fusesource/jansi/Ansi$Consumer;

    .line 839
    invoke-interface {p1, p0}, Lorg/fusesource/jansi/Ansi$Consumer;->apply(Lorg/fusesource/jansi/Ansi;)V

    .line 840
    return-object p0
.end method

.method public bg(I)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "color"    # I

    .line 462
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    return-object p0
.end method

.method public bg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "color"    # Lorg/fusesource/jansi/Ansi$Color;

    .line 457
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/fusesource/jansi/Ansi$Color;->bg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    return-object p0
.end method

.method public bgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "color"    # Lorg/fusesource/jansi/Ansi$Color;

    .line 543
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/fusesource/jansi/Ansi$Color;->bgBright()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    return-object p0
.end method

.method public bgBrightCyan()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 548
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->CYAN:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgBrightDefault()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 552
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->DEFAULT:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgBrightGreen()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 556
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->GREEN:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgBrightMagenta()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 560
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->MAGENTA:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgBrightRed()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 564
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->RED:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgBrightYellow()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 568
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->YELLOW:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgCyan()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 482
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->CYAN:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgDefault()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 486
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->DEFAULT:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgGreen()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 490
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->GREEN:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgMagenta()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 494
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->MAGENTA:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgRed()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 498
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->RED:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgRgb(I)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "color"    # I

    .line 469
    shr-int/lit8 v0, p1, 0x10

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lorg/fusesource/jansi/Ansi;->bgRgb(III)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bgRgb(III)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 473
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    and-int/lit16 v1, p2, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    and-int/lit16 v1, p3, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    return-object p0
.end method

.method public bgYellow()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 502
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->YELLOW:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->bg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public bold()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 734
    sget-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_BOLD:Lorg/fusesource/jansi/Ansi$Attribute;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->a(Lorg/fusesource/jansi/Ansi$Attribute;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public boldOff()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 738
    sget-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_BOLD_OFF:Lorg/fusesource/jansi/Ansi$Attribute;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->a(Lorg/fusesource/jansi/Ansi$Attribute;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public cursor(II)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 585
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x48

    invoke-direct {p0, v1, v0}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(C[Ljava/lang/Object;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public cursorDown(I)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "y"    # I

    .line 616
    if-lez p1, :cond_0

    const/16 v0, 0x42

    invoke-direct {p0, v0, p1}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->cursorUp(I)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public cursorDownLine()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 658
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(C)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public cursorDownLine(I)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "n"    # I

    .line 669
    if-gez p1, :cond_0

    neg-int v0, p1

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->cursorUpLine(I)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x45

    invoke-direct {p0, v0, p1}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public cursorLeft(I)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "x"    # I

    .line 636
    if-lez p1, :cond_0

    const/16 v0, 0x44

    invoke-direct {p0, v0, p1}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->cursorRight(I)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public cursorMove(II)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 649
    invoke-virtual {p0, p1}, Lorg/fusesource/jansi/Ansi;->cursorRight(I)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/fusesource/jansi/Ansi;->cursorDown(I)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public cursorRight(I)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "x"    # I

    .line 626
    if-lez p1, :cond_0

    const/16 v0, 0x43

    invoke-direct {p0, v0, p1}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->cursorLeft(I)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public cursorToColumn(I)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "x"    # I

    .line 596
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x47

    invoke-direct {p0, v1, v0}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public cursorUp(I)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "y"    # I

    .line 606
    if-lez p1, :cond_0

    const/16 v0, 0x41

    invoke-direct {p0, v0, p1}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->cursorDown(I)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public cursorUpLine()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 678
    const/16 v0, 0x46

    invoke-direct {p0, v0}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(C)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public cursorUpLine(I)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "n"    # I

    .line 689
    if-gez p1, :cond_0

    neg-int v0, p1

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->cursorDownLine(I)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    invoke-direct {p0, v0, p1}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public eraseLine()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 701
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(C)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public eraseLine(Lorg/fusesource/jansi/Ansi$Erase;)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "kind"    # Lorg/fusesource/jansi/Ansi$Erase;

    .line 705
    const/16 v0, 0x4b

    invoke-virtual {p1}, Lorg/fusesource/jansi/Ansi$Erase;->value()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public eraseScreen()Lorg/fusesource/jansi/Ansi;
    .locals 2

    .line 693
    sget-object v0, Lorg/fusesource/jansi/Ansi$Erase;->ALL:Lorg/fusesource/jansi/Ansi$Erase;

    invoke-virtual {v0}, Lorg/fusesource/jansi/Ansi$Erase;->value()I

    move-result v0

    const/16 v1, 0x4a

    invoke-direct {p0, v1, v0}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public eraseScreen(Lorg/fusesource/jansi/Ansi$Erase;)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "kind"    # Lorg/fusesource/jansi/Ansi$Erase;

    .line 697
    const/16 v0, 0x4a

    invoke-virtual {p1}, Lorg/fusesource/jansi/Ansi$Erase;->value()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fg(I)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "color"    # I

    .line 405
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    return-object p0
.end method

.method public fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "color"    # Lorg/fusesource/jansi/Ansi$Color;

    .line 400
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/fusesource/jansi/Ansi$Color;->fg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    return-object p0
.end method

.method public fgBlack()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 425
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->BLACK:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgBlue()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 429
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->BLUE:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "color"    # Lorg/fusesource/jansi/Ansi$Color;

    .line 506
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/fusesource/jansi/Ansi$Color;->fgBright()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    return-object p0
.end method

.method public fgBrightBlack()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 511
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->BLACK:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgBrightBlue()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 515
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->BLUE:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgBrightCyan()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 519
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->CYAN:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgBrightDefault()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 523
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->DEFAULT:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgBrightGreen()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 527
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->GREEN:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgBrightMagenta()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 531
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->MAGENTA:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgBrightRed()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 535
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->RED:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgBrightYellow()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 539
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->YELLOW:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgCyan()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 433
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->CYAN:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgDefault()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 437
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->DEFAULT:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgGreen()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 441
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->GREEN:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgMagenta()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 445
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->MAGENTA:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgRed()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 449
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->RED:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgRgb(I)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "color"    # I

    .line 412
    shr-int/lit8 v0, p1, 0x10

    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lorg/fusesource/jansi/Ansi;->fgRgb(III)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public fgRgb(III)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 416
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    and-int/lit16 v1, p2, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->attributeOptions:Ljava/util/ArrayList;

    and-int/lit16 v1, p3, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    return-object p0
.end method

.method public fgYellow()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 453
    sget-object v0, Lorg/fusesource/jansi/Ansi$Color;->YELLOW:Lorg/fusesource/jansi/Ansi$Color;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Lorg/fusesource/jansi/Ansi;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 826
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 827
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    return-object p0
.end method

.method public newline()Lorg/fusesource/jansi/Ansi;
    .locals 2

    .line 820
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 821
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    return-object p0
.end method

.method public render(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 852
    invoke-static {p1}, Lorg/fusesource/jansi/AnsiRenderer;->render(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    .line 853
    return-object p0
.end method

.method public varargs render(Ljava/lang/String;[Ljava/lang/Object;)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 866
    invoke-static {p1}, Lorg/fusesource/jansi/AnsiRenderer;->render(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    .line 867
    return-object p0
.end method

.method public reset()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 730
    sget-object v0, Lorg/fusesource/jansi/Ansi$Attribute;->RESET:Lorg/fusesource/jansi/Ansi$Attribute;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->a(Lorg/fusesource/jansi/Ansi$Attribute;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public restorCursorPosition()Lorg/fusesource/jansi/Ansi;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 722
    const/16 v0, 0x75

    invoke-direct {p0, v0}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(C)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public restoreCursorPosition()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 726
    const/16 v0, 0x75

    invoke-direct {p0, v0}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(C)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public saveCursorPosition()Lorg/fusesource/jansi/Ansi;
    .locals 1

    .line 717
    const/16 v0, 0x73

    invoke-direct {p0, v0}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(C)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    return-object v0
.end method

.method public scrollDown(I)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "rows"    # I

    .line 713
    if-lez p1, :cond_0

    const/16 v0, 0x54

    invoke-direct {p0, v0, p1}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->scrollUp(I)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public scrollUp(I)Lorg/fusesource/jansi/Ansi;
    .locals 1
    .param p1, "rows"    # I

    .line 709
    if-lez p1, :cond_0

    const/16 v0, 0x53

    invoke-direct {p0, v0, p1}, Lorg/fusesource/jansi/Ansi;->appendEscapeSequence(CI)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/Ansi;->scrollDown(I)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 872
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;->flushAttributes()V

    .line 873
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
