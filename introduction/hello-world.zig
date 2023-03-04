// Note: to start a comment we use "//".

const std = @import("std");
// We begin by importing the Zig standard library, we do this by
// defining a constant variable and assigning it what the @import
// built-in function returns.
//
// The name of the constant is [std], and the value assigned to
// to it is a "structure" representing the Zig standard library, which
// is returned by the @import built-in function. To that function
// was pass in the argument "std". As you can see, "std" is what we
// call in other languages a string, a sequense of characters enclosed
// by double quotes.
//
// For now, think of the returned "structure" as some kind-of key/value pairs data
// structure, in which keys will map to values, and where those values can be numbers,
// strings, functions, and also structures.

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello {s}.\n", .{"World"});
}
// As with many languages (mostly compiled languages), Zig has the concept
// of a main function, which represents the entry point of our program.
//
// Here we are declaring a "public" function named [main].
// Questions like "Why the keyword pub is needed and what it means?"
// will be answered later, for now just keep in mind that for programs
// that are meant to be executed (in constrast to libraries) a declaration
// of this function is needed.
//
// As note from the docs:
// For more advanced use cases, Zig offers other features to inform the compiler
// where the start of the program exists. Also, libraries do not need a pub fn main
// function because library code is called by other programs or libraries.
//
// This note means that Zig offers other ways to tell to the compiler what the
// entry point of our program is. Also, programs that are meant to be libraries
// don't need this function declaration.
//
// In Zig, a function is a "block" that contains statements and expressions.
// Also a function may or may not return a value. Functions in Zig have the
// same purpose as in functions from languages like C and Go, they are a way
// for organizing program.
//
// A function might return an error to notify the calling code that something
// went wrong. Zig provides a nice error handling mechanism.
//
// In the Hello World program, the main function has a return type of `!void`.
// This return type is known as "an error union type", this special data type
// is a data type that combines "an error set" with another data type, when a
// function has this kind of return type, this means that the function will
// return an error or a value.
//
// The full syntax for this data type is: `<error set type>!<any data>`.
//
// Ok, it's not quite easy to understand if you haven't used languages
// that have a similar mechanism, but the point is, in Zig, the fact
// that a function might return an error  gets encoded in the return type.
// So, whenever you see a function includes a "!" in its return type, that
// means the function could return an error, and this error has to be checked.
//
// In the case of the Hello World program, the main function might return an
// an error or it might return nothing (void).
//
// It's ok to feel a little bit confused, there's more documentation about
// error handling, and I'll come to it in the future.

