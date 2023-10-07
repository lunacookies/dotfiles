syntax keyword cType i8 s8 int8 i16 s16 int16 i32 s32 int32 i64 s64 int64 isize ssize u8 uint8 u16 uint16 u32 uint32 u64 uint64 usize f32 float32 f64 float64
syntax match cType '\v<\w+_t>'
syntax match cOperator '[+\-\*\/%&|<>=!~^]\+'
syntax keyword cOperator cast
