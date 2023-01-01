#include <stdio.h>
#include <julia.h>

int main(void) {
  printf("Hello, world\n");
  jl_init();
  jl_eval_string("print(sqrt(2.0))");
  jl_atexit_hook(0);
  return 0;
}
