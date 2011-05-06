
LOCAL_PATH:= $(call my-dir)

FF_INCLUDE := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/libavcodec \
    $(LOCAL_PATH)/libavdevice \
    $(LOCAL_PATH)/libavfilter \
    $(LOCAL_PATH)/libavformat \
    $(LOCAL_PATH)/libavutil \
    $(LOCAL_PATH)/libswscale

FF_COMMON_SRC := \
    libavcodec/4xm.c \
    libavcodec/8bps.c \
    libavcodec/8svx.c \
    libavcodec/aac_ac3_parser.c \
    libavcodec/aac_parser.c \
    libavcodec/aacadtsdec.c \
    libavcodec/aacdec.c \
    libavcodec/aacps.c \
    libavcodec/aacsbr.c \
    libavcodec/aactab.c \
    libavcodec/aandcttab.c \
    libavcodec/aasc.c \
    libavcodec/ac3.c \
    libavcodec/ac3_parser.c \
    libavcodec/ac3dec.c \
    libavcodec/ac3dec_data.c \
    libavcodec/ac3dsp.c \
    libavcodec/ac3tab.c \
    libavcodec/acelp_filters.c \
    libavcodec/acelp_pitch_delay.c \
    libavcodec/acelp_vectors.c \
    libavcodec/adpcm.c \
    libavcodec/adxdec.c \
    libavcodec/alac.c \
    libavcodec/allcodecs.c \
    libavcodec/alsdec.c \
    libavcodec/amrnbdec.c \
    libavcodec/amrwbdec.c \
    libavcodec/anm.c \
    libavcodec/ansi.c \
    libavcodec/apedec.c \
    libavcodec/arm/ac3dsp_arm.S \
    libavcodec/arm/ac3dsp_armv6.S \
    libavcodec/arm/ac3dsp_init_arm.c \
    libavcodec/arm/dcadsp_init_arm.c \
    libavcodec/arm/dsputil_arm.S \
    libavcodec/arm/dsputil_armv6.S \
    libavcodec/arm/dsputil_init_arm.c \
    libavcodec/arm/dsputil_init_armv5te.c \
    libavcodec/arm/dsputil_init_armv6.c \
    libavcodec/arm/fft_fixed_init_arm.c \
    libavcodec/arm/fft_init_arm.c \
    libavcodec/arm/fmtconvert_init_arm.c \
    libavcodec/arm/h264dsp_init_arm.c \
    libavcodec/arm/h264pred_init_arm.c \
    libavcodec/arm/jrevdct_arm.S \
    libavcodec/arm/mpegvideo_arm.c \
    libavcodec/arm/mpegvideo_armv5te.c \
    libavcodec/arm/mpegvideo_armv5te_s.S \
    libavcodec/arm/simple_idct_arm.S \
    libavcodec/arm/simple_idct_armv5te.S \
    libavcodec/arm/simple_idct_armv6.S \
    libavcodec/arm/vp56dsp_init_arm.c \
    libavcodec/arm/vp8_armv6.S \
    libavcodec/arm/vp8dsp_init_arm.c \
    libavcodec/ass.c \
    libavcodec/ass_split.c \
    libavcodec/assdec.c \
    libavcodec/asv1.c \
    libavcodec/atrac.c \
    libavcodec/atrac1.c \
    libavcodec/atrac3.c \
    libavcodec/audioconvert.c \
    libavcodec/aura.c \
    libavcodec/avfft.c \
    libavcodec/avpacket.c \
    libavcodec/avs.c \
    libavcodec/bethsoftvideo.c \
    libavcodec/bfi.c \
    libavcodec/bgmc.c \
    libavcodec/bink.c \
    libavcodec/binkaudio.c \
    libavcodec/binkidct.c \
    libavcodec/bitstream.c \
    libavcodec/bitstream_filter.c \
    libavcodec/bmp.c \
    libavcodec/c93.c \
    libavcodec/cabac.c \
    libavcodec/cavs.c \
    libavcodec/cavs_parser.c \
    libavcodec/cavsdec.c \
    libavcodec/cavsdsp.c \
    libavcodec/cdgraphics.c \
    libavcodec/celp_filters.c \
    libavcodec/celp_math.c \
    libavcodec/cga_data.c \
    libavcodec/cinepak.c \
    libavcodec/cljr.c \
    libavcodec/cook.c \
    libavcodec/cscd.c \
    libavcodec/cyuv.c \
    libavcodec/dca.c \
    libavcodec/dca_parser.c \
    libavcodec/dcadsp.c \
    libavcodec/dct.c \
    libavcodec/dfa.c \
    libavcodec/dirac.c \
    libavcodec/dirac_parser.c \
    libavcodec/dnxhd_parser.c \
    libavcodec/dnxhddata.c \
    libavcodec/dnxhddec.c \
    libavcodec/dpcm.c \
    libavcodec/dpx.c \
    libavcodec/dsicinav.c \
    libavcodec/dsputil.c \
    libavcodec/dv.c \
    libavcodec/dvbsub_parser.c \
    libavcodec/dvbsubdec.c \
    libavcodec/dvdata.c \
    libavcodec/dvdsub_parser.c \
    libavcodec/dvdsubdec.c \
    libavcodec/dwt.c \
    libavcodec/dxa.c \
    libavcodec/eac3dec.c \
    libavcodec/eac3dec_data.c \
    libavcodec/eacmv.c \
    libavcodec/eaidct.c \
    libavcodec/eamad.c \
    libavcodec/eatgq.c \
    libavcodec/eatgv.c \
    libavcodec/eatqi.c \
    libavcodec/error_resilience.c \
    libavcodec/escape124.c \
    libavcodec/faanidct.c \
    libavcodec/faxcompr.c \
    libavcodec/fft_fixed.c \
    libavcodec/fft_float.c \
    libavcodec/ffv1.c \
    libavcodec/flac.c \
    libavcodec/flac_parser.c \
    libavcodec/flacdata.c \
    libavcodec/flacdec.c \
    libavcodec/flashsv.c \
    libavcodec/flicvideo.c \
    libavcodec/flvdec.c \
    libavcodec/fmtconvert.c \
    libavcodec/fraps.c \
    libavcodec/frwu.c \
    libavcodec/g722.c \
    libavcodec/g726.c \
    libavcodec/gifdec.c \
    libavcodec/golomb.c \
    libavcodec/gsmdec.c \
    libavcodec/gsmdec_data.c \
    libavcodec/h261.c \
    libavcodec/h261_parser.c \
    libavcodec/h261dec.c \
    libavcodec/h263.c \
    libavcodec/h263_parser.c \
    libavcodec/h263dec.c \
    libavcodec/h264.c \
    libavcodec/h264_cabac.c \
    libavcodec/h264_cavlc.c \
    libavcodec/h264_direct.c \
    libavcodec/h264_hl_motion.c \
    libavcodec/h264_loopfilter.c \
    libavcodec/h264_parser.c \
    libavcodec/h264_ps.c \
    libavcodec/h264_refs.c \
    libavcodec/h264_sei.c \
    libavcodec/h264dsp.c \
    libavcodec/h264idct.c \
    libavcodec/h264pred.c \
    libavcodec/huffman.c \
    libavcodec/huffyuv.c \
    libavcodec/idcinvideo.c \
    libavcodec/iff.c \
    libavcodec/imc.c \
    libavcodec/imgconvert.c \
    libavcodec/indeo2.c \
    libavcodec/indeo3.c \
    libavcodec/indeo5.c \
    libavcodec/intelh263dec.c \
    libavcodec/interplayvideo.c \
    libavcodec/intrax8.c \
    libavcodec/intrax8dsp.c \
    libavcodec/inverse.c \
    libavcodec/ituh263dec.c \
    libavcodec/ivi_common.c \
    libavcodec/ivi_dsp.c \
    libavcodec/jpegls.c \
    libavcodec/jpeglsdec.c \
    libavcodec/jrevdct.c \
    libavcodec/jvdec.c \
    libavcodec/kbdwin.c \
    libavcodec/kgv1dec.c \
    libavcodec/kmvc.c \
    libavcodec/lagarith.c \
    libavcodec/lagarithrac.c \
    libavcodec/latm_parser.c \
    libavcodec/lcldec.c \
    libavcodec/loco.c \
    libavcodec/lsp.c \
    libavcodec/lzw.c \
    libavcodec/mace.c \
    libavcodec/mdct_fixed.c \
    libavcodec/mdct_float.c \
    libavcodec/mdec.c \
    libavcodec/mimic.c \
    libavcodec/mjpeg.c \
    libavcodec/mjpeg_parser.c \
    libavcodec/mjpegbdec.c \
    libavcodec/mjpegdec.c \
    libavcodec/mlp.c \
    libavcodec/mlp_parser.c \
    libavcodec/mlpdec.c \
    libavcodec/mlpdsp.c \
    libavcodec/mmvideo.c \
    libavcodec/motionpixels.c \
    libavcodec/mpc.c \
    libavcodec/mpc7.c \
    libavcodec/mpc8.c \
    libavcodec/mpeg12.c \
    libavcodec/mpeg12data.c \
    libavcodec/mpeg4audio.c \
    libavcodec/mpeg4video.c \
    libavcodec/mpeg4video_parser.c \
    libavcodec/mpeg4videodec.c \
    libavcodec/mpegaudio.c \
    libavcodec/mpegaudio_parser.c \
    libavcodec/mpegaudiodata.c \
    libavcodec/mpegaudiodec.c \
    libavcodec/mpegaudiodec_float.c \
    libavcodec/mpegaudiodecheader.c \
    libavcodec/mpegvideo.c \
    libavcodec/mpegvideo_parser.c \
    libavcodec/msgsmdec.c \
    libavcodec/msmpeg4.c \
    libavcodec/msmpeg4data.c \
    libavcodec/msrle.c \
    libavcodec/msrledec.c \
    libavcodec/msvideo1.c \
    libavcodec/mxpegdec.c \
    libavcodec/nellymoser.c \
    libavcodec/nellymoserdec.c \
    libavcodec/nuv.c \
    libavcodec/options.c \
    libavcodec/parser.c \
    libavcodec/pcm-mpeg.c \
    libavcodec/pcm.c \
    libavcodec/pcx.c \
    libavcodec/pgssubdec.c \
    libavcodec/pictordec.c \
    libavcodec/png.c \
    libavcodec/pngdec.c \
    libavcodec/pnm.c \
    libavcodec/pnm_parser.c \
    libavcodec/pnmdec.c \
    libavcodec/pthread.c \
    libavcodec/ptx.c \
    libavcodec/qcelpdec.c \
    libavcodec/qdm2.c \
    libavcodec/qdrw.c \
    libavcodec/qpeg.c \
    libavcodec/qtrle.c \
    libavcodec/r210dec.c \
    libavcodec/ra144.c \
    libavcodec/ra144dec.c \
    libavcodec/ra288.c \
    libavcodec/rangecoder.c \
    libavcodec/raw.c \
    libavcodec/rawdec.c \
    libavcodec/rdft.c \
    libavcodec/resample.c \
    libavcodec/resample2.c \
    libavcodec/rl2.c \
    libavcodec/roqvideo.c \
    libavcodec/roqvideodec.c \
    libavcodec/rpza.c \
    libavcodec/rtjpeg.c \
    libavcodec/rv10.c \
    libavcodec/rv30.c \
    libavcodec/rv30dsp.c \
    libavcodec/rv34.c \
    libavcodec/rv40.c \
    libavcodec/rv40dsp.c \
    libavcodec/s3tc.c \
    libavcodec/sgidec.c \
    libavcodec/shorten.c \
    libavcodec/simple_idct.c \
    libavcodec/sinewin.c \
    libavcodec/sipr.c \
    libavcodec/sipr16k.c \
    libavcodec/smacker.c \
    libavcodec/smc.c \
    libavcodec/snow.c \
    libavcodec/sonic.c \
    libavcodec/sp5xdec.c \
    libavcodec/srtdec.c \
    libavcodec/sunrast.c \
    libavcodec/svq1.c \
    libavcodec/svq1dec.c \
    libavcodec/svq3.c \
    libavcodec/synth_filter.c \
    libavcodec/targa.c \
    libavcodec/tiertexseqv.c \
    libavcodec/tiff.c \
    libavcodec/tmv.c \
    libavcodec/truemotion1.c \
    libavcodec/truemotion2.c \
    libavcodec/truespeech.c \
    libavcodec/tscc.c \
    libavcodec/tta.c \
    libavcodec/twinvq.c \
    libavcodec/txd.c \
    libavcodec/ulti.c \
    libavcodec/utils.c \
    libavcodec/v210dec.c \
    libavcodec/v210x.c \
    libavcodec/vb.c \
    libavcodec/vc1.c \
    libavcodec/vc1_parser.c \
    libavcodec/vc1data.c \
    libavcodec/vc1dec.c \
    libavcodec/vc1dsp.c \
    libavcodec/vcr1.c \
    libavcodec/vmdav.c \
    libavcodec/vmnc.c \
    libavcodec/vorbis.c \
    libavcodec/vorbis_data.c \
    libavcodec/vorbisdec.c \
    libavcodec/vp3.c \
    libavcodec/vp3_parser.c \
    libavcodec/vp3dsp.c \
    libavcodec/vp5.c \
    libavcodec/vp56.c \
    libavcodec/vp56data.c \
    libavcodec/vp56dsp.c \
    libavcodec/vp56rac.c \
    libavcodec/vp6.c \
    libavcodec/vp6dsp.c \
    libavcodec/vp8.c \
    libavcodec/vp8_parser.c \
    libavcodec/vp8dsp.c \
    libavcodec/vqavideo.c \
    libavcodec/wavpack.c \
    libavcodec/wma.c \
    libavcodec/wmadec.c \
    libavcodec/wmaprodec.c \
    libavcodec/wmavoice.c \
    libavcodec/wmv2.c \
    libavcodec/wmv2dec.c \
    libavcodec/wnv1.c \
    libavcodec/ws-snd1.c \
    libavcodec/xan.c \
    libavcodec/xiph.c \
    libavcodec/xl.c \
    libavcodec/xsubdec.c \
    libavcodec/xxan.c \
    libavcodec/yop.c \
    libavcodec/zmbv.c \
    libavfilter/allfilters.c \
    libavfilter/avfilter.c \
    libavfilter/avfiltergraph.c \
    libavfilter/defaults.c \
    libavfilter/drawutils.c \
    libavfilter/formats.c \
    libavfilter/graphparser.c \
    libavfilter/vsrc_buffer.c \
    libavformat/4xm.c \
    libavformat/aacdec.c \
    libavformat/ac3dec.c \
    libavformat/aea.c \
    libavformat/aiffdec.c \
    libavformat/allformats.c \
    libavformat/amr.c \
    libavformat/anm.c \
    libavformat/apc.c \
    libavformat/ape.c \
    libavformat/apetag.c \
    libavformat/applehttp.c \
    libavformat/applehttpproto.c \
    libavformat/asf.c \
    libavformat/asfcrypt.c \
    libavformat/asfdec.c \
    libavformat/assdec.c \
    libavformat/au.c \
    libavformat/avi.c \
    libavformat/avidec.c \
    libavformat/avio.c \
    libavformat/aviobuf.c \
    libavformat/avlanguage.c \
    libavformat/avs.c \
    libavformat/bethsoftvid.c \
    libavformat/bfi.c \
    libavformat/bink.c \
    libavformat/c93.c \
    libavformat/caf.c \
    libavformat/cafdec.c \
    libavformat/cavsvideodec.c \
    libavformat/cdg.c \
    libavformat/concat.c \
    libavformat/crypto.c \
    libavformat/cutils.c \
    libavformat/daud.c \
    libavformat/dfa.c \
    libavformat/diracdec.c \
    libavformat/dnxhddec.c \
    libavformat/dsicin.c \
    libavformat/dtsdec.c \
    libavformat/dv.c \
    libavformat/dxa.c \
    libavformat/eacdata.c \
    libavformat/electronicarts.c \
    libavformat/ffmdec.c \
    libavformat/ffmetadec.c \
    libavformat/file.c \
    libavformat/filmstripdec.c \
    libavformat/flacdec.c \
    libavformat/flic.c \
    libavformat/flvdec.c \
    libavformat/gopher.c \
    libavformat/gxf.c \
    libavformat/h261dec.c \
    libavformat/h263dec.c \
    libavformat/h264dec.c \
    libavformat/http.c \
    libavformat/httpauth.c \
    libavformat/id3v1.c \
    libavformat/id3v2.c \
    libavformat/idcin.c \
    libavformat/idroqdec.c \
    libavformat/iff.c \
    libavformat/img2.c \
    libavformat/ingenientdec.c \
    libavformat/ipmovie.c \
    libavformat/isom.c \
    libavformat/iss.c \
    libavformat/iv8.c \
    libavformat/ivfdec.c \
    libavformat/jvdec.c \
    libavformat/lmlm4.c \
    libavformat/lxfdec.c \
    libavformat/m4vdec.c \
    libavformat/matroska.c \
    libavformat/matroskadec.c \
    libavformat/md5proto.c \
    libavformat/metadata.c \
    libavformat/microdvddec.c \
    libavformat/mm.c \
    libavformat/mmf.c \
    libavformat/mms.c \
    libavformat/mmsh.c \
    libavformat/mmst.c \
    libavformat/mov.c \
    libavformat/mp3dec.c \
    libavformat/mpc.c \
    libavformat/mpc8.c \
    libavformat/mpeg.c \
    libavformat/mpegts.c \
    libavformat/mpegvideodec.c \
    libavformat/msnwc_tcp.c \
    libavformat/mtv.c \
    libavformat/mvi.c \
    libavformat/mxf.c \
    libavformat/mxfdec.c \
    libavformat/mxg.c \
    libavformat/ncdec.c \
    libavformat/nsvdec.c \
    libavformat/nut.c \
    libavformat/nutdec.c \
    libavformat/nuv.c \
    libavformat/oggdec.c \
    libavformat/oggparsecelt.c \
    libavformat/oggparsedirac.c \
    libavformat/oggparseflac.c \
    libavformat/oggparseogm.c \
    libavformat/oggparseskeleton.c \
    libavformat/oggparsespeex.c \
    libavformat/oggparsetheora.c \
    libavformat/oggparsevorbis.c \
    libavformat/oma.c \
    libavformat/options.c \
    libavformat/os_support.c \
    libavformat/pcm.c \
    libavformat/pcmdec.c \
    libavformat/pmpdec.c \
    libavformat/psxstr.c \
    libavformat/pva.c \
    libavformat/qcp.c \
    libavformat/r3d.c \
    libavformat/rawdec.c \
    libavformat/rawvideodec.c \
    libavformat/rdt.c \
    libavformat/riff.c \
    libavformat/rl2.c \
    libavformat/rm.c \
    libavformat/rmdec.c \
    libavformat/rpl.c \
    libavformat/rso.c \
    libavformat/rsodec.c \
    libavformat/rtmppkt.c \
    libavformat/rtmpproto.c \
    libavformat/rtp.c \
    libavformat/rtpdec.c \
    libavformat/rtpdec_amr.c \
    libavformat/rtpdec_asf.c \
    libavformat/rtpdec_h263.c \
    libavformat/rtpdec_h264.c \
    libavformat/rtpdec_latm.c \
    libavformat/rtpdec_mpeg4.c \
    libavformat/rtpdec_qcelp.c \
    libavformat/rtpdec_qdm2.c \
    libavformat/rtpdec_qt.c \
    libavformat/rtpdec_svq3.c \
    libavformat/rtpdec_vp8.c \
    libavformat/rtpdec_xiph.c \
    libavformat/rtpproto.c \
    libavformat/rtsp.c \
    libavformat/rtspdec.c \
    libavformat/sapdec.c \
    libavformat/sauce.c \
    libavformat/sdp.c \
    libavformat/seek.c \
    libavformat/segafilm.c \
    libavformat/sierravmd.c \
    libavformat/siff.c \
    libavformat/smacker.c \
    libavformat/sol.c \
    libavformat/soxdec.c \
    libavformat/spdif.c \
    libavformat/spdifdec.c \
    libavformat/srtdec.c \
    libavformat/swfdec.c \
    libavformat/tcp.c \
    libavformat/thp.c \
    libavformat/tiertexseq.c \
    libavformat/tmv.c \
    libavformat/tta.c \
    libavformat/tty.c \
    libavformat/txd.c \
    libavformat/udp.c \
    libavformat/utils.c \
    libavformat/vc1test.c \
    libavformat/voc.c \
    libavformat/vocdec.c \
    libavformat/vorbiscomment.c \
    libavformat/vqf.c \
    libavformat/wav.c \
    libavformat/wc3movie.c \
    libavformat/westwood.c \
    libavformat/wtv.c \
    libavformat/wtvdec.c \
    libavformat/wv.c \
    libavformat/xa.c \
    libavformat/xwma.c \
    libavformat/yop.c \
    libavformat/yuv4mpeg.c \
    libavutil/adler32.c \
    libavutil/aes.c \
    libavutil/arm/cpu.c \
    libavutil/audioconvert.c \
    libavutil/avstring.c \
    libavutil/base64.c \
    libavutil/cpu.c \
    libavutil/crc.c \
    libavutil/des.c \
    libavutil/error.c \
    libavutil/eval.c \
    libavutil/fifo.c \
    libavutil/file.c \
    libavutil/imgutils.c \
    libavutil/intfloat_readwrite.c \
    libavutil/inverse.c \
    libavutil/lfg.c \
    libavutil/lls.c \
    libavutil/log.c \
    libavutil/lzo.c \
    libavutil/mathematics.c \
    libavutil/md5.c \
    libavutil/mem.c \
    libavutil/opt.c \
    libavutil/parseutils.c \
    libavutil/pixdesc.c \
    libavutil/random_seed.c \
    libavutil/rational.c \
    libavutil/rc4.c \
    libavutil/samplefmt.c \
    libavutil/sha.c \
    libavutil/tree.c \
    libavutil/utils.c \
    libswscale/options.c \
    libswscale/rgb2rgb.c \
    libswscale/swscale.c \
    libswscale/utils.c \
    libswscale/yuv2rgb.c

