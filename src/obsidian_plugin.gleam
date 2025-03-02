import gleam/io
import plinth/browser/element

pub type Plugin

@external(javascript, "../../../../glue.ts", "glue_func")
fn glue_func(string_from_gleam: string) -> Nil

@external(javascript, "../../../../glue.ts", "register_markdown_post_processor")
fn register_markdown_post_processor(plugin: Plugin, processor: fn(element.Element) -> Nil) -> Nil

pub fn main(plugin: Plugin) {
  glue_func("String passed from Gleam")
  register_markdown_post_processor(plugin, fn (el: element.Element) {
    io.println(element.inner_text(el))
  })
}
