import { App, Editor, MarkdownView, Modal, Notice, Plugin, PluginSettingTab, Setting } from 'obsidian';

export function glue_func(string_from_gleam: string) {
  console.log("Hello from TypeScript glue code!")
  console.log(string_from_gleam)
}
