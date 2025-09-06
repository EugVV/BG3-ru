#!/bin/sh

src_path=$(dirname -- $(readlink -fn -- "$0"))

cd "$src_path"

rm -rf build
mkdir -p build/source/Localization/Russian/Gender/Female
mkdir -p build/source/Localization/Russian/Gender/Neutral

dotnet ./Tools/Divine.dll -g bg3 -a convert-loca -s "$src_path/russian.xml" -d "$src_path/build/source/Localization/Russian/russian.loca"
dotnet ./Tools/Divine.dll -g bg3 -a convert-loca -s "$src_path/russian_M_to_X.xml" -d "$src_path/build/source/Localization/Russian/russian_M_to_X.loca"
dotnet ./Tools/Divine.dll -g bg3 -a convert-loca -s "$src_path/russian_to_F.xml" -d "$src_path/build/source/Localization/Russian/russian_to_F.loca"
dotnet ./Tools/Divine.dll -g bg3 -a convert-loca -s "$src_path/Gender/Female/russian.xml" -d "$src_path/build/source/Localization/Russian/Gender/Female/russian.loca"
dotnet ./Tools/Divine.dll -g bg3 -a convert-loca -s "$src_path/Gender/Female/russian_F_to_X.xml" -d "$src_path/build/source/Localization/Russian/Gender/Female/russian_F_to_X.loca"
dotnet ./Tools/Divine.dll -g bg3 -a convert-loca -s "$src_path/Gender/Female/russian_to_F.xml" -d "$src_path/build/source/Localization/Russian/Gender/Female/russian_to_F.loca"
dotnet ./Tools/Divine.dll -g bg3 -a convert-loca -s "$src_path/Gender/Neutral/russian_X_to_F.xml" -d "$src_path/build/source/Localization/Russian/Gender/Neutral/russian_X_to_F.loca"
dotnet ./Tools/Divine.dll -g bg3 -a convert-loca -s "$src_path/Gender/Neutral/russian_X_to_M.xml" -d "$src_path/build/source/Localization/Russian/Gender/Neutral/russian_X_to_M.loca"
dotnet ./Tools/Divine.dll -g bg3 -a convert-loca -s "$src_path/Gender/Neutral/russian_X_to_X.xml" -d "$src_path/build/source/Localization/Russian/Gender/Neutral/russian_X_to_X.loca"
dotnet ./Tools/Divine.dll -g bg3 -a create-package -c lz4hc -s "$src_path/build/source/" -d "$src_path/build/Russian.pak"
