; For initializing each scene

[macro name=initscene]

[clearlayers]

[stopse buf=1]

[stopse buf=2]

[stopbgm]

[stopvideo]

[video visible=false]

[history enabled=true]

[rclick enabled=true jump=false]

[position layer=message0 frame="messagewindow" opacity=200 left=50 top=800 width=1820 height=240 marginL=80 marginT=20 marginR=20 marginB=30 nameLeft=50 nameTop=-100 nameWidth=150 nameHeight=40 visible=true]
[current layer=message0]
[glyph fix=true left=1770 top=200]

[init]

[deffont face="Playtime Cyrillic" size=42]

[linemode mode=page]

[craftername mode=true]

[endmacro]



@return