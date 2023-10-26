use log::{set_logger, set_max_level, Level, LevelFilter, Log, SetLoggerError};

use crate::println;

pub struct Logger {
    pub module: Option<&'static str>,
}

impl Logger {
    pub fn new() -> Logger {
        Logger { module: None }
    }

    pub fn with_module(module: &'static str) -> Logger {
        Logger {
            module: Some(module),
        }
    }
}

impl Log for Logger {
    fn enabled(&self, _: &log::Metadata) -> bool {
        true
    }

    fn log(&self, record: &log::Record) {
        let color = match record.level() {
            Level::Error => 31,
            Level::Warn => 93,
            Level::Info => 34,
            Level::Debug => 32,
            Level::Trace => 90,
        };

        if let Some(name) = self.module {
            println!(
                "\x1b[{}m[{}] [{}] {}\x1b[0m",
                color,
                record.level(),
                name,
                record.args()
            )
        } else {
            println!(
                "\x1b[{}m[{}] {}\x1b[0m",
                color,
                record.level(),
                record.args()
            )
        }
    }

    fn flush(&self) {}
}

pub fn init_logger(logger: &'static dyn Log) -> Result<(), SetLoggerError> {
    set_logger(logger).map(|_| match option_env!("LOG") {
        Some("OFF") => set_max_level(LevelFilter::Off),
        Some("ERROR") => set_max_level(LevelFilter::Error),
        Some("WARN") => set_max_level(LevelFilter::Warn),
        Some("INFO") => set_max_level(LevelFilter::Info),
        Some("DEBUG") => set_max_level(LevelFilter::Debug),
        Some("TRACE") => set_max_level(LevelFilter::Trace),
        _ => set_max_level(LevelFilter::Info),
    })
}