FF_ARM_NEON_SRC := \
    libavcodec/arm/dsputil_init_neon.c \
    libavcodec/arm/dsputil_neon.S \
    libavcodec/arm/fmtconvert_neon.S \
    libavcodec/arm/int_neon.S \
    libavcodec/arm/mpegvideo_neon.S \
    libavcodec/arm/simple_idct_neon.S \
    libavcodec/arm/fft_neon.S \
    libavcodec/arm/fft_fixed_neon.S \
    libavcodec/arm/mdct_neon.S \
    libavcodec/arm/mdct_fixed_neon.S \
    libavcodec/arm/rdft_neon.S \
    libavcodec/arm/h264dsp_neon.S \
    libavcodec/arm/h264idct_neon.S \
    libavcodec/arm/h264pred_neon.S \
    libavcodec/arm/ac3dsp_neon.S \
    libavcodec/arm/dcadsp_neon.S \
    libavcodec/arm/synth_filter_neon.S \
    libavcodec/arm/vp3dsp_neon.S \
    libavcodec/arm/vp56dsp_neon.S \
    libavcodec/arm/vp8dsp_neon.S

FF_CFLAGS := -std=c99
FF_CFLAGS += -DHAVE_AV_CONFIG_H -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm
ifeq ($(BUILD_WITH_NEON),1)
LOCAL_ARM_NEON := true
endif

LOCAL_MODULE := ffmpeg

LOCAL_C_INCLUDES += $(FF_INCLUDE)

LOCAL_CFLAGS += $(FF_CFLAGS)

LOCAL_SRC_FILES := \
    $(FF_COMMON_SRC)

ifeq ($(BUILD_WITH_NEON),1)
LOCAL_CFLAGS += -DHAVE_NEON=1
LOCAL_SRC_FILES += $(FF_ARM_NEON_SRC)
else
LOCAL_CFLAGS += -DHAVE_NEON=0
endif

include $(BUILD_STATIC_LIBRARY)

