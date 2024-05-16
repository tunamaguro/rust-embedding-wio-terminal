#![no_std]
#![no_main]

use panic_halt as _;
use support::*;

#[entry]
fn main() -> ! {
    let (mut user_led, mut delay) = support::init();

    loop {
        // TODO: ここにLチカのコードを書く
        delay.delay_ms(5000_u16);
        user_led.toggle();
    }
}
