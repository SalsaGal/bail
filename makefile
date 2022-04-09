out/disk.img: out/bootload.bin
	dd if=out/bootload.bin of=out/disk.img

out/bootload.bin: src/bootload.asm
	nasm src/bootload.asm -o out/bootload.bin
