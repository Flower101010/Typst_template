# Typst Assignment Template

A simple assignment template for [Typst](https://typst.app/).

## Example Usage

You can find an example [here](./example.typ) as well as its render [here](./example.pdf).

## Template Features

This template provides a structured and customizable layout for assignments. Below are the key features and usage instructions:

### Document Configuration

Use the `conf` function to configure the document's metadata and layout. Example:

```typst
#import "@preview/ctheorems:1.1.3": *
#let conf(
  title: "Assignment Title",
  institute: "Your Institute",
  name: "Your Name",
  course: "Course Name",
  professor: "Professor Name",
  date: "auto",
  doc: [
    // Your document content here
  ]
)
```

- `title`: The title of the assignment.
- `institute`: The name of your institute.
- `name`: Your name.
- `course`: The course name.
- `professor`: The professor's name.
- `date`: The date of the document. Use `"auto"` for the current date or specify a custom date.
- `doc`: The main content of the document.

### Problem Environment

Use the `problem` environment to define problems with a styled block:

```typst
#problem(
  content: [
    Describe the problem here.
  ],
  index: "1"
)
```

### Theorem and Proof

Define theorems and proofs using the `theorem` and `proof` environments:

```typst
#theorem("Theorem Title")[
  The content of the theorem.
]

#proof[
  The proof of the theorem.
]
```

### Additional Environments

- `lemma`: For lemmas.
- `example`: For examples.
- `solution`: For solutions.
- `remark`: For remarks.

Each environment is styled for clarity and consistency.
