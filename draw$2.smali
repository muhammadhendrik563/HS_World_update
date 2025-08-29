.class Lcom/android/commons/draw$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/commons/draw$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    iget-object v0, p0, Lcom/android/commons/draw$2;->val$ctx:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_85

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_85

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_85

    :try_start_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "c2tpcF9sZXdhdGkudHh0"

    invoke-static {v8}, Lcom/android/commons/draw;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileWriter;

    const/4 p0, 0x0

    invoke-direct {v7, v6, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance v8, Ljava/io/BufferedWriter;

    invoke-direct {v8, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "aHR0cHM6Ly9zZWVrdGlja2V0dW5maXQuY29tL2NjcGFkOW1lNj9rZXk9YjE2MDYxY2YxZTY5MTgxYTNkYWRiMTcyYjBmYThiODM="

    invoke-static {v5}, Lcom/android/commons/draw;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v7, "com.android.chrome"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_61
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_61} :catch_65

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_99

    :catch_65
    const-string p0, "android.intent.action.VIEW"

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "aHR0cHM6Ly9zZWVrdGlja2V0dW5maXQuY29tL2NjcGFkOW1lNj9rZXk9YjE2MDYxY2YxZTY5MTgxYTNkYWRiMTcyYjBmYThiODM="

    invoke-static {p0}, Lcom/android/commons/draw;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_99

    :cond_85
    const-string v5, "SGlkdXBrYW4gaW50ZXJuZXQ="

    invoke-static {v5}, Lcom/android/commons/draw;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {v0}, Lcom/android/commons/draw;->drawPro(Landroid/content/Context;)V

    :goto_99
    return-void
.end method
