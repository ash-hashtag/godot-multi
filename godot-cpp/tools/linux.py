from SCons.Variables import *
from SCons.Tool import clang, clangxx


def options(opts):
    opts.Add(BoolVariable("use_llvm", "Use the LLVM compiler - only effective when targeting Linux", False))


def exists(env):
    return True


def generate(env):
    if env["use_llvm"]:
        clang.generate(env)
        clangxx.generate(env)

    env.Append(CCFLAGS=["-fPIC", "-Wwrite-strings"])
    env.Append(LINKFLAGS=["-Wl,-R,'$$ORIGIN'"])

    if env["target"] == "debug":
        env.Append(CCFLAGS=["-Og", "-g"])
    elif env["target"] == "release":
        env.Append(CCFLAGS=["-O3"])

    if env["arch"] == "x86_64":
        # -m64 and -m32 are x86-specific already, but it doesn't hurt to
        # be clear and also specify -march=x86-64. Similar with 32-bit.
        env.Append(CCFLAGS=["-m64", "-march=x86-64"])
        env.Append(LINKFLAGS=["-m64", "-march=x86-64"])
    elif env["arch"] == "x86_32":
        env.Append(CCFLAGS=["-m32", "-march=i686"])
        env.Append(LINKFLAGS=["-m32", "-march=i686"])
    elif env["arch"] == "arm64":
        env.Append(CCFLAGS=["-march=armv8-a"])
        env.Append(LINKFLAGS=["-march=armv8-a"])
    elif env["arch"] == "rv64":
        env.Append(CCFLAGS=["-march=rv64gc"])
        env.Append(LINKFLAGS=["-march=rv64gc"])
