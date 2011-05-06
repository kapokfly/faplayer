/*
 * Memory buffer source filter
 * Copyright (c) 2008 Vitor Sessak
 *
 * This file is part of FFmpeg.
 *
 * FFmpeg is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * FFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with FFmpeg; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

#ifndef AVFILTER_VSRC_BUFFER_H
#define AVFILTER_VSRC_BUFFER_H

/**
 * @file
 * memory buffer source API for video
 */

#include "libavcodec/avcodec.h" /* AVFrame */
#include "avfilter.h"

int av_vsrc_buffer_add_frame(AVFilterContext *buffer_filter, AVFrame *frame,
                             int64_t pts);

int av_vsrc_buffer_add_frame2(AVFilterContext *buffer_filter, AVFrame *frame,
                              int64_t pts, int width,
                              int height, enum PixelFormat  pix_fmt,
                              const char *sws_param);

#endif /* AVFILTER_VSRC_BUFFER_H */
