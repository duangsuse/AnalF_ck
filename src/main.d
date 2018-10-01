import std.stdio;

static import analfuck;

void main(string args[]) {
  wstring src;

  foreach (path; args[1..$]) {
    foreach (wstring line; File(path, "r").lines) {
      src ~= line;
    }
  }

  analfuck.run(src);
}

