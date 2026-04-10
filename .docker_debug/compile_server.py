import py_compile, traceback, sys
try:
    py_compile.compile('/app/ComfyUI/server.py', doraise=True)
    print('COMPILED_OK')
except Exception:
    traceback.print_exc()
    sys.exit(1)
