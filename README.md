# Plural Rabbit

> Free · Open Source · Offline-First · Privacy-Focused · Plural-Inclusive

Plural Rabbit is a system management app for plural systems of all kinds — traumagenic, endogenic, median, mixed-origin, and questioning.

No cloud. No accounts. No data ever leaves your device except by your explicit action.

---

## Quick Start

### 1. Duplicate this repository

Click **Use this template** → **Create a new repository** on your own GitHub account.
Make your repo **private** to keep your data private.

### 2. Enable GitHub Pages (for the fronting page and web app)

In your repo: **Settings → Pages → Source: Deploy from a branch → main / root**

The included GitHub Actions workflow (`pages.yml`) handles deployment automatically on every push.

### 3. Build and sideload the APK

Prerequisites: [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.

```bash
cd mobile
flutter pub get
flutter build apk --debug   # fast, unsigned — works for sideloading
```

The APK is at `mobile/build/app/outputs/flutter-apk/app-debug.apk`.

On your Android device: **Settings → Security → Install from unknown sources**, then open the APK.

For a release build (signed):

```bash
# Generate a keystore (one-time)
keytool -genkey -v -keystore plural-rabbit.jks -keyAlias pluralrabbit \
  -keyalg RSA -keysize 2048 -validity 10000

# Create mobile/android/key.properties with your keystore credentials
# (see docs/signing.md)

flutter build apk --release --split-per-abi
```

**Never commit your keystore or key.properties.**

### 4. Web app

Open `https://<your-github-username>.github.io/<your-repo-name>/web/` in a browser.
Load your Full Data Export JSON to view and edit your data.

---

## Repository Structure

```
plural-rabbit/
  mobile/       Flutter app (Android APK + future iOS)
  web/          Static web app (GitHub Pages desktop equivalent)
  fronting/     Fronting page (auto-overwritten by the app on push)
  docs/         Setup and usage documentation
  .github/      GitHub Actions workflows
```

---

## Privacy & Security

- All data is stored locally in an encrypted SQLite database (SQLCipher)
- Encryption key: PBKDF2-HMAC-SHA256 derivation from your master password, or a device-bound random key if no master password is set
- No central server. No analytics. No telemetry.
- The only network call the app ever makes is to the GitHub API when you explicitly push your fronting page

---

## License

GPL-3.0 — see [LICENSE](LICENSE)
