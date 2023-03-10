const std = @import("std");

/// This constant represents the maximum number of
/// students a group can have.
const MaxStudentsPerGroup = 50;

/// Adds two unsigned 8 bits integers.
fn add(a: u8, b: u8) u8 {
    return a +% b;
}

pub fn main() void {
    const a = 123;
    const b = 123;
    const result = add(a, b);
    _ = result;
}
