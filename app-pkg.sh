# mac packaging
cp ~/coding/grl/app/build/javafx-libs/*mac.jar ~/coding/grl/OSpkg/lib/mac-intel/
cp ~/coding/grl/app/build/javafx-libs/*mac-aarch64.jar ~/coding/grl/OSpkg/lib/mac-aarch64/
cp ~/coding/grl/app/build/libs/app-all.jar ~/coding/grl/OSpkg/lib/mac-aarch64/
cp ~/coding/grl/app/build/libs/app-all.jar ~/coding/grl/OSpkg/lib/mac-intel/
rm -rf ~/coding/grl/app/Morning-arm.app
rm -rf ~/coding/grl/app/Morning-x64.app
jpackage --type app-image --input ~/coding/grl/OSpkg/lib/mac-aarch64 --name Morning-arm --main-jar app-all.jar --main-class org.william.tasks.App --java-options "--module-path $MOD_PATH --add-modules javafx.controls,javafx.fxml"
jpackage --type app-image --input ~/coding/grl/OSpkg/lib/mac-intel --name Morning-x64 --main-jar app-all.jar --main-class org.william.tasks.App --java-options "--module-path $MOD_PATH --add-modules javafx.controls,javafx.fxml"
codesign --deep --force --verbose --sign "Apple Development: wdboyes@icloud.com (5SFDQ6365C)" ~/coding/grl/app/Morning-arm.app
codesign --deep --force --verbose --sign "Apple Development: wdboyes@icloud.com (5SFDQ6365C)" ~/coding/grl/app/Morning-x64.app
zip -r ~/coding/grl/dist/Morning-arm.app.zip ~/coding/grl/app/Morning-arm.app/ 
zip -r ~/coding/grl/dist/Morning-x64.app.zip ~/coding/grl/app/Morning-x64.app/ 