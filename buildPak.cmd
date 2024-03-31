rmdir /s /q build
mkdir build
mkdir build\source
mkdir build\source\Localization
mkdir build\source\Localization\Russian
mkdir build\source\Localization\Russian\Gender
mkdir build\source\Localization\Russian\Gender\Female
mkdir build\source\Localization\Russian\Gender\Neutral
.\Tools\Divine.exe -g bg3 -a convert-loca -s %cd%\russian.xml -d %cd%\build\source\Localization\Russian\russian.loca
.\Tools\Divine.exe -g bg3 -a convert-loca -s %cd%\russian_M_to_X.xml -d %cd%\build\source\Localization\Russian\russian_M_to_X.loca
.\Tools\Divine.exe -g bg3 -a convert-loca -s %cd%\russian_to_F.xml -d %cd%\build\source\Localization\Russian\russian_to_F.loca
.\Tools\Divine.exe -g bg3 -a convert-loca -s %cd%\Gender\Female\russian.xml -d %cd%\build\source\Localization\Russian\Gender\Female\russian.loca
.\Tools\Divine.exe -g bg3 -a convert-loca -s %cd%\Gender\Female\russian_F_to_X.xml -d %cd%\build\source\Localization\Russian\Gender\Female\russian_F_to_X.loca
.\Tools\Divine.exe -g bg3 -a convert-loca -s %cd%\Gender\Female\russian_to_F.xml -d %cd%\build\source\Localization\Russian\Gender\Female\russian_to_F.loca
.\Tools\Divine.exe -g bg3 -a convert-loca -s %cd%\Gender\Neutral\russian_X_to_F.xml -d %cd%\build\source\Localization\Russian\Gender\Neutral\russian_X_to_F.loca
.\Tools\Divine.exe -g bg3 -a convert-loca -s %cd%\Gender\Neutral\russian_X_to_M.xml -d %cd%\build\source\Localization\Russian\Gender\Neutral\russian_X_to_M.loca
.\Tools\Divine.exe -g bg3 -a convert-loca -s %cd%\Gender\Neutral\russian_X_to_X.xml -d %cd%\build\source\Localization\Russian\Gender\Neutral\russian_X_to_X.loca
.\Tools\Divine.exe -g bg3 -a create-package -c lz4hc -s %cd%\build\source\ -d %cd%\build\Russian.pak