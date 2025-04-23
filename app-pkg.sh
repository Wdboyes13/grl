# mac packaging
cp ~/coding/grl/app/build/javafx-libs/*mac.jar ~/coding/grl/OSpkg/morning.app/Contents/Resources/lib/intel/
cp ~/coding/grl/app/build/javafx-libs/*mac-aarch64.jar ~/coding/grl/OSpkg/morning.app/Contents/Resources/lib/aarch64/
cp ~/coding/grl/app/build/libs/app-all.jar ~/coding/grl/OSpkg/morning.app/Contents/Resources/
chmod +x ~/coding/grl/OSpkg/morning.app/Contents/MacOS/morning
codesign --deep --force --verbose --sign "Apple Development: wdboyes@icloud.com (5SFDQ6365C)" ~/coding/grl/OSpkg/morning.app

# windows packaging
cp -r ~/coding/jdk21-win/* ~/coding/grl/OSpkg/win/jre/
cp ~/coding/grl/app/build/javafx-libs/*win.jar ~/coding/grl/OSpkg/win/lib/
cp ~/coding/grl/app/build/libs/app-all.jar ~/coding/grl/OSpkg/win/
java -jar /Users/william/launch4j/launch4j.jar ~/coding/grl/OSpkg/win/config.xml