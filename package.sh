# copy Linux JFX
cp ~/coding/grl/app/build/javafx-libs/javafx-base-21-linux.jar ~/coding/grl/pkg/lib/linux/
cp ~/coding/grl/app/build/javafx-libs/javafx-graphics-21-linux.jar ~/coding/grl/pkg/lib/linux/
cp ~/coding/grl/app/build/javafx-libs/javafx-fxml-21-linux.jar ~/coding/grl/pkg/lib/linux/
cp ~/coding/grl/app/build/javafx-libs/javafx-controls-21-linux.jar ~/coding/grl/pkg/lib/linux/

# copy mac JFX
cp ~/coding/grl/app/build/javafx-libs/javafx-base-21-mac.jar ~/coding/grl/pkg/lib/mac/
cp ~/coding/grl/app/build/javafx-libs/javafx-graphics-21-mac.jar ~/coding/grl/pkg/lib/mac/
cp ~/coding/grl/app/build/javafx-libs/javafx-fxml-21-mac.jar ~/coding/grl/pkg/lib/mac/
cp ~/coding/grl/app/build/javafx-libs/javafx-controls-21-mac.jar ~/coding/grl/pkg/lib/mac/

# copy mac-aarch64 JFX
cp ~/coding/grl/app/build/javafx-libs/javafx-base-21-mac-aarch64.jar ~/coding/grl/pkg/lib/mac-aarch/
cp ~/coding/grl/app/build/javafx-libs/javafx-graphics-21-mac-aarch64.jar ~/coding/grl/pkg/lib/mac-aarch/
cp ~/coding/grl/app/build/javafx-libs/javafx-fxml-21-mac-aarch64.jar ~/coding/grl/pkg/lib/mac-aarch/
cp ~/coding/grl/app/build/javafx-libs/javafx-controls-21-mac-aarch64.jar ~/coding/grl/pkg/lib/mac-aarch/

# copy win JFX
cp ~/coding/grl/app/build/javafx-libs/javafx-base-21-win.jar ~/coding/grl/pkg/lib/win/
cp ~/coding/grl/app/build/javafx-libs/javafx-graphics-21-win.jar ~/coding/grl/pkg/lib/win/
cp ~/coding/grl/app/build/javafx-libs/javafx-fxml-21-win.jar ~/coding/grl/pkg/lib/win/
cp ~/coding/grl/app/build/javafx-libs/javafx-controls-21-win.jar ~/coding/grl/pkg/lib/win/

cp ~/coding/grl/app/build/libs/app-all.jar ~/coding/grl/pkg/app-all.jar
chmod +x ~/coding/grl/pkg/run.sh
tar czf morning.tar.gz ~/coding/grl/pkg