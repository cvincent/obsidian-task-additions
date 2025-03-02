import gleam/io

@external(javascript, "../../../../glue.ts", "glue_func")
fn glue_func(string_from_gleam: string) -> Nil

pub fn main(string_from_plugin_onload) {
  io.println("Hello from Gleam!")
  io.println(string_from_plugin_onload)
  glue_func("String passed from Gleam")
  io.println("Goodbye!")
}
