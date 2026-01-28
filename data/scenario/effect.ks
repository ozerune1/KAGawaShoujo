*start|Start

; Environment initialization process
[initscene]

; BGM Playback
[road normal]

[ai standard center]
Character appearance

[newlay name=starf fire=star firecolor=red xpos=0 ypos=0 show]
Place fire

[newlay name=star1 file=star xpos=0 ypos=0 show]
Overlay the original image

Refer to world.txt for control parameters.
It cannot go outside the range of the source image, so please use an image with some extra space.

[dellay name=starf]
[dellay name=star1]
Clear