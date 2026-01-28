*start|Start

; Environment initialization process
[initscene]

; BGM Playback
[bgm01]
[道路 normal]

This is a scripting sample using KAGEX World Extension.
You can perform advanced staging with relatively simple descriptions.
It's easier to understand if you open char.ks and compare it with the actual file.

[あい 通常 中]
Character appearance

【Ai】Name display, text display, and key input wait are automatically performed in the prescribed format.
【Ai/???】To change the display name, just write the display name after the slash.
【Ai】If a voice number is specified, the voice will be played along with the text.
【Ai】Processing wait during auto-play is also automatically adjusted. The voice will play in the next text.

[あい voice=1]
【Ai】Junior High 3 Makiron Hell

[あい clearvoice]
【Ai】By the way, you can change the voice playback speed in the debug menu.

; Recollection end point
[endrecollection]

[あい 左]
Character movement (Left)

[あい 奥]
Character level change (Back)

[あい 中]
Character movement (Center)

[あい 手前]
Character level change (Front)

[あい 前]
Character movement (Forward)

[あい hide]
Character removal

[あい 左 fade]
Character appearance/fade control

[あい 消 fade]
Character removal/fade control

[あい 中]
Character appearance

[あい rotate=30 time=1000][あい zoom=120 time=1000]
Layer rotation/zoom control (when actions are not synchronized)

[あい rotate=0 time=1000 sync][あい zoom=100 time=1000 sync]
Layer rotation/zoom control (when actions are synchronized)

[夕 normal]
Evening (Characters are automatically color-corrected)

[夜 normal]
Night (Characters are automatically color-corrected)

[あい zoom=150 time=1000]
Layer zoom control 

[あい opacity=100 time=1000]
Opacity control

[あい reset]
Reset layer state

; Show event image
[EV file=event1 fade]
The event image has been displayed.

[EV rotate=30 time=1000]
Rotate event image

[EV rotate=@+30 time=1000]
Rotate event image (Relative specification) *The relative specification format has changed. Sorry.

[EV zoom=200 time=1000]
Zoom event image

[EV zoom=@-50 time=1000]
Zoom event image (Relative specification)

[EV hide fade]
Remove event image

[昼 normal]

[あい 喜]
Expression change (Happy)

[あい 怒]
Expression change (Angry)

[あい 右 time=500]
Movement with time specification (→Right) 

[あい 右:中 time=500]
Movement with initial position specified (Center→Right)

[あい 右:中 opacity=255:0 time=500]
Movement with initial position specified (Center→Left with opacity control)

[あい opacity=255:0 zoom=100:140 time=500]
Combined with zoom

*label6|Character Action

[newchar name=あい2 initname=あい 中 opacity=255:0 zoom=100:140 time=300 sync]
[newchar name=あい3 initname=あい 左 opacity=255:0 zoom=100:140 time=300 sync]
Cloning technique

[あい おじぎ]
[あい2 びょんびょん]
[あい3 ガクガク]
Applying Bow/Boing/Shake actions to each respectively

[あい 右中 time=500]
[あい3 左中 time=500]
Move so they overlap

[あい2 front]
Bring Ai2 to the front

[あい2 back]
Move Ai2 to the back

[あい  xpos=-800 time=500]
[あい2 xpos=-800 time=500]
[あい3 xpos=-800 time=500]
The End

[jump storage=s0001.ks]