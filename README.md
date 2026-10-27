# Earmark

A four-track recorder for iPhone, designed like a book page: cream paper, ink lines, a Kindle-style reading font.

- Four tracks with pan, fader, meters, record-arm, mute and solo
- Per-track effects: low cut, 3-band EQ with sweepable mid, compressor, drive, tone, echo send
- Space Echo: tape-style delay with three heads plus spring reverb
- Metronome with tap tempo, earmarks (hold Play), punch-in recording
- Light and Dark (sepia) themes
- Recordings save on the device; share a mix or export a full project (`.earmark.zip`) and import it back

The whole app is one file: `www/index.html`. iOS packaging uses [Capacitor](https://capacitorjs.com).

## Run in a browser

    cd www
    python3 -m http.server 8000

Open http://localhost:8000. The microphone works on `localhost` or any HTTPS host.

## Build for iPhone

Needs a Mac with Xcode and Node 22+.

    npm install
    npx cap sync ios
    npx cap open ios

In Xcode: App › Signing & Capabilities › Team → your Apple ID. Plug in your iPhone, select it, press ▶.
On the phone: turn on Developer Mode, and trust your profile in Settings › General › VPN & Device Management.

Free Apple ID builds expire after 7 days; press ▶ again to refresh.

## Making changes

Edit `www/index.html`, then `npx cap sync ios` and run again from Xcode.

## Project files

Export Project writes a `.earmark.zip` containing `project.json` (every setting) and one WAV per track.
Import it from the home page with “Import a voice memo or project”.
