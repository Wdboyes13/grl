# mac packaging
cp ~/coding/grl/app/build/javafx-libs/*mac.jar ~/coding/grl/OSpkg/morning.app/Contents/Resources/lib/intel/
cp ~/coding/grl/app/build/javafx-libs/*mac-aarch64.jar ~/coding/grl/OSpkg/morning.app/Contents/Resources/lib/aarch64/
cp ~/coding/grl/app/build/libs/app-all.jar ~/coding/grl/OSpkg/morning.app/Contents/Resources/
chmod +x ~/coding/grl/OSpkg/morning.app/Contents/MacOS/morning
codesign --deep --force --verbose --sign "Apple Development: wdboyes@icloud.com (5SFDQ6365C)" ~/coding/grl/OSpkg/morning.app
zip -r ~/coding/grl/OSpkg/morning.app.zip ~/coding/grl/OSpkg/morning.app/