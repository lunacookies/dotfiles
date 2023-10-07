syntax keyword cType
			\ i8 i16 i32 i64
			\ s8 s16 s32 s64
			\ u8 u16 u32 u64
			\ int8 int16 int32 int64
			\ uint8 uint16 uint32 uint64
			\ sint8 sint16 sint32 sint64
			\ uint sint
			\ usize isize ssize umm imm smm
			\ float32 float64 f32 f64
			\ real32 real64 r32 r64

syntax match cType '\v<\w+_t>'
syntax match cOperator '[+\-\*\/%&|<>=!~^]\+'
syntax keyword cOperator cast
