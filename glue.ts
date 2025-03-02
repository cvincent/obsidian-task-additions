import { Plugin, MarkdownPostProcessor } from 'obsidian';

export function glue_func(string_from_gleam: string) {
  console.log("Hello from TypeScript glue code!")
  console.log(string_from_gleam)
}

export function register_markdown_post_processor(plugin: Plugin, processor: MarkdownPostProcessor) {
  plugin.registerMarkdownPostProcessor(processor)
}
