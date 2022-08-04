# GalgameReverse

Some methods for extracting or importing in Galgame,  
as well as some methods for CHS localization.  
util tools are moved to [ReverseUtil](https://github.com/YuriSizuku/ReverseUtil).

## (1) Cross galgame

### onscripter

* `extract_nt3.c`,  extract *.nt3 script  

### krkr

* `krkr_patch.c`, make `krkr_patch.dll` for changing locale and redirect CHSPATCH  
* `krkr_sjis2utf16bom` , batch convert `sjis` files to `utf-16le-bom` format  

> つばさの丘の姫王

* `sdhime_xp3enc.cpp`,  make encrypted xp3 files  
* `sdhime_krkrpatch`, chs localization support

### artemis

* `artemis_pf8.py`,  pf8 format archive pack and unpack  

### tyrano

* `tyrano_extractexe.c` extract tyrano build-in exe files  

> Q-bit_キグルミキノコ (android)  

* `qbit_text.py` export and import text for translation

## (2) PC galgame

### azsystem

> ラムネ

* `lamune_hook.js`, decrypt the `*.asb` and `*.tbl` files  
* `lamune_patch.c`, semi-dynamic framework for chs localization

### majiro

> Winter Polaris

* `winterpolaris_hook.js`, dump `mjo` and analyze `majiro` in `winter polaris` game  
* `winterpolaris_patch.c`, Majirov3 dynamic hook framework code example  

### yuris

> 越えざるは红い花 remaster

* `akaihana_yurispatch.c`, yuris gbk support  

### advhd (willplus)

> Blackish House

* `advhd_patch.c`, gbk support and overide arc file  
* `advhd_arc.py`, willplus advhd arc pack or unpack  
* `advhd_ws2.py`, willplus advhd ws2 text export or import  
* `advhd_pna.py`, willplus advhd ws2 pna export and import  

### criware

> 祝姫

* `xtx_font.py`, `xtx` font decode and encode, for `祝姫`  
* `iwaihime_pc_decrypt.c`,  `sn.bin` decode  

### ig (innocent gray)

> 天ノ少女

* `redirect_ig.c`, redirect the files to `xxx_chs` for separate CHSPATCH, tested in `天ノ少女`　`Innocent Gray`  

### hibiki

> Natrual Vacation

* `hibiki_text_ks.py`, export and import game text for ftext format
* `hibiki_rename_picture.py`, rename all the picture name to crc32, to avoid sjis file name problem

### bruns

> 解体挿入新書

* `bruns_decrypt.c` , decrypt  `EENZ` file,  `解体挿入新書` tested  

### ffa

> 天巫女姫

* `amanomiko_patch.c`, add new lzss support and gbk support
* `AmaNoMikoHime_lzss.py`, parse lzss compress file with header
* `AmaNoMikoHime_SO4.py`, export or import text in so4 files
* `AmaNoMikoHime_PT1.py`, parse PT1 image file rgb24 format

### livemaker

> アイするキミの居場所

* `aikimi_loader.c`, a loader to dynamic inject DLL to the game
* `aikimi_patch.c`, patch the game dynamiclly to support `GBK` text

## (3) Console galgame

### nippon1

> 夜廻3 (switch)

* `ykcmp.py`, an implementation in python to parse ykcmp compression.  
* `yomawari3_nltx.py`, deal with switch swizzle texture in nltx file.

> 神々の悪戯 (psp)

* `KamigamiNoAsobi_nispack.py`, export or import nispack  
* `KamigamiNoAsobi_story.py`, export or import text in story.dat  
* `KamigamiNoAsobi_font.py`, analyze the multi page font  
* `KamigamiNoAsobi_txp.py`, export or import txp picture  

### prototype

> Air (psv)

* `air_psv_dat.py`, dat picture（RGBA8888, RGB888, delta encoding,color panel） decode and encode  
* `air_psv_psbtext.py`, extract and import the text to PSV `air`, can be longer than origin  
* `air_psv_4bppfnt.py`, for building the psv air 4bpp font  

### hobibox

> Narcissus ナルキッソス～もしも明日があるなら (psp)

* `Narcissus_lzss.py`, parse lzss structure with header  
* `Narcissus_sn.py`, export or import sn.bin (after decompress)  
* `Narcissus_sntext.py`, export or import sn.bin (after extract) text  
* `Narcissus_2bppfont.py`, parse font.bin and make 2bpp font  
* `Narcissus_lbg.py`, extract and rebuild lbg texture  

### cycrose

> 薔薇ノ木ニ薔薇ノ花咲ク (psp)

* `baranoki_psp_zp.py`, ``baranoki_psp_pk``, support `*.zp`, `*.pk` file for `薔薇ノ木ニ薔薇ノ花咲ク`  
* `baranoki_psp_vmc.py`, `baranoki_psp_pktext.py`, text support  
* `baranoki_psp_fontfnt.py`, `baranoki_psp_fontp.py`, tile font support  
* `baranoki_psp_boot.py`, rebuild the boot for fixing size buffer  

### gss (takuyo)

> 月影の鎖 -錯乱パラノイア (psp, psv)

* `gss_arc.cs`, for `月影の鎖 -錯乱パラノイア` PSP, PSV see, my [pull request](https://github.com/morkt/GARbro/pull/435) in my forked GARBRO  

### if (idea factory)

> Jewelic Nightmare (psp)

* `Jewelic_UF.py`,  building the UF tile font,  for`Jewelic Nightmare (ジュエリック・ナイトメア)`  
* `Jewelic_STCM2L.py`,  converting the `ftext` (by [bintext.py](https://github.com/YuriSizuku/ReverseUtil/blob/master/script/bintext.py)) to STCM2Ltool format (made by [STCM2L_import.py](https://github.com/Yggdrasill-Moe/Helheim/blob/master/%E5%8D%81%E9%AC%BC%E4%B9%8B%E7%BB%8A/STCM2L_import.py)),  for`Jewelic Nightmare (ジュエリック・ナイトメア)`  

### konami

> ときめきメモリアル Girl's Side: 3rd Story (psp)

* `GS3_scriptEVSC.py`, parse EVSC opcode, export or import text  

### koei

> 遙かなる時空の中で (psp)

* `Harukanaru_cdar.py`, parse cdvdar (type v4) structure  

> 金色のコルダ (psp)

* `KiniroNoCorda_cdar.py`, parse cdvdar (type v2) structure  
* `KiniroNoCorda_eboot.py`, patch the eboot for chs support, extend the fontmap and font glphy memory  
* `KiniroNoCorda_eventdat.py`, parse event text, export and import  
* `KiniroNoCorda_font.py`, parse 4bpp 16X16 font  
