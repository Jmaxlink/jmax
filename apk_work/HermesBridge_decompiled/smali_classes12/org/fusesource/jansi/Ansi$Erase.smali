.class public final enum Lorg/fusesource/jansi/Ansi$Erase;
.super Ljava/lang/Enum;
.source "Ansi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/Ansi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Erase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fusesource/jansi/Ansi$Erase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fusesource/jansi/Ansi$Erase;

.field public static final enum ALL:Lorg/fusesource/jansi/Ansi$Erase;

.field public static final enum BACKWARD:Lorg/fusesource/jansi/Ansi$Erase;

.field public static final enum FORWARD:Lorg/fusesource/jansi/Ansi$Erase;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 132
    new-instance v0, Lorg/fusesource/jansi/Ansi$Erase;

    const-string v1, "FORWARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Erase;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Erase;->FORWARD:Lorg/fusesource/jansi/Ansi$Erase;

    .line 133
    new-instance v0, Lorg/fusesource/jansi/Ansi$Erase;

    const-string v1, "BACKWARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Erase;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Erase;->BACKWARD:Lorg/fusesource/jansi/Ansi$Erase;

    .line 134
    new-instance v0, Lorg/fusesource/jansi/Ansi$Erase;

    const-string v1, "ALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2, v1}, Lorg/fusesource/jansi/Ansi$Erase;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fusesource/jansi/Ansi$Erase;->ALL:Lorg/fusesource/jansi/Ansi$Erase;

    .line 131
    sget-object v0, Lorg/fusesource/jansi/Ansi$Erase;->FORWARD:Lorg/fusesource/jansi/Ansi$Erase;

    sget-object v1, Lorg/fusesource/jansi/Ansi$Erase;->BACKWARD:Lorg/fusesource/jansi/Ansi$Erase;

    sget-object v2, Lorg/fusesource/jansi/Ansi$Erase;->ALL:Lorg/fusesource/jansi/Ansi$Erase;

    filled-new-array {v0, v1, v2}, [Lorg/fusesource/jansi/Ansi$Erase;

    move-result-object v0

    sput-object v0, Lorg/fusesource/jansi/Ansi$Erase;->$VALUES:[Lorg/fusesource/jansi/Ansi$Erase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lorg/fusesource/jansi/Ansi$Erase;->value:I

    .line 141
    iput-object p4, p0, Lorg/fusesource/jansi/Ansi$Erase;->name:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi$Erase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 131
    const-class v0, Lorg/fusesource/jansi/Ansi$Erase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fusesource/jansi/Ansi$Erase;

    return-object v0
.end method

.method public static values()[Lorg/fusesource/jansi/Ansi$Erase;
    .locals 1

    .line 131
    sget-object v0, Lorg/fusesource/jansi/Ansi$Erase;->$VALUES:[Lorg/fusesource/jansi/Ansi$Erase;

    invoke-virtual {v0}, [Lorg/fusesource/jansi/Ansi$Erase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fusesource/jansi/Ansi$Erase;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/fusesource/jansi/Ansi$Erase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 150
    iget v0, p0, Lorg/fusesource/jansi/Ansi$Erase;->value:I

    return v0
.end method
