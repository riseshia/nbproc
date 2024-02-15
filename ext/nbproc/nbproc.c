#include "ruby.h"

// https://github.com/ruby/ruby/blob/926277bf826127c65689ddf01f94e23d538a3b8b/vm.c#L1339-L1345
VALUE rb_proc_isolate(VALUE self);
VALUE rb_nbproc_isolate(VALUE self) {
  return rb_proc_isolate(self);
}

void Init_nbproc(void) {
  rb_define_method(rb_cProc, "isolate", rb_nbproc_isolate, 0);
}
