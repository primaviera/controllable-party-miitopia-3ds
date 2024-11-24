// controllable party members .ips patch for miitopia 3ds
// https://github.com/gf2p8affineqb/controllable-party-miitopia-3ds
// patch for v1.1 JP miitopia dumps

.3ds
.open "code.bin", "build/patched_code.bin", 0x100000

.org 0x6ACA80 // control party members
	NOP
	NOP
.org 0x5D4718 // force magic menu to always open the first page
	MOV R6, #0
.org 0x6AEE34 // force autobattle button to show up without main hero in party 
	NOP

.close
