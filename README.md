# Module 3 – Activity 1 – Calculator Functions (Dart)

[![Made with Claude](https://img.shields.io/badge/Made_with-Claude-D97757?logo=anthropic&logoColor=white)](https://tjakoen.github.io/notes/ten-times-zero)
![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white)

Warm up for Module 3 by writing **functions that return a value** and driving
them from a menu that loops until the user exits.

## What to do

### 1. Fill in your details

Open `student.json` and fill in every field (use the **class code** your
instructor gave you):

```json
{
  "classCode": "1234",
  "fullName": "Juan Dela Cruz",
  "studentNumber": "2026-12345",
  "studentEmail": "juan.delacruz@hau.edu.ph",
  "personalEmail": "juan@example.com",
  "githubAccount": "juandelacruz"
}
```

> **Keep `student.json` identical across all your activities.** The autograder
> cross-checks these fields between your repos, and a mismatch (e.g. a different
> `classCode` in one activity) is flagged. The `classCode` must also match the
> one in your repo name.

### 2. Write the functions and the menu

Open [`bin/calculator.dart`](bin/calculator.dart). Write four functions that
each **return** their result (they must not just print it):

| Function | Returns |
| --- | --- |
| `sum(a, b)` | `a + b` |
| `difference(a, b)` | `a - b` (first minus second) |
| `product(a, b)` | `a * b` |
| `quotient(a, b)` | `a / b` (first divided by second) |

Then in `main()`, build the program flow:

1. Ask the user for **two numbers**.
2. Ask **which operation** to perform.
3. Print the result by **calling** the matching function above.
4. **Repeat** until the user chooses to exit.

Write it efficiently: one loop, no copy-pasted blocks.

> **Concepts to research** - see the **Module 3 – Functions & Randomness** cheat
> sheet in your workspace repo (`content/cheat-sheets/dart-m3-functions-and-random.md`):
> functions that return a value, reading input, branching on a choice, and a
> loop that repeats until the user exits.

Run it yourself:

```bash
dart run bin/calculator.dart
```

## Set up your repo

Before you write any code, create **your own copy** of this activity from the
template. Do not work in the template itself.

1. **Create from the template.** Open the template repo and click
   **Use this template → Create a new repository**.
2. **Set the owner to the course org.** Under *Owner*, choose the **`HAU-6ADET`
   course org**, **not** your personal account.
3. **Name it by the convention** `m<module>a<activity>-<classcode>-<yourname>`.
   For this activity that's **`m3a1-<classcode>-yourname`** (e.g.
   `m3a1-1234-juandelacruz`). The `<classcode>` must match the one you put in
   `student.json`.
4. **Make it Private.** Set *Visibility* to **Private** so classmates can't see
   your work.

Then clone **your** new repo and work there:

```bash
git clone https://github.com/HAU-6ADET/m3a1-<classcode>-yourname.git
cd m3a1-<classcode>-yourname
```

## Running the tests

```bash
dart pub get
dart test
```

This activity is graded by **5 tests** (1 point each). They check:

- ✅ `student.json` is completely filled in (1 test)
- ✅ `sum` returns the total (1 test)
- ✅ `difference` returns first minus second (1 test)
- ✅ `product` returns the multiplication (1 test)
- ✅ `quotient` returns first divided by second (1 test)

The tests grade the **functions**; the menu in `main()` is for you to run and
try. Each part is graded independently, so you earn partial credit.

## Confirm your submission

Your repo **is** your submission, so there is nothing to upload anywhere. When the
tests pass locally, **commit and push** so your work is recorded:

```bash
git add -A
git commit -m "Activity 1 complete"
git push
```

Pushing triggers the **Autograde** workflow. Confirm your submission landed:

1. Open your repo on GitHub and click the **Actions** tab.
2. Open the latest **Autograde** run and confirm the green ✅ check
   and the "5 / 5 tests passed" summary.

## 💻 Work in a Codespace (recommended)

A **Codespace** is a complete dev environment that runs in the cloud, so you do
not have to install Node, Dart, or anything else on your own laptop. This repo is
already configured: open a Codespace and everything you need is ready.

**Open one:** click the green **Code** button → **Codespaces** tab → **Create
codespace on main**. The first launch takes a minute to set up; after that it is
instant. Then run the activity from its terminal exactly as described below.

**Use it in VS Code (recommended).** It works in the browser, but it is nicer in
the desktop app: install the **GitHub Codespaces** extension in VS Code, or from
the running Codespace click the menu (☰) → **Open in VS Code Desktop**. Same
environment, your own editor.

### ⏱️ Make your free hours last (please read)
Your GitHub Education account includes a generous but limited monthly Codespaces
allowance. Three habits keep you from wasting it:

1. **Set your idle timeout to 10 minutes.** Go to
   **github.com/settings/codespaces → Default idle timeout → 10 minutes → Save.**
   A Codespace keeps running (and spending your hours) when you walk away; this
   makes it auto-stop after 10 idle minutes.
2. **Stop it when you finish - don't just close the tab.** Closing the browser
   leaves it running. Stop it at **github.com/codespaces → ••• → Stop
   codespace**, or from inside the editor open the **Command Palette**
   (`Ctrl`/`Cmd`+`Shift`+`P`, or **F1**) and run
   *Codespaces: Stop Current Codespace*.
3. **Delete the Codespace once you've submitted this activity.** Every activity
   gets its own Codespace, so old ones pile up and use your storage. After your
   final push: **github.com/codespaces → ••• → Delete.** You can always recreate
   it later from the green **Code** button.

---
📚 **These materials were authored by [tjakoen](https://github.com/tjakoen), built with Claude.** I use AI in the open, and I expect you to use it to learn the material, not to skip the learning. [How I actually work with AI →](https://tjakoen.github.io/notes/ten-times-zero)
