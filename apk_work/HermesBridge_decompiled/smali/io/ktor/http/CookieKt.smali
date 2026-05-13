.class public final Lio/ktor/http/CookieKt;
.super Ljava/lang/Object;
.source "Cookie.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/CookieKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCookie.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cookie.kt\nio/ktor/http/CookieKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,228:1\n213#1:245\n217#1:246\n217#1:247\n213#1:248\n213#1:249\n221#1:250\n221#1:251\n225#1:255\n221#1:256\n213#1:257\n225#1:259\n221#1:260\n213#1:261\n221#1:271\n213#1:272\n223#2,2:229\n1238#2,4:234\n766#2:262\n857#2,2:263\n1#3:231\n457#4:232\n403#4:233\n467#4,7:238\n125#5:252\n152#5,2:253\n154#5:258\n1083#6,2:265\n1083#6,2:267\n1083#6,2:269\n*S KotlinDebug\n*F\n+ 1 Cookie.kt\nio/ktor/http/CookieKt\n*L\n152#1:245\n153#1:246\n154#1:247\n155#1:248\n156#1:249\n158#1:250\n159#1:251\n160#1:255\n160#1:256\n160#1:257\n161#1:259\n161#1:260\n161#1:261\n225#1:271\n225#1:272\n72#1:229,2\n74#1:234,4\n162#1:262\n162#1:263,2\n74#1:232\n74#1:233\n86#1:238,7\n160#1:252\n160#1:253,2\n160#1:258\n170#1:265,2\n182#1:267,2\n203#1:269,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u001a#\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082\u0008\u001a\u001b\u0010\r\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0082\u0008\u001a\u0019\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u000fH\u0082\u0008\u001a\u001b\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0082\u0008\u001a\u0016\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c\u001a\u0016\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c\u001a$\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00152\u0006\u0010\u0016\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000f\u001a\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0006\u001a\u000e\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0019\u001a\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0019\u001a\u0084\u0001\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010#\u001a\u00020\u000f2\u0008\u0008\u0002\u0010$\u001a\u00020\u000f2\u0016\u0008\u0002\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00152\u0008\u0008\u0002\u0010&\u001a\u00020\u000f\u001a\u000c\u0010\'\u001a\u00020\u0006*\u00020\u0006H\u0002\u001a\u000c\u0010(\u001a\u00020\u000f*\u00020\u0004H\u0002\u001a\u000c\u0010)\u001a\u00020\u001e*\u00020\u0006H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "clientCookieHeaderPattern",
        "Lkotlin/text/Regex;",
        "cookieCharsShouldBeEscaped",
        "",
        "",
        "loweredPartNames",
        "",
        "cookiePart",
        "name",
        "value",
        "",
        "encoding",
        "Lio/ktor/http/CookieEncoding;",
        "cookiePartExt",
        "cookiePartFlag",
        "",
        "cookiePartUnencoded",
        "decodeCookieValue",
        "encodedValue",
        "encodeCookieValue",
        "parseClientCookiesHeader",
        "",
        "cookiesHeader",
        "skipEscaped",
        "parseServerSetCookieHeader",
        "Lio/ktor/http/Cookie;",
        "renderCookieHeader",
        "cookie",
        "renderSetCookieHeader",
        "maxAge",
        "",
        "expires",
        "Lio/ktor/util/date/GMTDate;",
        "domain",
        "path",
        "secure",
        "httpOnly",
        "extensions",
        "includeEncoding",
        "assertCookieName",
        "shouldEscapeInCookies",
        "toIntClamping",
        "ktor-http"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final clientCookieHeaderPattern:Lkotlin/text/Regex;

