//! This a program that includes top-level doc comments.
//! Top-level doc comments are used to document your program
//! file.
//!
//! To fix this program, remove any top-level doc comments
//! that are written after any declarations o statements.

/// This is the standard library import.
const std = @import("std");
const builtin = @import("builtin");

/// True if the target OS is Linux, else false.
const is_linux = builtin.os.tag == .linux;

//! Invalid, top-level doc comments must only be
//! written before any statements in the file.
pub fn main() void {
    //! This is not valid.
    const answer = if (is_linux) "Yes" else "No";
    std.debug.print("Are you using Linux? {s}.\n", .{answer});
}
