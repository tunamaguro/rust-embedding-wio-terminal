use embedded_graphics::prelude::*;
use embedded_graphics::{fonts::*, pixelcolor::Rgb565, prelude::*, primitives::*, style::*};
use embedded_graphics_simulator::*;

fn main() -> Result<(), core::convert::Infallible> {
    let mut display: SimulatorDisplay<Rgb565> = SimulatorDisplay::new(Size::new(320, 240));
    let output_settings = OutputSettingsBuilder::new().build();
    let mut window = Window::new("draw a line", &output_settings);

    Text::new("hello world", Point::new(0, 0))
        .into_styled(TextStyle::new(Font12x16, Rgb565::GREEN))
        .draw(&mut display)?;

    // ディスプレイサイズを超えると描画されない
    Text::new("long long long long long text", Point::new(0, 32))
        .into_styled(TextStyle::new(Font12x16, Rgb565::GREEN))
        .draw(&mut display)?;

    window.show_static(&display);

    Ok(())
}
