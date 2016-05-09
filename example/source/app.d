import std.stdio;
import std.string;
import std.file;
import projectroot;

void main() {
  auto root = findProjectRoot;
  auto rootW = findProjectRootWeighted;
  writefln("Project root: %s", root);
  writefln("Weighted project root: %s", rootW);
}
