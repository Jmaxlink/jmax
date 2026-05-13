.class public Lorg/fusesource/jansi/AnsiRenderer;
.super Ljava/lang/Object;
.source "AnsiRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fusesource/jansi/AnsiRenderer$Code;
    }
.end annotation


# static fields
.field public static final BEGIN_TOKEN:Ljava/lang/String; = "@|"

.field private static final BEGIN_TOKEN_LEN:I = 0x2

.field public static final CODE_LIST_SEPARATOR:Ljava/lang/String; = ","

.field public static final CODE_TEXT_SEPARATOR:Ljava/lang/String; = " "

.field public static final END_TOKEN:Ljava/lang/String; = "|@"

.field private static final END_TOKEN_LEN:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    return-void
.end method

.method public static render(Ljava/lang/String;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .line 85
    .local v0, "i":I
    :goto_0
    const-string v1, "@|"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "j":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 87
    if-nez v0, :cond_0

    .line 88
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 89
    return-object p1

    .line 91
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 92
    return-object p1

    .line 94
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 95
    const-string v3, "|@"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 97
    .local v3, "k":I
    if-ne v3, v2, :cond_2

    .line 98
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 99
    return-object p1

    .line 101
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 102
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "spec":Ljava/lang/String;
    const-string v4, " "

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "items":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 106
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 107
    return-object p1

    .line 109
    :cond_3
    aget-object v5, v4, v6

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/fusesource/jansi/AnsiRenderer;->render(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "replacement":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 113
    add-int/lit8 v0, v3, 0x2

    .line 114
    .end local v2    # "spec":Ljava/lang/String;
    .end local v4    # "items":[Ljava/lang/String;
    .end local v5    # "replacement":Ljava/lang/String;
    goto :goto_0
.end method

.method public static render(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 61
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lorg/fusesource/jansi/AnsiRenderer;->render(Ljava/lang/String;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs render(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "codes"    # [Ljava/lang/String;

    .line 118
    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/fusesource/jansi/AnsiRenderer;->render(Lorg/fusesource/jansi/Ansi;[Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p0}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fusesource/jansi/Ansi;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    return-object v0
.end method

.method private static varargs render(Lorg/fusesource/jansi/Ansi;[Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;
    .locals 5
    .param p0, "ansi"    # Lorg/fusesource/jansi/Ansi;
    .param p1, "names"    # [Ljava/lang/String;

    .line 141
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 142
    .local v2, "name":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;->valueOf(Ljava/lang/String;)Lorg/fusesource/jansi/AnsiRenderer$Code;

    move-result-object v3

    .line 143
    .local v3, "code":Lorg/fusesource/jansi/AnsiRenderer$Code;
    invoke-virtual {v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;->isColor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    invoke-virtual {v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;->isBackground()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;->getColor()Lorg/fusesource/jansi/Ansi$Color;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/fusesource/jansi/Ansi;->bg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;->getColor()Lorg/fusesource/jansi/Ansi$Color;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;->isAttribute()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    invoke-virtual {v3}, Lorg/fusesource/jansi/AnsiRenderer$Code;->getAttribute()Lorg/fusesource/jansi/Ansi$Attribute;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/fusesource/jansi/Ansi;->a(Lorg/fusesource/jansi/Ansi$Attribute;)Lorg/fusesource/jansi/Ansi;

    .line 141
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "code":Lorg/fusesource/jansi/AnsiRenderer$Code;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_3
    return-object p0
.end method

.method public static renderCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "codes"    # Ljava/lang/String;

    .line 137
    const-string v0, "\\s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fusesource/jansi/AnsiRenderer;->renderCodes([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs renderCodes([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "codes"    # [Ljava/lang/String;

    .line 128
    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/fusesource/jansi/AnsiRenderer;->render(Lorg/fusesource/jansi/Ansi;[Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fusesource/jansi/Ansi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static test(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 157
    if-eqz p0, :cond_0

    const-string v0, "@|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
