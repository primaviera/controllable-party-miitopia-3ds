# controllable-party-miitopia-3ds

controllable party members .ips patch for miitopia 3ds

## compiling the patch

to compile the patch, you'll need:
- [armips](https://github.com/Kingcom/armips)
- [flips](https://github.com/Alcaro/Flips)
- decompressed `code.bin` from your miitopia dump placed in the project root

then you can just use `make REGION` to compile the patch, replacing `REGION` with one of the following values based on your dump's region:
  - `us` for the north american version
  - `eu` for the european version
  - `jp` for the base japanese version
  - `jp_update` for the v1.1 japanese version
