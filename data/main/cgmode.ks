;
; CG Mode
;

[rclick enabled=true jump=true target=*backtotitle]

[eval exp='cgInit()']

*loop

; Load base image
[rclick enabled=true jump=true storage="" target=*backtotitle]
[backlay]
[position layer=message1 frame="cgmode_base" opacity=255 left=560 top=240 width=800 height=600 marginT=0 marginL=0 marginR=0 marginB=0 visible=true transparent=false page=back]
[current layer=message1 page=back]

; Buttons for transition
[locate x=330 y=48]
[button name="extra_cgmode" disabled]
[locate x=456 y=47]
[button name="extra_replaymode" storage="replay.ks"]
[locate x=563 y=47]
[button name="extra_musicmode" storage="musicmode.ks"]
[locate x=692 y=47]
[button name="return" target=*backtotitle]

; Character Selection
[locate x=10 y=101]
[button name="cgmode_page0" exp="tf.cgmodepage=0" target=*loop]
[locate x=10 y=177]
[button name="cgmode_page1" exp="tf.cgmodepage=1" target=*loop]
[locate x=10 y=256]
[button name="cgmode_page2" exp="tf.cgmodepage=2" target=*loop]
[locate x=10 y=336]
[button name="cgmode_page3" exp="tf.cgmodepage=3" target=*loop]
[locate x=10 y=416]
[button name="cgmode_page4" exp="tf.cgmodepage=4" target=*loop]
[locate x=10 y=496]
[button name="cgmode_page5" exp="tf.cgmodepage=5" target=*loop]

; CG Selection
; 1st Row
[locate x=284 y=122]
[button name="cg0" normal="cgmode_thum_normal" exp="tf.cgnum=0" target=*cgview]
[locate x=410 y=122]
[button name="cg1" normal="cgmode_thum_normal" exp="tf.cgnum=1" target=*cgview]
[locate x=536 y=122]
[button name="cg2" normal="cgmode_thum_normal" exp="tf.cgnum=2" target=*cgview]
[locate x=662 y=122]
[button name="cg3" normal="cgmode_thum_normal" exp="tf.cgnum=3" target=*cgview]
; 2nd Row
[locate x=284 y=232]
[button name="cg4" normal="cgmode_thum_normal" exp="tf.cgnum=4" target=*cgview]
[locate x=410 y=232]
[button name="cg5" normal="cgmode_thum_normal" exp="tf.cgnum=5" target=*cgview]
[locate x=536 y=232]
[button name="cg6" normal="cgmode_thum_normal" exp="tf.cgnum=6" target=*cgview]
[locate x=662 y=232]
[button name="cg7" normal="cgmode_thum_normal" exp="tf.cgnum=7" target=*cgview]
; 3rd Row
[locate x=284 y=342]
[button name="cg8" normal="cgmode_thum_normal" exp="tf.cgnum=8" target=*cgview]
[locate x=410 y=342]
[button name="cg9" normal="cgmode_thum_normal" exp="tf.cgnum=9" target=*cgview]
[locate x=536 y=342]
[button name="cg10" normal="cgmode_thum_normal" exp="tf.cgnum=10" target=*cgview]
[locate x=662 y=342]
[button name="cg11" normal="cgmode_thum_normal" exp="tf.cgnum=11" target=*cgview]
; 4th Row
[locate x=284 y=452]
[button name="cg12" normal="cgmode_thum_normal" exp="tf.cgnum=12" target=*cgview]
[locate x=410 y=452]
[button name="cg13" normal="cgmode_thum_normal" exp="tf.cgnum=13" target=*cgview]
[locate x=536 y=452]
[button name="cg14" normal="cgmode_thum_normal" exp="tf.cgnum=14" target=*cgview]
[locate x=662 y=452]
[button name="cg15" normal="cgmode_thum_normal" exp="tf.cgnum=15" target=*cgview]

[eval exp='setCgmodePageButton()']
[trans method=crossfade time=500]
[wt]
[current layer=message1 page=fore]
[s]

*cgview
[eval exp='cgViewInit()']

*cgviewloop
[rclick enabled=true jump=true storage="" target=*loop]
[if exp='isCgView()']
[stoptrans]
[backlay]
[position page=back layer=message1 frame="" opacity=255 left=0 top=0 width=800 height=600 marginT=0 marginL=0 marginR=0 marginB=0 visible=true]
[current page=back layer=message1]
[eval exp='cgView()']
[trans method=crossfade time=500]
[wt]
[current page=fore layer=message1]
[click target=*cgviewloop]
[s]
[endif]
[jump target=*loop]

*backtotitle
[rclick enabled=false jump=false]
[jump storage="title.ks" target=*backtotitle]