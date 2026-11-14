# M3A1: Contact Directory

**Kind:** demo, built live in the lab. Follow along, type the code yourself, and push before you leave. Searching, AI and helping each other are all allowed.

In this demo you build a contact directory kept in a Map: adding contacts, looking one up, filtering names and listing them all, plus what happens when a lookup misses. It is the syllabus week 3 code demo.

## Before you start

Follow the [setup guide](SETUP.md) to create and clone your private repository, exactly as in M1A0. The repository is named `m3a1-CLASSCODE-USERNAME`.

## What you build with the instructor

1. A short warm-up in `bin/playground.dart` that puts the same values in a List and in a Set and compares their lengths.
2. The directory in `lib/directory.dart`:
   - `void addContact(Map<String, String> book, String name, String phone)` saves a number under a name. The same name again replaces the number.
   - `String lookup(Map<String, String> book, String name)` returns the number, or `"Not found"` when the name is missing.
   - `List<String> namesStartingWith(Map<String, String> book, String letter)` returns the matching names, ignoring capital letters, sorted A to Z.
3. `bin/directory.dart` adds a few contacts, looks one up that exists and one that does not, and lists every contact with `forEach`.

The demo shows how `Map`, `Set`, `where`, `forEach`, `??` and the nullable type `String?` fit together. See `content/m3-collections/LAB.md` in your workspace for the syntax.

## How it is graded

5 test points. The tests call the three functions in `lib/directory.dart`, including a lookup of a name that is not there. If you followed along and your program runs, you earn full marks.


Every activity also checks `student.json`: fill in your full name, student number, school email, class code, GitHub username, `room` and `pcNumber`, all as text.

## Check and save your work

```sh
dart analyze
dart test
```

The tests in your repository are a guide. The instructor grades from the course's own copy of the tests, so do not edit the tests to make them pass.

```sh
git status
git add bin/ lib/ student.json SOURCES-AND-ASSISTANCE.md
git commit -m "Complete M3A1"
```

In VS Code, open **Source Control** and choose **Push**, then check that the commit appears on GitHub.

## Submit the exact commit link in Canvas

Open your repository's commit history on GitHub, open the commit with your finished work, copy its full URL (it contains **/commit/**), and submit it in the Canvas assignment for M3A1 using the Website URL option. Submit the commit page, not the repository home page or a screenshot.
