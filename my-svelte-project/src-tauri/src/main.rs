// Prevents additional console window on Windows in release, DO NOT REMOVE!!
#![cfg_attr(not(debug_assertions), windows_subsystem = "windows")]

fn main() {
  app_lib::run();
}

#[tauri::command]
fn greet(name: &str) -> String {
   format!("Hello, {}!", name)
}