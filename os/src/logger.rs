use log::{set_logger, set_max_level, Level, LevelFilter, Log, SetLoggerError};

use crate::println;

pub struct Logger;

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

        println!(
            "\x1b[{}m[{}] {}\x1b[0m",
            color,
            record.level(),
            record.args()
        )
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
