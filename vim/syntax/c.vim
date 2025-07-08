let s:element_sizes = [8, 16, 32, 64, "machine"]
let s:counts = [1, 2, 3, 4, 8, 16, 32, 64]
let s:data_types = ["signed_int", "unsigned_int", "bool", "float"]

let s:custom_type_names = []
let s:simd_type_names = []

let s:simd_element_type_names = {
			\ "signed_int8": "char",
			\ "unsigned_int8": "uchar",
			\ "signed_int16": "short",
			\ "unsigned_int16": "ushort",
			\ "signed_int32": "int",
			\ "unsigned_int32": "uint",
			\ "signed_int64": "long",
			\ "unsigned_int64": "ulong",
			\ "float16": "half",
			\ "float32": "float",
			\ "float64": "double",
			\ }

for s:element_size in s:element_sizes
	for s:data_type in s:data_types
		if s:element_size ==# "machine" && !(s:data_type ==# "signed_int" || s:data_type ==# "unsigned_int")
			continue
		endif

		if s:data_type ==# "float" && s:element_size == 8
			continue
		endif

		let s:custom_element_type_names = []
		if s:element_size ==# "machine"
			if s:data_type ==# "signed_int"
				let s:custom_element_type_names += ["ISize", "SSize", "Imm", "Smm"]
			elseif s:data_type ==# "unsigned_int"
				let s:custom_element_type_names += ["USize", "Umm"]
			endif
		else
			let s:prefixes = []
			if s:data_type ==# "signed_int"
				let s:prefixes = ["Int", "I", "SInt", "S"]
			elseif s:data_type ==# "unsigned_int"
				let s:prefixes = ["UInt", "U"]
			elseif s:data_type ==# "bool"
				let s:prefixes = ["Bool", "B"]
			elseif s:data_type ==# "float"
				let s:prefixes = ["Float", "F", "Real", "R"]
			endif

			for s:prefix in s:prefixes
				let s:custom_element_type_names += [s:prefix . s:element_size]
			endfor
		endif

		let s:simd_element_type_name = get(s:simd_element_type_names, s:data_type . s:element_size, "nil")

		for s:count in s:counts
			if s:element_size ==# "machine" && s:count > 1
				continue
			endif

			if s:element_size !=# "machine"
				let s:vector_size = s:element_size * s:count
				if s:vector_size > 512
					continue
				endif
			endif

			if s:element_size ==# 32 && s:data_type ==# "float"
				let s:custom_type_names += ["V" . s:count]
			endif

			for s:element_type_name in s:custom_element_type_names
				if s:count ==# 1
					let s:custom_type_names += [s:element_type_name]
				else
					let s:custom_type_names += [
								\ s:element_type_name . "x" . s:count,
								\ "Vec" . s:count . s:element_type_name,
								\ "V" . s:count . s:element_type_name,
								\ ]
				endif
			endfor

			if s:data_type ==# "bool" && s:element_size ==# 8 && s:count ==# 1
				let s:simd_type_names += ["simd_bool"]
			endif

			if s:simd_element_type_name !=# "nil"
				if s:count ==# 1
					let s:simd_type_names += [s:simd_element_type_name]
				else
					let s:simd_type_names += [
								\ "simd_" . s:simd_element_type_name . s:count,
								\ "simd_packed_" . s:simd_element_type_name . s:count,
								\ ]
				endif
			endif
		endfor
	endfor
endfor

let s:type_names = s:simd_type_names + s:custom_type_names
for s:type_name in s:custom_type_names
	let s:type_names += [tolower(s:type_name)]
endfor

execute "syntax keyword cType " . join(s:type_names, " ")

syntax match cType '\v<\w+_t>'
syntax match cType '\v<_*[A-Z][a-zA-Z0-9_]*>'
syntax match cOperator '[+\-\*\/%&|<>=!~^]\+'
syntax keyword cOperator cast

syntax keyword cStatement function global local_persist read_only
syntax keyword cOperator size_of align_of
