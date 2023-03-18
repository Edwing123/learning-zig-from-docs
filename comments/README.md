# Comments in Zig

as with many languages, Zig offers a way to add comments
to our code.

comments in Zig start with two forward slashes (`//`) and end until
the end of the line.

```zig
// This is a comment.
const std = @import("std");

// This is another comments.
// The below constant definition is commented.
// const year = 2023;
```

In Zig there are not multiline comments, for example: `/**/` in C or Javascript.
Some people are okay with this, and I've been getting used to it, too. However,
I would like to have multiline comments.

## Doc comments

Or documentation comments.

Zig offers a special kind of comment, this type of comment is used
to add documentation to whatever follows that comment, for example, a function
definition, constant, etc.

A doc comment starts with _exactly_ three forward slashes (`///`):

```zig
/// This is a doc comment.
const what = "Nothing".
```

Multiple doc comments in a row are "merged" to form a multiline comment:

```zig
/// This constant represents the maximum number of students
/// a group can have.
const MaxStudentsPerGroup = 40;
```

By "merged", they mean that all those comments will represent the
documentation for whatever follows them.

Alright, that sounds cool, but what's the advantage of using this type
of comment vs the normal comment (//)?

Well, in editors like VSCode and Helix with the ZLS installed, whenever you hover
over a variable, a function, a type, etc. The editor will show information about it
in a pop-up, and if doc comments were written for it, it'll also show them. here is
an example:

![Doc comments shown when seeing function information.](../assets/doc-comments-hover.png)

> Note: ZLS is an implementation of Microsoft language server protocol for Zig.
> In short, it's a program that editors like VSCode and Helix use to offer functionalities
> like autocomplete, go to references, code static analysis, etc.

Also, remember the documentation website for the Zig standard library? the documentation
for that website is gathered from the doc comments found in the standard library source code.

> Note: the documentation says that doc comments are only allowed in some places,
> and in the future, the compiler will show an error if it finds a doc comment in a wrong place.

## Top-level doc comments

Zig provides another type of special comment, its name is "Top-level doc comment",
its purpose, as with doc comments, is to document something, in this case though, that
"something" is not whatever follows the top-level doc comment (which is the case with doc comments).
Instead they are meant for adding documentation at the top-level of a source file.

Basically, top-level doc comments are meant for docummenting a source file, and they are only
allowed to be written at the top of a file, before any statements:

```zig
//! This is documentation at the top of the file,
//! I could explain what the file contains, what it provides,
//! its purpose, etc.

// This is a humble comment...

/// This is a doc comment documenting whatever follows it.
const answer_to_life = 42;

//! This is a top-level doc comment... well, it should be.
//! but actually top-level doc comments must be before any
//! statements or declarations, so this is invalid.
```

Try executing the following [program](./top_level_doc_comments.zig).

> Note: [here](https://github.com/ziglang/zig/blob/master/lib/std/Thread/Mutex.zig) is an example of top-level
> doc comments from the Zig standard library.

Well, that's all about comments.

