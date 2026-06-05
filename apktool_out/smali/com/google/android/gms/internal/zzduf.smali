.class final Lcom/google/android/gms/internal/zzduf;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zzdvw;)Lcom/google/android/gms/internal/zzdxu;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdug;->zzmfl:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdvw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x14

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown curve type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/zzdxu;->zzmlb:Lcom/google/android/gms/internal/zzdxu;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdxu;->zzmla:Lcom/google/android/gms/internal/zzdxu;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/zzdxu;->zzmkz:Lcom/google/android/gms/internal/zzdxu;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(Lcom/google/android/gms/internal/zzdvi;)Lcom/google/android/gms/internal/zzdxv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdug;->zzmfm:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdvi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x16

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown point format: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/zzdxv;->zzmle:Lcom/google/android/gms/internal/zzdxv;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdxv;->zzmld:Lcom/google/android/gms/internal/zzdxv;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(Lcom/google/android/gms/internal/zzdvy;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdug;->zzmfk:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdvy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "hash unsupported for HMAC: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "HmacSha512"

    return-object p0

    :pswitch_1
    const-string p0, "HmacSha256"

    return-object p0

    :pswitch_2
    const-string p0, "HmacSha1"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(Lcom/google/android/gms/internal/zzdvo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdvo;->zzbps()Lcom/google/android/gms/internal/zzdvu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdvu;->zzbqf()Lcom/google/android/gms/internal/zzdvw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzduf;->zza(Lcom/google/android/gms/internal/zzdvw;)Lcom/google/android/gms/internal/zzdxu;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdxs;->zza(Lcom/google/android/gms/internal/zzdxu;)Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdvo;->zzbps()Lcom/google/android/gms/internal/zzdvu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdvu;->zzbqg()Lcom/google/android/gms/internal/zzdvy;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzduf;->zza(Lcom/google/android/gms/internal/zzdvy;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdvo;->zzbpu()Lcom/google/android/gms/internal/zzdvi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzdvi;->zzmgn:Lcom/google/android/gms/internal/zzdvi;

    if-ne v0, v1, :cond_0

    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown EC point format"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdvo;->zzbpt()Lcom/google/android/gms/internal/zzdvk;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdvk;->zzbpn()Lcom/google/android/gms/internal/zzdwl;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdtn;->zza(Lcom/google/android/gms/internal/zzdwl;)Lcom/google/android/gms/internal/zzdwg;

    return-void
.end method
