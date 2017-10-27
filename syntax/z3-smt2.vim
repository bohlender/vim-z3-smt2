" Vim syntax file
" " Language:     SMT-LIB2 with Z3's extensions
" " Maintainer:   Dimitri Bohlender <bohlender@embedded.rwth-aachen.de>
" " Last Change:  2017 Oct 25

" Quit if a syntax file is already loaded
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "z3-smt2"

" Comments
syntax match smt2Comment ";.*$"

" Keywords
syntax keyword smt2Keyword define-fun define-const assert push pop assert check-sat declare-const declare-fun get-model get-value declare-sort declare-datatypes reset eval set-logic help get-assignment exit get-proof get-unsat-core echo let forall exists define-sort set-option get-option set-info check-sat-using apply simplify elim-quantifiers display as get-info declare-map declare-rel declare-var rule query get-user-tactics minimize maximize assert-soft
syntax match smt2Keyword "!"

" Operators
syntax match smt2Operator "[=\|>\|<\|<=\|>=\|=>\|+\|\-\|*\|/]"

" Builtins
syntax keyword smt2Builtin mod div rem to_real and or not distinct to_int is_int xor if ite true false root-obj sat unsat const map store select sat unsat bit1 bit0 bvneg bvadd bvsub bvmul bvsdiv bvudiv bvsrem bvurem bvsmod  bvule bvsle bvuge bvsge bvult bvslt bvugt bvsgt bvand bvor bvnot bvxor bvnand bvnor bvxnor concat sign_extend zero_extend extract repeat bvredor bvredand bvcomp bvshl bvlshr bvashr rotate_left rotate_right get-assertions
syntax match smt2Builtin "[\^\~]"

" Identifier
syntax match smt2Identifier "\<[a-z_][a-zA-Z0-9_\-\.']*\>"

" Types
syntax match smt2Type "\<[A-Z][a-zA-Z0-9_\-\.']*\>"

" Strings
syntax region smt2String start=+"+ skip=+\\\\\|\\"+ end=+"+
syntax match smt2Option "\<:[a-zA-Z0-9_\-\.']*\>"

" Constructors
syntax match smt2Constructor "\<\$[a-zA-Z0-9_\-\.']*\>"

" Number
syntax match smt2Int "\<[0-9]\+\>"
syntax match smt2Hex "\<[0#][xX][0-9a-fA-F]\+\>"
syntax match smt2Binary "\<#b[01]\+\>"
syntax match smt2Float "\<[0-9]\+\.[0-9]\+\([eE][\-+]\=[0-9]\+\)\=\>" 

" Delimiter
syntax match smt2Delimiter "[()]"

highlight def link smt2Comment     Comment
highlight def link smt2Keyword     Function
highlight def link smt2Operator    Operator
highlight def link smt2Builtin     Operator
highlight def link smt2Identifier  Normal
highlight def link smt2Type        Type
highlight def link smt2String      String
highlight def link smt2Option      PreProc
highlight def link smt2Constructor Function
highlight def link smt2Float       Float
highlight def link smt2Hex         Number
highlight def link smt2Binary      Number
highlight def link smt2Int         Number
highlight def link smt2Delimiter   Delimiter

