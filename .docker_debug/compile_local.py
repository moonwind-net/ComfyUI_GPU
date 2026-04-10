import py_compile, traceback, sys
p = r'd:\\WSL2\\ComfyUI\\ComfyUI\\server.py'
try:
    py_compile.compile(p, doraise=True)
    print('COMPILED_OK')
except Exception:
    traceback.print_exc()
    sys.exit(1)
