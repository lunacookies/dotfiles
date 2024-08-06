syntax keyword cType
			\    i8    i16    i32    i64    I8    I16    I32    I64
			\    s8    s16    s32    s64    S8    S16    S32    S64
			\    u8    u16    u32    u64    U8    U16    U32    U64
			\    b8    b16    b32    b64    B8    B16    B32    B64
			\  int8  int16  int32  int64  Int8  Int16  Int32  Int64
			\ sint8 sint16 sint32 sint64 SInt8 SInt16 SInt32 SInt64
			\ uint8 uint16 uint32 uint64 UInt8 UInt16 UInt32 UInt64
			\ bool8 bool16 bool32 bool64 Bool8 Bool16 Bool32 Bool64
			\
			\     f32     f64     F32     F64
			\     r32     r64     R32     R64
			\ float32 float64 Float32 Float64
			\  real32  real64  Real32  Real64
			\
			\ uint sint UInt SInt
			\ isize ssize usize ISize SSize USize
			\ imm smm umm

syntax match cType '\v<\w+_t>'
syntax match cType '\v<_*[A-Z][a-zA-Z0-9_]*>'
syntax match cOperator '[+\-\*\/%&|<>=!~^]\+'
syntax keyword cOperator cast

syntax keyword cStatement function global local_persist read_only
syntax keyword cOperator size_of align_of
