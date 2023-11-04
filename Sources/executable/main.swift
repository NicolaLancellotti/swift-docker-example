import Library
import CLibrary
import CXXLibrary

do {
  let value: Int = 2
  print("identity(\(value)) == \(identity(value))")
}

do {
  let value: Int16 = 2
  print("int16Identity(\(value)) == \(int16Identity(value))")
}

do {
  let value: Int32 = 2
  print("int32Identity(\(value)) == \(int32Identity(value))")
}

do {
  let value: Int64 = 2
  print("int64Identity(\(value)) == \(int64Identity(value))")
}