.field private static final cookieCharsShouldBeEscaped:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final loweredPartNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 65
    const-string v5, "httponly"

    const-string v6, "$x-enc"

    const-string v0, "max-age"

    const-string v1, "expires"

    const-string v2, "domain"

    const-string v3, "path"

    const-string v4, "secure"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/ktor/http/CookieKt;->loweredPartNames:Ljava/util/Set;

    .line 92
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(^|;)\\s*([^;=\\{\\}\\s]+)\\s*(=\\s*(\"[^\"]*\"|[^;]*))?"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/http/CookieKt;->clientCookieHeaderPattern:Lkotlin/text/Regex;

    .line 207
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Character;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/ktor/http/CookieKt;->cookieCharsShouldBeEscaped:Ljava/util/Set;

    return-void
.end method

.method private static final assertCookieName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "$this$assertCookieName"    # Ljava/lang/String;

    .line 202
    nop

    .line 203
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "$this$any$iv":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 269
    .local v1, "$i$f$any":I
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .local v4, "element$iv":C
    move v5, v4

    .local v5, "it":C
    const/4 v6, 0x0

    .line 203
    .local v6, "$i$a$-any-CookieKt$assertCookieName$1":I
    invoke-static {v5}, Lio/ktor/http/CookieKt;->shouldEscapeInCookies(C)Z

    move-result v5

    .line 269
    .end local v5    # "it":C
    .end local v6    # "$i$a$-any-CookieKt$assertCookieName$1":I
    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    .end local v4    # "element$iv":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    :cond_1
    nop

    .line 203
    .end local v0    # "$this$any$iv":Ljava/lang/CharSequence;
    .end local v1    # "$i$f$any":I
    :goto_1
    if-nez v2, :cond_2

    .line 204
    nop

    .line 205
    return-object p0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cookie name is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final cookiePart(Ljava/lang/String;Ljava/lang/Object;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "encoding"    # Lio/ktor/http/CookieEncoding;

    const/4 v0, 0x0

    .line 213
    .local v0, "$i$f$cookiePart":I
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lio/ktor/http/CookieKt;->encodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method private static final cookiePartExt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 225
    .local v0, "$i$f$cookiePartExt":I
    if-nez p1, :cond_0

    const/4 v1, 0x1

    .local v1, "value$iv":Z
    const/4 v2, 0x0

    .line 271
    .local v2, "$i$f$cookiePartFlag":I
    move-object v3, p0

    .end local v1    # "value$iv":Z
    .end local v2    # "$i$f$cookiePartFlag":I
    goto :goto_0

    .line 225
    :cond_0
    sget-object v1, Lio/ktor/http/CookieEncoding;->RAW:Lio/ktor/http/CookieEncoding;

    .local v1, "encoding$iv":Lio/ktor/http/CookieEncoding;
    const/4 v2, 0x0

    .line 272
    .local v2, "$i$f$cookiePart":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lio/ktor/http/CookieKt;->encodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    .end local v1    # "encoding$iv":Lio/ktor/http/CookieEncoding;
    .end local v2    # "$i$f$cookiePart":I
    :goto_0
    return-object v3
.end method

.method private static final cookiePartFlag(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Z

    const/4 v0, 0x0

    .line 221
    .local v0, "$i$f$cookiePartFlag":I
    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method private static final cookiePartUnencoded(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    const/4 v0, 0x0

    .line 217
    .local v0, "$i$f$cookiePartUnencoded":I
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public static final decodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;
    .locals 8
    .param p0, "encodedValue"    # Ljava/lang/String;
    .param p1, "encoding"    # Lio/ktor/http/CookieEncoding;

    const-string v0, "encodedValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lio/ktor/http/CookieKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/http/CookieEncoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 199
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 198
    :pswitch_0
    const/16 v6, 0xb

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-static {p0}, Lio/ktor/util/Base64Kt;->decodeBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :pswitch_2
    nop

    .line 194
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_0
    move-object v0, p0

    .line 200
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final encodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "encoding"    # Lio/ktor/http/CookieEncoding;

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lio/ktor/http/CookieKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/http/CookieEncoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 186
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {p0, v1}, Lio/ktor/http/CodecsKt;->encodeURLParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 185
    :pswitch_1
    invoke-static {p0}, Lio/ktor/util/Base64Kt;->encodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 177
    :pswitch_2
    nop

    .line 178
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x22

    invoke-static {v0, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 182
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "$this$any$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 267
    .local v3, "$i$f$any":I
    move v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .local v6, "element$iv":C
    move v7, v6

    .local v7, "it":C
    const/4 v8, 0x0

    .line 182
    .local v8, "$i$a$-any-CookieKt$encodeCookieValue$2":I
    invoke-static {v7}, Lio/ktor/http/CookieKt;->shouldEscapeInCookies(C)Z

    move-result v7

    .line 267
    .end local v7    # "it":C
    .end local v8    # "$i$a$-any-CookieKt$encodeCookieValue$2":I
    if-eqz v7, :cond_0

    goto :goto_1

    .end local v6    # "element$iv":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    :cond_1
    move v1, v2

    .line 182
    .end local v0    # "$this$any$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$any":I
    :goto_1
    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 183
    :cond_2
    goto :goto_4

    .line 178
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 179
    nop

    .line 178
    const-string v1, "The cookie value contains characters that cannot be encoded in DQUOTES format. Consider URL_ENCODING mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :pswitch_3
    nop

    .line 170
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    .restart local v0    # "$this$any$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 265
    .restart local v3    # "$i$f$any":I
    move v4, v2

    :goto_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .local v5, "element$iv":C
    move v6, v5

    .local v6, "it":C
    const/4 v7, 0x0

    .line 170
    .local v7, "$i$a$-any-CookieKt$encodeCookieValue$1":I
    invoke-static {v6}, Lio/ktor/http/CookieKt;->shouldEscapeInCookies(C)Z

    move-result v6

    .line 265
    .end local v6    # "it":C
    .end local v7    # "$i$a$-any-CookieKt$encodeCookieValue$1":I
    if-eqz v6, :cond_4

    goto :goto_3

    .end local v5    # "element$iv":C
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 266
    :cond_5
    move v1, v2

    .line 170
    .end local v0    # "$this$any$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$any":I
    :goto_3
    if-nez v1, :cond_6

    .line 175
    nop

    .line 187
    :goto_4
    move-object v0, p0

    :goto_5
    return-object v0

    .line 171
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 172
    nop

    .line 171
    const-string v1, "The cookie value contains characters that cannot be encoded in RAW format.  Consider URL_ENCODING mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final parseClientCookiesHeader(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 5
    .param p0, "cookiesHeader"    # Ljava/lang/String;
    .param p1, "skipEscaped"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "cookiesHeader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lio/ktor/http/CookieKt;->clientCookieHeaderPattern:Lkotlin/text/Regex;

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 99
    sget-object v1, Lio/ktor/http/CookieKt$parseClientCookiesHeader$1;->INSTANCE:Lio/ktor/http/CookieKt$parseClientCookiesHeader$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 100
    new-instance v1, Lio/ktor/http/CookieKt$parseClientCookiesHeader$2;

    invoke-direct {v1, p1}, Lio/ktor/http/CookieKt$parseClientCookiesHeader$2;-><init>(Z)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 101
    sget-object v1, Lio/ktor/http/CookieKt$parseClientCookiesHeader$3;->INSTANCE:Lio/ktor/http/CookieKt$parseClientCookiesHeader$3;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Lkotlin/sequences/Sequence;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic parseClientCookiesHeader$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 97
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p0, p1}, Lio/ktor/http/CookieKt;->parseClientCookiesHeader(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final parseServerSetCookieHeader(Ljava/lang/String;)Lio/ktor/http/Cookie;
    .locals 25
    .param p0, "cookiesHeader"    # Ljava/lang/String;

    move-object/from16 v0, p0

    const-string v1, "cookiesHeader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/ktor/http/CookieKt;->parseClientCookiesHeader(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 72
    .local v2, "asMap":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$first$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 229
    .local v4, "$i$f$first":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "it":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 72
    .local v8, "$i$a$-first-CookieKt$parseServerSetCookieHeader$first$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "$"

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v9, v10, v1, v11, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    .line 229
    .end local v7    # "it":Ljava/util/Map$Entry;
    .end local v8    # "$i$a$-first-CookieKt$parseServerSetCookieHeader$first$1":I
    const/4 v7, 0x1

    xor-int/lit8 v8, v9, 0x1

    if-eqz v8, :cond_8

    .line 72
    .end local v3    # "$this$first$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$first":I
    .end local v6    # "element$iv":Ljava/lang/Object;
    move-object v3, v6

    check-cast v3, Ljava/util/Map$Entry;

    .line 73
    .local v3, "first":Ljava/util/Map$Entry;
    const-string v4, "$x-enc"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 231
    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 73
    .local v5, "$i$a$-let-CookieKt$parseServerSetCookieHeader$encoding$1":I
    invoke-static {v4}, Lio/ktor/http/CookieEncoding;->valueOf(Ljava/lang/String;)Lio/ktor/http/CookieEncoding;

    move-result-object v4

    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-CookieKt$parseServerSetCookieHeader$encoding$1":I
    if-nez v4, :cond_1

    :cond_0
    sget-object v4, Lio/ktor/http/CookieEncoding;->RAW:Lio/ktor/http/CookieEncoding;

    .line 74
    .local v4, "encoding":Lio/ktor/http/CookieEncoding;
    :cond_1
    move-object v5, v2

    .local v5, "$this$mapKeys$iv":Ljava/util/Map;
    const/4 v6, 0x0

    .line 232
    .local v6, "$i$f$mapKeys":I
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v8, Ljava/util/Map;

    .local v8, "destination$iv$iv":Ljava/util/Map;
    move-object v9, v5

    .local v9, "$this$mapKeysTo$iv$iv":Ljava/util/Map;
    const/4 v10, 0x0

    .line 233
    .local v10, "$i$f$mapKeysTo":I
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 234
    .local v13, "$i$f$associateByTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 235
    .local v15, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Ljava/util/Map$Entry;

    .local v16, "it":Ljava/util/Map$Entry;
    const/16 v17, 0x0

    .line 74
    .local v17, "$i$a$-mapKeys-CookieKt$parseServerSetCookieHeader$loweredMap$1":I
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lio/ktor/util/TextKt;->toLowerCasePreservingASCIIRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .end local v16    # "it":Ljava/util/Map$Entry;
    .end local v17    # "$i$a$-mapKeys-CookieKt$parseServerSetCookieHeader$loweredMap$1":I
    move-object/from16 v16, v15

    check-cast v16, Ljava/util/Map$Entry;

    .local v16, "it$iv$iv":Ljava/util/Map$Entry;
    const/16 v17, 0x0

    .line 233
    .local v17, "$i$a$-associateByTo-MapsKt__MapsKt$mapKeysTo$1$iv$iv":I
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 235
    .end local v16    # "it$iv$iv":Ljava/util/Map$Entry;
    .end local v17    # "$i$a$-associateByTo-MapsKt__MapsKt$mapKeysTo$1$iv$iv":I
    invoke-interface {v8, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto :goto_1

    .line 237
    .end local v15    # "element$iv$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 233
    .end local v11    # "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$associateByTo":I
    nop

    .line 232
    .end local v8    # "destination$iv$iv":Ljava/util/Map;
    .end local v9    # "$this$mapKeysTo$iv$iv":Ljava/util/Map;
    .end local v10    # "$i$f$mapKeysTo":I
    nop

    .line 74
    .end local v5    # "$this$mapKeys$iv":Ljava/util/Map;
    .end local v6    # "$i$f$mapKeys":I
    move-object v1, v8

    .line 76
    .local v1, "loweredMap":Ljava/util/Map;
    nop

    .line 77
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Ljava/lang/String;

    .line 78
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v4}, Lio/ktor/http/CookieKt;->decodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;

    move-result-object v15

    .line 79
    nop

    .line 80
    const-string v5, "max-age"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-static {v5}, Lio/ktor/http/CookieKt;->toIntClamping(Ljava/lang/String;)I

    move-result v5

    move/from16 v17, v5

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    .line 81
    :goto_2
    const-string v5, "expires"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-static {v5}, Lio/ktor/http/DateUtilsKt;->fromCookieToGmtDate(Ljava/lang/String;)Lio/ktor/util/date/GMTDate;

    move-result-object v12

    .line 82
    :cond_4
    const-string v5, "domain"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 83
    const-string v6, "path"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v20, v6

    check-cast v20, Ljava/lang/String;

    .line 84
    const-string v6, "secure"

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    .line 85
    const-string v6, "httponly"

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    .line 86
    move-object v6, v2

    .local v6, "$this$filterKeys$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 238
    .local v7, "$i$f$filterKeys":I
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 239
    .local v8, "result$iv":Ljava/util/LinkedHashMap;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 240
    .local v10, "entry$iv":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, "it":Ljava/lang/String;
    const/4 v13, 0x0

    .line 87
    .local v13, "$i$a$-filterKeys-CookieKt$parseServerSetCookieHeader$1":I
    sget-object v0, Lio/ktor/http/CookieKt;->loweredPartNames:Ljava/util/Set;

    move-object/from16 v24, v1

    .end local v1    # "loweredMap":Ljava/util/Map;
    .local v24, "loweredMap":Ljava/util/Map;
    invoke-static {v11}, Lio/ktor/util/TextKt;->toLowerCasePreservingASCIIRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 240
    .end local v11    # "it":Ljava/lang/String;
    .end local v13    # "$i$a$-filterKeys-CookieKt$parseServerSetCookieHeader$1":I
    :goto_4
    if-eqz v0, :cond_6

    .line 241
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    goto :goto_3

    .line 240
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    goto :goto_3

    .line 244
    .end local v10    # "entry$iv":Ljava/util/Map$Entry;
    .end local v24    # "loweredMap":Ljava/util/Map;
    .restart local v1    # "loweredMap":Ljava/util/Map;
    :cond_7
    move-object/from16 v23, v8

    check-cast v23, Ljava/util/Map;

    .line 76
    .end local v6    # "$this$filterKeys$iv":Ljava/util/Map;
    .end local v7    # "$i$f$filterKeys":I
    .end local v8    # "result$iv":Ljava/util/LinkedHashMap;
    new-instance v0, Lio/ktor/http/Cookie;

    move-object v13, v0

    move-object/from16 v16, v4

    move-object/from16 v18, v12

    move-object/from16 v19, v5

    invoke-direct/range {v13 .. v23}, Lio/ktor/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/ktor/http/CookieEncoding;ILio/ktor/util/date/GMTDate;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)V

    return-object v0

    .line 229
    .end local v1    # "loweredMap":Ljava/util/Map;
    .local v3, "$this$first$iv":Ljava/lang/Iterable;
    .local v4, "$i$f$first":I
    .local v6, "element$iv":Ljava/lang/Object;
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 230
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_9
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final renderCookieHeader(Lio/ktor/http/Cookie;)Ljava/lang/String;
    .locals 5
    .param p0, "cookie"    # Lio/ktor/http/Cookie;

    const-string v0, "cookie"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    move-object v0, p0

    .local v0, "$this$renderCookieHeader_u24lambda_u245":Lio/ktor/http/Cookie;
    const/4 v1, 0x0

    .line 132
    .local v1, "$i$a$-with-CookieKt$renderCookieHeader$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getEncoding()Lio/ktor/http/CookieEncoding;

    move-result-object v4

    invoke-static {v3, v4}, Lio/ktor/http/CookieKt;->encodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .end local v0    # "$this$renderCookieHeader_u24lambda_u245":Lio/ktor/http/Cookie;
    .end local v1    # "$i$a$-with-CookieKt$renderCookieHeader$1":I
    nop

    .line 133
    return-object v0
.end method

.method public static final renderSetCookieHeader(Lio/ktor/http/Cookie;)Ljava/lang/String;
    .locals 15
    .param p0, "cookie"    # Lio/ktor/http/Cookie;

    const-string v0, "cookie"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    move-object v0, p0

    .local v0, "$this$renderSetCookieHeader_u24lambda_u244":Lio/ktor/http/Cookie;
    const/4 v1, 0x0

    .line 115
    .local v1, "$i$a$-with-CookieKt$renderSetCookieHeader$1":I
    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getEncoding()Lio/ktor/http/CookieEncoding;

    move-result-object v4

    .line 118
    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getMaxAgeInt()I

    move-result v5

    .line 119
    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getExpires()Lio/ktor/util/date/GMTDate;

    move-result-object v6

    .line 120
    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    .line 121
    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 122
    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getSecure()Z

    move-result v9

    .line 123
    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getHttpOnly()Z

    move-result v10

    .line 124
    invoke-virtual {v0}, Lio/ktor/http/Cookie;->getExtensions()Ljava/util/Map;

    move-result-object v11

    .line 114
    const/16 v13, 0x400

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v14}, Lio/ktor/http/CookieKt;->renderSetCookieHeader$default(Ljava/lang/String;Ljava/lang/String;Lio/ktor/http/CookieEncoding;ILio/ktor/util/date/GMTDate;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .end local v0    # "$this$renderSetCookieHeader_u24lambda_u244":Lio/ktor/http/Cookie;
    .end local v1    # "$i$a$-with-CookieKt$renderSetCookieHeader$1":I
    nop

    .line 126
    return-object v0
.end method

.method public static final renderSetCookieHeader(Ljava/lang/String;Ljava/lang/String;Lio/ktor/http/CookieEncoding;ILio/ktor/util/date/GMTDate;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Z)Ljava/lang/String;
    .locals 22
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "encoding"    # Lio/ktor/http/CookieEncoding;
    .param p3, "maxAge"    # I
    .param p4, "expires"    # Lio/ktor/util/date/GMTDate;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "secure"    # Z
    .param p8, "httpOnly"    # Z
    .param p9, "extensions"    # Ljava/util/Map;
    .param p10, "includeEncoding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/ktor/http/CookieEncoding;",
            "I",
            "Lio/ktor/util/date/GMTDate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "name"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "encoding"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "extensions"

    move-object/from16 v4, p9

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lio/ktor/http/CookieKt;->assertCookieName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "name$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 245
    .local v6, "$i$f$cookiePart":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lio/ktor/http/CookieKt;->encodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v6    # "$i$f$cookiePart":I
    const/4 v6, 0x0

    aput-object v5, v1, v6

    .line 152
    nop

    .line 153
    const/4 v5, 0x0

    if-lez p3, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v5

    .local v7, "value$iv":Ljava/lang/Object;
    :goto_0
    const-string v9, "Max-Age"

    .local v9, "name$iv":Ljava/lang/String;
    const/4 v10, 0x0

    .line 246
    .local v10, "$i$f$cookiePartUnencoded":I
    const-string v11, ""

    if-eqz v7, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_1
    move-object v12, v11

    .end local v7    # "value$iv":Ljava/lang/Object;
    .end local v9    # "name$iv":Ljava/lang/String;
    .end local v10    # "$i$f$cookiePartUnencoded":I
    :goto_1
    const/4 v7, 0x1

    aput-object v12, v1, v7

    .line 152
    nop

    .line 154
    if-eqz p4, :cond_2

    invoke-static/range {p4 .. p4}, Lio/ktor/http/DateUtilsKt;->toHttpDate(Lio/ktor/util/date/GMTDate;)Ljava/lang/String;

    move-result-object v5

    .local v5, "value$iv":Ljava/lang/Object;
    :cond_2
    const-string v9, "Expires"

    .restart local v9    # "name$iv":Ljava/lang/String;
    const/4 v10, 0x0

    .line 247
    .restart local v10    # "$i$f$cookiePartUnencoded":I
    if-eqz v5, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_3
    move-object v12, v11

    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v9    # "name$iv":Ljava/lang/String;
    .end local v10    # "$i$f$cookiePartUnencoded":I
    :goto_2
    const/4 v5, 0x2

    aput-object v12, v1, v5

    .line 152
    nop

    .line 155
    const-string v5, "Domain"

    .local v5, "name$iv":Ljava/lang/String;
    sget-object v9, Lio/ktor/http/CookieEncoding;->RAW:Lio/ktor/http/CookieEncoding;

    .local v9, "encoding$iv":Lio/ktor/http/CookieEncoding;
    const/4 v10, 0x0

    .line 248
    .local v10, "$i$f$cookiePart":I
    if-eqz p5, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v9}, Lio/ktor/http/CookieKt;->encodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_4
    move-object v12, v11

    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v9    # "encoding$iv":Lio/ktor/http/CookieEncoding;
    .end local v10    # "$i$f$cookiePart":I
    :goto_3
    const/4 v5, 0x3

    aput-object v12, v1, v5

    .line 152
    nop

    .line 156
    const-string v5, "Path"

    .restart local v5    # "name$iv":Ljava/lang/String;
    sget-object v9, Lio/ktor/http/CookieEncoding;->RAW:Lio/ktor/http/CookieEncoding;

    .restart local v9    # "encoding$iv":Lio/ktor/http/CookieEncoding;
    const/4 v10, 0x0

    .line 249
    .restart local v10    # "$i$f$cookiePart":I
    if-eqz p6, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v9}, Lio/ktor/http/CookieKt;->encodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_5
    move-object v12, v11

    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v9    # "encoding$iv":Lio/ktor/http/CookieEncoding;
    .end local v10    # "$i$f$cookiePart":I
    :goto_4
    const/4 v5, 0x4

    aput-object v12, v1, v5

    .line 152
    nop

    .line 158
    const-string v5, "Secure"

    .restart local v5    # "name$iv":Ljava/lang/String;
    const/4 v9, 0x0

    .line 250
    .local v9, "$i$f$cookiePartFlag":I
    if-eqz p7, :cond_6

    goto :goto_5

    :cond_6
    move-object v5, v11

    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v9    # "$i$f$cookiePartFlag":I
    :goto_5
    const/4 v9, 0x5

    aput-object v5, v1, v9

    .line 152
    nop

    .line 159
    const-string v5, "HttpOnly"

    .restart local v5    # "name$iv":Ljava/lang/String;
    const/4 v9, 0x0

    .line 251
    .restart local v9    # "$i$f$cookiePartFlag":I
    if-eqz p8, :cond_7

    goto :goto_6

    :cond_7
    move-object v5, v11

    .end local v5    # "name$iv":Ljava/lang/String;
    .end local v9    # "$i$f$cookiePartFlag":I
    :goto_6
    const/4 v9, 0x6

    aput-object v5, v1, v9

    .line 152
    nop

    .line 151
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 160
    move-object/from16 v5, p9

    .local v5, "$this$map$iv":Ljava/util/Map;
    const/4 v9, 0x0

    .line 252
    .local v9, "$i$f$map":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v12, v5

    .local v12, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v13, 0x0

    .line 253
    .local v13, "$i$f$mapTo":I
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 254
    .local v15, "item$iv$iv":Ljava/util/Map$Entry;
    move-object/from16 v16, v15

    .local v16, "it":Ljava/util/Map$Entry;
    const/16 v17, 0x0

    .line 160
    .local v17, "$i$a$-map-CookieKt$renderSetCookieHeader$2":I
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lio/ktor/http/CookieKt;->assertCookieName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "name$iv":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .local v18, "value$iv":Ljava/lang/String;
    const/16 v19, 0x0

    .line 255
    .local v19, "$i$f$cookiePartExt":I
    if-nez v18, :cond_8

    const/16 v20, 0x1

    .local v20, "value$iv$iv":Z
    const/16 v21, 0x0

    .line 256
    .local v21, "$i$f$cookiePartFlag":I
    move-object v0, v6

    .end local v20    # "value$iv$iv":Z
    .end local v21    # "$i$f$cookiePartFlag":I
    goto :goto_8

    .line 255
    :cond_8
    sget-object v7, Lio/ktor/http/CookieEncoding;->RAW:Lio/ktor/http/CookieEncoding;

    .local v7, "encoding$iv$iv":Lio/ktor/http/CookieEncoding;
    const/16 v21, 0x0

    .line 257
    .local v21, "$i$f$cookiePart":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lio/ktor/http/CookieKt;->encodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .end local v7    # "encoding$iv$iv":Lio/ktor/http/CookieEncoding;
    .end local v21    # "$i$f$cookiePart":I
    :goto_8
    nop

    .line 160
    .end local v6    # "name$iv":Ljava/lang/String;
    .end local v18    # "value$iv":Ljava/lang/String;
    .end local v19    # "$i$f$cookiePartExt":I
    nop

    .line 254
    .end local v16    # "it":Ljava/util/Map$Entry;
    .end local v17    # "$i$a$-map-CookieKt$renderSetCookieHeader$2":I
    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x3d

    goto :goto_7

    .line 258
    .end local v15    # "item$iv$iv":Ljava/util/Map$Entry;
    :cond_9
    nop

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v13    # "$i$f$mapTo":I
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 252
    nop

    .end local v5    # "$this$map$iv":Ljava/util/Map;
    .end local v9    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 151
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 161
    if-eqz p10, :cond_b

    const-string v1, "$x-enc"

    .local v1, "name$iv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lio/ktor/http/CookieEncoding;->name()Ljava/lang/String;

    move-result-object v5

    .local v5, "value$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 259
    .local v6, "$i$f$cookiePartExt":I
    if-nez v5, :cond_a

    const/4 v7, 0x1

    .local v7, "value$iv$iv":Z
    const/4 v8, 0x0

    .line 260
    .local v8, "$i$f$cookiePartFlag":I
    move-object v11, v1

    .end local v7    # "value$iv$iv":Z
    .end local v8    # "$i$f$cookiePartFlag":I
    goto :goto_9

    .line 259
    :cond_a
    sget-object v7, Lio/ktor/http/CookieEncoding;->RAW:Lio/ktor/http/CookieEncoding;

    .local v7, "encoding$iv$iv":Lio/ktor/http/CookieEncoding;
    const/4 v8, 0x0

    .line 261
    .local v8, "$i$f$cookiePart":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lio/ktor/http/CookieKt;->encodeCookieValue(Ljava/lang/String;Lio/ktor/http/CookieEncoding;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    .line 259
    .end local v7    # "encoding$iv$iv":Lio/ktor/http/CookieEncoding;
    .end local v8    # "$i$f$cookiePart":I
    :goto_9
    nop

    .line 151
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v5    # "value$iv":Ljava/lang/String;
    .end local v6    # "$i$f$cookiePartExt":I
    :cond_b
    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 162
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 262
    .local v1, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v0

    .local v6, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 263
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 162
    .local v11, "$i$a$-filter-CookieKt$renderSetCookieHeader$3":I
    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_d

    const/4 v12, 0x1

    goto :goto_b

    :cond_d
    const/4 v12, 0x0

    .line 263
    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-filter-CookieKt$renderSetCookieHeader$3":I
    :goto_b
    if-eqz v12, :cond_c

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 264
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_e
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    check-cast v5, Ljava/util/List;

    .line 262
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    move-object v6, v5

    check-cast v6, Ljava/lang/Iterable;

    .line 163
    const-string v0, "; "

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    const/16 v13, 0x3e

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic renderSetCookieHeader$default(Ljava/lang/String;Ljava/lang/String;Lio/ktor/http/CookieEncoding;ILio/ktor/util/date/GMTDate;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 9

    .line 138
    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 141
    sget-object v1, Lio/ktor/http/CookieEncoding;->URI_ENCODING:Lio/ktor/http/CookieEncoding;

    goto :goto_0

    .line 138
    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 142
    move v2, v3

    goto :goto_1

    .line 138
    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v4, v0, 0x10

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 143
    move-object v4, v5

    goto :goto_2

    .line 138
    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_3

    .line 144
    move-object v6, v5

    goto :goto_3

    .line 138
    :cond_3
    move-object v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_4

    .line 145
    goto :goto_4

    .line 138
    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_5

    .line 146
    move v7, v3

    goto :goto_5

    .line 138
    :cond_5
    move/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_6

    .line 147
    goto :goto_6

    .line 138
    :cond_6
    move/from16 v3, p8

    :goto_6
    and-int/lit16 v8, v0, 0x200

    if-eqz v8, :cond_7

    .line 148
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8

    goto :goto_7

    .line 138
    :cond_7
    move-object/from16 v8, p9

    :goto_7
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    .line 149
    const/4 v0, 0x1

    goto :goto_8

    .line 138
    :cond_8
    move/from16 v0, p10

    :goto_8
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move p5, v2

    move-object p6, v4

    move-object/from16 p7, v6

    move-object/from16 p8, v5

    move/from16 p9, v7

    move/from16 p10, v3

    move-object/from16 p11, v8

    move/from16 p12, v0

    invoke-static/range {p2 .. p12}, Lio/ktor/http/CookieKt;->renderSetCookieHeader(Ljava/lang/String;Ljava/lang/String;Lio/ktor/http/CookieEncoding;ILio/ktor/util/date/GMTDate;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final shouldEscapeInCookies(C)Z
    .locals 2
    .param p0, "$this$shouldEscapeInCookies"    # C

    .line 209
    invoke-static {p0}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lio/ktor/http/CookieKt;->cookieCharsShouldBeEscaped:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static final toIntClamping(Ljava/lang/String;)I
    .locals 6
    .param p0, "$this$toIntClamping"    # Ljava/lang/String;

    .line 227
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x7fffffff

    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
