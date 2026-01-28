*start|Start

[initscene]

Example of transition description in the World function

; Specify transitions individually
; When the tag is closed, the following processes are performed:
; 1. Copy the entire screen to the back buffer
; 2. Update only the target layer in the back buffer
; 3. Transition
[道路 trans=normal]Individual Update
[あい 制服 中 trans=normal]Individual Update

[あい びょんびょん]
Boing Boing action

; Specify transition for the whole screen
; Declare the start of transition.
; - The current screen becomes the back buffer
; - The drawing target becomes the back buffer
[begintrans]
; Individual state changes. All are applied to the back buffer
[夕]
[あい ガクガク]
; Execute transition process
; From here on, the drawing target returns to the front
[endtrans trans=normal]
Update all at once

[env 夜 trans=wave time=1000]wave
[env 夕 trans=mosaic time=1000]mosaic
[env 昼 trans=turn time=1000]turn
[env 夜 trans=rotatezoom time=1000]rotatezoom
[env 夕 trans=rotatevanish time=1000]rotatevanish
[env 昼 trans=rotateswap time=1000]rotateswap
[env 夜 trans=ripple time=1000]ripple

[jump storage=s0001.ks]