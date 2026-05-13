.class final enum Lcom/typesafe/config/impl/TokenType;
.super Ljava/lang/Enum;
.source "TokenType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/typesafe/config/impl/TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/typesafe/config/impl/TokenType;

.field public static final enum CLOSE_CURLY:Lcom/typesafe/config/impl/TokenType;

.field public static final enum CLOSE_SQUARE:Lcom/typesafe/config/impl/TokenType;

.field public static final enum COLON:Lcom/typesafe/config/impl/TokenType;

.field public static final enum COMMA:Lcom/typesafe/config/impl/TokenType;

.field public static final enum COMMENT:Lcom/typesafe/config/impl/TokenType;

.field public static final enum END:Lcom/typesafe/config/impl/TokenType;

.field public static final enum EQUALS:Lcom/typesafe/config/impl/TokenType;

.field public static final enum IGNORED_WHITESPACE:Lcom/typesafe/config/impl/TokenType;

.field public static final enum NEWLINE:Lcom/typesafe/config/impl/TokenType;

.field public static final enum OPEN_CURLY:Lcom/typesafe/config/impl/TokenType;

.field public static final enum OPEN_SQUARE:Lcom/typesafe/config/impl/TokenType;

.field public static final enum PLUS_EQUALS:Lcom/typesafe/config/impl/TokenType;

.field public static final enum PROBLEM:Lcom/typesafe/config/impl/TokenType;

.field public static final enum START:Lcom/typesafe/config/impl/TokenType;

.field public static final enum SUBSTITUTION:Lcom/typesafe/config/impl/TokenType;

.field public static final enum UNQUOTED_TEXT:Lcom/typesafe/config/impl/TokenType;

.field public static final enum VALUE:Lcom/typesafe/config/impl/TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 7
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->START:Lcom/typesafe/config/impl/TokenType;

    .line 8
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "END"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->END:Lcom/typesafe/config/impl/TokenType;

    .line 9
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "COMMA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->COMMA:Lcom/typesafe/config/impl/TokenType;

    .line 10
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "EQUALS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->EQUALS:Lcom/typesafe/config/impl/TokenType;

    .line 11
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "COLON"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->COLON:Lcom/typesafe/config/impl/TokenType;

    .line 12
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "OPEN_CURLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->OPEN_CURLY:Lcom/typesafe/config/impl/TokenType;

    .line 13
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "CLOSE_CURLY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->CLOSE_CURLY:Lcom/typesafe/config/impl/TokenType;

    .line 14
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "OPEN_SQUARE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->OPEN_SQUARE:Lcom/typesafe/config/impl/TokenType;

    .line 15
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "CLOSE_SQUARE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->CLOSE_SQUARE:Lcom/typesafe/config/impl/TokenType;

    .line 16
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "VALUE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->VALUE:Lcom/typesafe/config/impl/TokenType;

    .line 17
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "NEWLINE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->NEWLINE:Lcom/typesafe/config/impl/TokenType;

    .line 18
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "UNQUOTED_TEXT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->UNQUOTED_TEXT:Lcom/typesafe/config/impl/TokenType;

    .line 19
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "IGNORED_WHITESPACE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->IGNORED_WHITESPACE:Lcom/typesafe/config/impl/TokenType;

    .line 20
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "SUBSTITUTION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->SUBSTITUTION:Lcom/typesafe/config/impl/TokenType;

    .line 21
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "PROBLEM"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->PROBLEM:Lcom/typesafe/config/impl/TokenType;

    .line 22
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "COMMENT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->COMMENT:Lcom/typesafe/config/impl/TokenType;

    .line 23
    new-instance v0, Lcom/typesafe/config/impl/TokenType;

    const-string v1, "PLUS_EQUALS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->PLUS_EQUALS:Lcom/typesafe/config/impl/TokenType;

    .line 6
    sget-object v3, Lcom/typesafe/config/impl/TokenType;->START:Lcom/typesafe/config/impl/TokenType;

    sget-object v4, Lcom/typesafe/config/impl/TokenType;->END:Lcom/typesafe/config/impl/TokenType;

    sget-object v5, Lcom/typesafe/config/impl/TokenType;->COMMA:Lcom/typesafe/config/impl/TokenType;

    sget-object v6, Lcom/typesafe/config/impl/TokenType;->EQUALS:Lcom/typesafe/config/impl/TokenType;

    sget-object v7, Lcom/typesafe/config/impl/TokenType;->COLON:Lcom/typesafe/config/impl/TokenType;

    sget-object v8, Lcom/typesafe/config/impl/TokenType;->OPEN_CURLY:Lcom/typesafe/config/impl/TokenType;

    sget-object v9, Lcom/typesafe/config/impl/TokenType;->CLOSE_CURLY:Lcom/typesafe/config/impl/TokenType;

    sget-object v10, Lcom/typesafe/config/impl/TokenType;->OPEN_SQUARE:Lcom/typesafe/config/impl/TokenType;

    sget-object v11, Lcom/typesafe/config/impl/TokenType;->CLOSE_SQUARE:Lcom/typesafe/config/impl/TokenType;

    sget-object v12, Lcom/typesafe/config/impl/TokenType;->VALUE:Lcom/typesafe/config/impl/TokenType;

    sget-object v13, Lcom/typesafe/config/impl/TokenType;->NEWLINE:Lcom/typesafe/config/impl/TokenType;

    sget-object v14, Lcom/typesafe/config/impl/TokenType;->UNQUOTED_TEXT:Lcom/typesafe/config/impl/TokenType;

    sget-object v15, Lcom/typesafe/config/impl/TokenType;->IGNORED_WHITESPACE:Lcom/typesafe/config/impl/TokenType;

    sget-object v16, Lcom/typesafe/config/impl/TokenType;->SUBSTITUTION:Lcom/typesafe/config/impl/TokenType;

    sget-object v17, Lcom/typesafe/config/impl/TokenType;->PROBLEM:Lcom/typesafe/config/impl/TokenType;

    sget-object v18, Lcom/typesafe/config/impl/TokenType;->COMMENT:Lcom/typesafe/config/impl/TokenType;

    sget-object v19, Lcom/typesafe/config/impl/TokenType;->PLUS_EQUALS:Lcom/typesafe/config/impl/TokenType;

    filled-new-array/range {v3 .. v19}, [Lcom/typesafe/config/impl/TokenType;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/TokenType;->$VALUES:[Lcom/typesafe/config/impl/TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/typesafe/config/impl/TokenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/typesafe/config/impl/TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/TokenType;

    return-object v0
.end method

.method public static values()[Lcom/typesafe/config/impl/TokenType;
    .locals 1

    .line 6
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->$VALUES:[Lcom/typesafe/config/impl/TokenType;

    invoke-virtual {v0}, [Lcom/typesafe/config/impl/TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/typesafe/config/impl/TokenType;

    return-object v0
.end method
