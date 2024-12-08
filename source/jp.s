// controllable party members .ips patch for miitopia 3ds
// https://github.com/primaviera/controllable-party-miitopia-3ds
// patch for JP miitopia dumps

.3ds
.open "code.bin", "build/patched_code.bin", 0x100000

.org 0x6A9170 // control party members
	NOP
	NOP
.org 0x5D2D84 // force magic menu to always open the first page
	MOV R6, #0
.org 0x6AB524 // force autobattle button to show up without main hero in party 
	NOP

.close
