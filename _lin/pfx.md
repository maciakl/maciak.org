---
layout: wide
title: Extract SSL keys from PFX
subtitle: using OpenSSL
description: how to extract SSL keys from a PFX file using OpenSSL
---

### Problem

You have an exported SSL certificate in a `.pfx` format and you need to extract the private key and certificate from it.

You may also need `gd_bundle.crt` which is the CA bundle for your certificate.

### Solution

Let's assume your PFX file is named `cert.pfx`.

Extract the private key:

```bash
openssl pkcs12 -in cert.pfx -nocerts -out private.key
```

If desired remove the password from the key:

```bash
openssl rsa -in private.key -out private.key
```

Extract the private/public bundle:

```bash
openssl pkcs12 -in cert.pfx -out both.pem
```

Extract the public certificate from the bundle:

```bash
openssl x509 -in both.pem -pubkey -out public.crt -outform pem
```

At this point you should gave 3 files of note:

- `private.key` - your private key
- `public.crt` - your public certificate
- `gd_bundle.crt` - your CA bundle (if applicable)


Copy these to your web server's SSL directory, usually `/etc/ssl/`:

```bash
sudo cp private.key /etc/ssl/
sudo cp public.crt /etc/ssl/
sudo cp gd_bundle.crt /etc/ssl/
```

Edit the Apache configuration file (usually located at `/etc/apache2/sites-available/your-site.conf`):

```apache
SSLCertificateFile /etc/ssl/public.crt
SSLCertificateKeyFile /etc/ssl/private.key
SSLCertificateChainFile /etc/ssl/gd_bundle.crt
```

Finally, enable the SSL module and restart Apache:

```bash
sudo a2enmod ssl
sudo systemctl restart apache2
```
