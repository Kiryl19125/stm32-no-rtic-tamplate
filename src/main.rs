#![no_std]
#![no_main]

use cortex_m_rt::entry;
use panic_halt as _;
use rtt_target::{rprintln, rtt_init_print};
use stm32f1xx_hal::{pac, prelude::*};

#[entry]
fn main() -> ! {
    rtt_init_print!();

    rprintln!("Hello");

    let dp = pac::Peripherals::take().unwrap();
    let pc = cortex_m::Peripherals::take().unwrap();
    let mut flash = dp.FLASH.constrain();
    let rcc = dp.RCC.constrain();

    let clocks = rcc
        .cfgr
        .use_hse(8.MHz())
        .sysclk(8.MHz())
        .freeze(&mut flash.acr);

    loop {}
}
