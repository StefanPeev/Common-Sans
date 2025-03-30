@echo off

python3 -m fontmake -i -a -o ttf -m CommonSans.designspace
python3 -m fontmake -i -a -o otf -m CommonSans.designspace
python3 -m fontmake -a -o variable -m CommonSans.designspace

python fix-dsig.py .\autohinted\instance_ttf\CommonSans-CondensedThin.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-CondensedLight.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-CondExtLt.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-Condensed.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-CondensedMedium.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-CondensedSemiBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-CondensedBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-CondensedExtraBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-CondensedBlack.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-Thin.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-Light.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-ExtraLight.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-Regular.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-Medium.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-SemiBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-Bold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-ExtraBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-Black.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-ExpandedThin.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-ExpandedLight.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-ExpandedExtraLight.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-Expanded.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-ExpandedMedium.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-ExpandedSemiBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-ExpandedBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-ExpandedExtraBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\CommonSans-ExpandedBlack.ttf |
python fix-dsig.py .\instance_otf\CommonSans-CondensedThin.otf |
python fix-dsig.py .\instance_otf\CommonSans-CondensedLight.otf |
python fix-dsig.py .\instance_otf\CommonSans-CondExtLt.otf |
python fix-dsig.py .\instance_otf\CommonSans-Condensed.otf |
python fix-dsig.py .\instance_otf\CommonSans-CondensedMedium.otf |
python fix-dsig.py .\instance_otf\CommonSans-CondensedSemiBold.otf |
python fix-dsig.py .\instance_otf\CommonSans-CondensedBold.otf |
python fix-dsig.py .\instance_otf\CommonSans-CondensedExtraBold.otf |
python fix-dsig.py .\instance_otf\CommonSans-CondensedBlack.otf |
python fix-dsig.py .\instance_otf\CommonSans-Thin.otf |
python fix-dsig.py .\instance_otf\CommonSans-Light.otf |
python fix-dsig.py .\instance_otf\CommonSans-ExtraLight.otf |
python fix-dsig.py .\instance_otf\CommonSans-Regular.otf |
python fix-dsig.py .\instance_otf\CommonSans-Medium.otf |
python fix-dsig.py .\instance_otf\CommonSans-SemiBold.otf |
python fix-dsig.py .\instance_otf\CommonSans-Bold.otf |
python fix-dsig.py .\instance_otf\CommonSans-ExtraBold.otf |
python fix-dsig.py .\instance_otf\CommonSans-Black.otf |
python fix-dsig.py .\instance_otf\CommonSans-ExpandedThin.otf |
python fix-dsig.py .\instance_otf\CommonSans-ExpandedLight.otf |
python fix-dsig.py .\instance_otf\CommonSans-ExpandedExtraLight.otf |
python fix-dsig.py .\instance_otf\CommonSans-Expanded.otf |
python fix-dsig.py .\instance_otf\CommonSans-ExpandedMedium.otf |
python fix-dsig.py .\instance_otf\CommonSans-ExpandedSemiBold.otf |
python fix-dsig.py .\instance_otf\CommonSans-ExpandedBold.otf |
python fix-dsig.py .\instance_otf\CommonSans-ExpandedExtraBold.otf |
python fix-dsig.py .\instance_otf\CommonSans-ExpandedBlack.otf |

python fix-dsig.py .\variable_ttf\CommonSans-VF.ttf | python fix-dsig.py .\variable_ttf\CommonSans-Italic-VF.ttf

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\CommonSans-VF.ttf ..\fonts\vf\CommonSans[wght].ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit