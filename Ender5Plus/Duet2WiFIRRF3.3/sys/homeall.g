; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.3.10 on Wed Jan 12 2022 21:37:09 GMT+0000 (Greenwich Mean Time)
G91                     ; relative positioning
G1 H2 Z2 F6000          ; lift Z relative to current position
G1 H1 X-365 Y-365 F1800 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 H2 X5 Y5 F6000       ; go back a few mm
G1 H1 X-365 Y-365 F360  ; move slowly to X and Y axis endstops once more (second pass)
G90                     ; absolute positioning
G1 X-20 Y25 F6000       ; go to first bed probe point and home Z
G30                     ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z2 F100             ; lift Z relative to current position
;G90                    ; absolute positioning


