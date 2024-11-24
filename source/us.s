// controllable party members .ips patch for miitopia 3ds
// https://github.com/gf2p8affineqb/controllable-party-miitopia-3ds
// patch for US miitopia dumps

.3ds
.open "code.bin", "build/patched_code.bin", 0x100000

.org 0x6B66B0 // control party members
	NOP
	NOP
.org 0x5DC674 // force magic menu to always open the first page
	MOV R6, #0
.org 0x6B8BDC // force autobattle button to show up without main hero in party 
	NOP

.close
