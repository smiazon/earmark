#!/bin/sh
# Re-adds the microphone permission if you ever regenerate the ios folder.
PLIST=ios/App/App/Info.plist
/usr/libexec/PlistBuddy -c "Add :NSMicrophoneUsageDescription string 'Earmark records your voice and instruments onto its tracks.'" "$PLIST" 2>/dev/null || true
