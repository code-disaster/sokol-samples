//------------------------------------------------------------------------------
//  objcpp-compile-test.mm
//  Just check whether (most of) the sokol headers also comppile as C++.
//------------------------------------------------------------------------------
#if !defined(__APPLE__)
#error "This is for Apple platforms only"
#endif
#define SOKOL_IMPL
#include "sokol_app.h"
#include "sokol_args.h"
#include "sokol_audio.h"
#include "sokol_gfx.h"
#include "sokol_time.h"
#include "sokol_fetch.h"
#include "sokol_glue.h"

#define SOKOL_GL_IMPL
#include "sokol_gl.h"

#define SOKOL_DEBUGTEXT_IMPL
#include "sokol_debugtext.h"

#include "imgui.h"
#define SOKOL_IMGUI_IMPL
#include "sokol_imgui.h"

#define SOKOL_GFX_IMGUI_IMPL
#include "sokol_gfx_imgui.h"

#define FONTSTASH_IMPLEMENTATION
#if defined(_MSC_VER )
#pragma warning(disable:4996)   // strncpy use in fontstash.h
#endif
#if defined(__GNUC__) || defined(__clang__)
#pragma GCC diagnostic ignored "-Wunused-function"
#endif
#include "fontstash/fontstash.h"
#define SOKOL_FONTSTASH_IMPL
#include "sokol_fontstash.h"

static sapp_desc desc;

sapp_desc sokol_main(int argc, char* argv[]) {
    (void)argc; (void)argv;
    /* just interested whether the compilation worked, so force-exit here */
    exit(0);
    return desc;
}
