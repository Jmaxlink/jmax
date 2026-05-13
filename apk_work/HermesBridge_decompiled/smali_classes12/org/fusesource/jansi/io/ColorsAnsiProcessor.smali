.class public Lorg/fusesource/jansi/io/ColorsAnsiProcessor;
.super Lorg/fusesource/jansi/io/AnsiProcessor;
.source "ColorsAnsiProcessor.java"


# instance fields
.field private final colors:Lorg/fusesource/jansi/AnsiColors;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/fusesource/jansi/AnsiColors;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "colors"    # Lorg/fusesource/jansi/AnsiColors;

    .line 33
    invoke-direct {p0, p1}, Lorg/fusesource/jansi/io/AnsiProcessor;-><init>(Ljava/io/OutputStream;)V

    .line 34
    iput-object p2, p0, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;->colors:Lorg/fusesource/jansi/AnsiColors;

    .line 35
    return-void
.end method


# virtual methods
.method protected processCharsetSelect(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 139
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected processEscapeCommand(Ljava/util/ArrayList;I)Z
    .locals 16
    .param p2, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x6d

    move/from16 v3, p2

    if-ne v3, v2, :cond_1a

    iget-object v4, v0, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;->colors:Lorg/fusesource/jansi/AnsiColors;

    sget-object v5, Lorg/fusesource/jansi/AnsiColors;->Colors256:Lorg/fusesource/jansi/AnsiColors;

    if-eq v4, v5, :cond_0

    iget-object v4, v0, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;->colors:Lorg/fusesource/jansi/AnsiColors;

    sget-object v5, Lorg/fusesource/jansi/AnsiColors;->Colors16:Lorg/fusesource/jansi/AnsiColors;

    if-ne v4, v5, :cond_1a

    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 42
    .local v4, "has38or48":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0x30

    const/16 v9, 0x26

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 43
    .local v6, "next":Ljava/lang/Object;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/Integer;

    if-ne v10, v11, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 46
    :cond_2
    :goto_1
    move-object v10, v6

    check-cast v10, Ljava/lang/Integer;

    .line 47
    .local v10, "value":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v9, :cond_4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v7, :cond_3

    goto :goto_2

    :cond_3
    move v8, v1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, 0x1

    :goto_3
    or-int/2addr v4, v8

    .line 48
    .end local v6    # "next":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Integer;
    goto :goto_0

    .line 50
    :cond_5
    if-nez v4, :cond_6

    .line 51
    return v1

    .line 53
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 54
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x1b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    const/4 v5, 0x1

    .line 56
    .local v5, "first":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 57
    .local v6, "optionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 58
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 59
    .local v10, "next":Ljava/lang/Object;
    if-eqz v10, :cond_18

    .line 60
    move-object v11, v10

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 61
    .local v11, "value":I
    const/16 v12, 0x3b

    if-eq v11, v9, :cond_9

    if-ne v11, v7, :cond_7

    goto :goto_5

    .line 115
    :cond_7
    if-nez v5, :cond_8

    .line 116
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_8
    const/4 v5, 0x0

    .line 119
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v8, v9

    goto/16 :goto_d

    .line 63
    :cond_9
    :goto_5
    invoke-virtual {v0, v6}, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v13

    .line 64
    .local v13, "arg2or5":I
    const/4 v14, 0x2

    const/4 v7, 0x5

    if-ne v13, v14, :cond_10

    .line 66
    invoke-virtual {v0, v6}, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v14

    .line 67
    .local v14, "r":I
    invoke-virtual {v0, v6}, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v2

    .line 68
    .local v2, "g":I
    invoke-virtual {v0, v6}, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v8

    .line 69
    .local v8, "b":I
    iget-object v9, v0, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;->colors:Lorg/fusesource/jansi/AnsiColors;

    sget-object v15, Lorg/fusesource/jansi/AnsiColors;->Colors256:Lorg/fusesource/jansi/AnsiColors;

    if-ne v9, v15, :cond_b

    .line 70
    const/16 v9, 0x100

    invoke-static {v14, v2, v8, v9}, Lorg/fusesource/jansi/io/Colors;->roundRgbColor(IIII)I

    move-result v9

    .line 71
    .local v9, "col":I
    if-nez v5, :cond_a

    .line 72
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    :cond_a
    const/4 v5, 0x0

    .line 75
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .end local v9    # "col":I
    goto :goto_8

    .line 81
    :cond_b
    const/16 v7, 0x10

    invoke-static {v14, v2, v8, v7}, Lorg/fusesource/jansi/io/Colors;->roundRgbColor(IIII)I

    move-result v7

    .line 82
    .local v7, "col":I
    if-nez v5, :cond_c

    .line 83
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :cond_c
    const/4 v5, 0x0

    .line 86
    const/16 v9, 0x26

    if-ne v11, v9, :cond_e

    const/16 v9, 0x8

    if-lt v7, v9, :cond_d

    add-int/lit8 v12, v7, 0x5a

    goto :goto_6

    :cond_d
    add-int/lit8 v12, v7, 0x1e

    goto :goto_7

    :cond_e
    const/16 v9, 0x8

    if-lt v7, v9, :cond_f

    add-int/lit8 v12, v7, 0x64

    :goto_6
    sub-int/2addr v12, v9

    goto :goto_7

    :cond_f
    add-int/lit8 v12, v7, 0x28

    :goto_7
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .end local v2    # "g":I
    .end local v7    # "col":I
    .end local v8    # "b":I
    .end local v14    # "r":I
    :goto_8
    const/16 v8, 0x26

    goto :goto_c

    .line 89
    :cond_10
    if-ne v13, v7, :cond_17

    .line 91
    invoke-virtual {v0, v6}, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v2

    .line 92
    .local v2, "paletteIndex":I
    iget-object v8, v0, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;->colors:Lorg/fusesource/jansi/AnsiColors;

    sget-object v9, Lorg/fusesource/jansi/AnsiColors;->Colors256:Lorg/fusesource/jansi/AnsiColors;

    if-ne v8, v9, :cond_12

    .line 93
    if-nez v5, :cond_11

    .line 94
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_11
    const/4 v5, 0x0

    .line 97
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x26

    goto :goto_b

    .line 103
    :cond_12
    const/16 v7, 0x10

    invoke-static {v2, v7}, Lorg/fusesource/jansi/io/Colors;->roundColor(II)I

    move-result v7

    .line 104
    .restart local v7    # "col":I
    if-nez v5, :cond_13

    .line 105
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    :cond_13
    const/4 v5, 0x0

    .line 108
    const/16 v8, 0x26

    if-ne v11, v8, :cond_15

    const/16 v9, 0x8

    if-lt v7, v9, :cond_14

    add-int/lit8 v12, v7, 0x5a

    goto :goto_9

    :cond_14
    add-int/lit8 v12, v7, 0x1e

    goto :goto_a

    :cond_15
    const/16 v9, 0x8

    if-lt v7, v9, :cond_16

    add-int/lit8 v12, v7, 0x64

    :goto_9
    sub-int/2addr v12, v9

    goto :goto_a

    :cond_16
    add-int/lit8 v12, v7, 0x28

    :goto_a
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .end local v2    # "paletteIndex":I
    .end local v7    # "col":I
    :goto_b
    nop

    .line 114
    .end local v13    # "arg2or5":I
    :goto_c
    goto :goto_d

    .line 112
    .restart local v13    # "arg2or5":I
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 59
    .end local v11    # "value":I
    .end local v13    # "arg2or5":I
    :cond_18
    move v8, v9

    .line 122
    .end local v10    # "next":Ljava/lang/Object;
    :goto_d
    move v9, v8

    const/16 v2, 0x6d

    const/16 v7, 0x30

    goto/16 :goto_4

    .line 123
    :cond_19
    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    iget-object v2, v0, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 125
    const/4 v2, 0x1

    return v2

    .line 128
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "has38or48":Z
    .end local v5    # "first":Z
    .end local v6    # "optionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_1a
    return v1
.end method

.method protected processOperatingSystemCommand(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 134
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method
