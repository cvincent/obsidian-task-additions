import { Plugin } from 'obsidian';
import { main } from "./build/dev/javascript/obsidian_plugin/obsidian_plugin.mjs";

export default class MyPlugin extends Plugin {
  async onload() {
    console.log("onload")
    main("String passed from Plugin onload")
  }

  onunload() {
    console.log("onunload");
  }
}
