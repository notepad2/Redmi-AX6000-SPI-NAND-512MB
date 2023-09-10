## 修改image/mt7986.mk中的BLOCKSIZE := 128k为256k，PAGESIZE := 2048为4096，好像可有可无
sed -i '/mt7986a-xiaomi-redmi-router-ax6000/{n;n;n;n;n;s/128k/256k/;}' target/linux/mediatek/image/mt7986.mk
sed -i '/mt7986a-xiaomi-redmi-router-ax6000/{n;n;n;n;n;n;s/2048/4096/;}' target/linux/mediatek/image/mt7986.mk

## 修改DTS的ubi为490MB的0x1ea00000
sed -i 's/reg = <0x600000 0x6e00000>/reg = <0x600000 0x1ea00000>/' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-xiaomi-redmi-router-ax6000.dts
## 修改DTS的memory为512MB的0x20000000
sed -i 's/reg = <0 0x40000000 0 0x10000000>/reg = <0 0x40000000 0 0x20000000>/' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-xiaomi-redmi-router-ax6000.dtsi
## 修改DTS的spi_nand的spi-max-frequency为52MHz，52000000
sed -i 's/spi-max-frequency = <20000000>/spi-max-frequency = <52000000>/' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-xiaomi-redmi-router-ax6000.dtsi
