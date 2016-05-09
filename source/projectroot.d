import std.stdio;
import std.file;
import std.path;
import std.conv;
import std.string;

extern(C) {
  int is_project_root(char* cdt);
  char* find_project_root_weighted(char* cwd);
  char* find_project_root(char* cwd);
}

bool isProjectRoot(string cdt) {
  return is_project_root(cast(char*) cdt.toStringz) != 0;
}

string findProjectRoot(string cwd = getcwd()) {
  return find_project_root(cast(char*) cwd.toStringz).fromStringz.to!string;
}

string findProjectRootWeighted(string cwd = getcwd()) {
  return find_project_root_weighted(cast(char*) cwd.toStringz).fromStringz.to!string;
}

unittest {
  auto croot = find_project_root(cast(char*) getcwd().toStringz).fromStringz;
  auto droot = findProjectRoot;
  assert(croot == getcwd());
  assert(droot == getcwd());
}
