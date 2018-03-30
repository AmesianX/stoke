#!/bin/bash

/usr/bin/time --verbose -o demo.time stoke_debug_verify --target opt1/stlen.s --rewrite opt1/stlen_unroll.s --strategy ddec --heap_out --stack_out --live_out "{ %rax }" --def_in "{ %rdi }" --solver cvc4 --alias_strategy flat --testcases testcases --ddec_threads 1
