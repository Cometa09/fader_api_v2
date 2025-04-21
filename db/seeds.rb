# Очистка текущих записей (опционально)
Channel.destroy_all

9.times do |i|
  Channel.create!(
    label: "Channel #{i + 1}",
    order: i + 1,
    visible: true,
    ui_state: {
      pgm_buttons: {
        "PGM1" => false,
        "PGM2" => false,
        "PGM3" => false,
        "PGM4" => false
      },
      fader: {
        min: -60,
        max: 10,
        current: 0
      },
      meter: {
        min: -60,
        max: 10,
        current: 0
      },
      opt_button: false,
      tb_button: false,
      pfl_button: false,
      on_button: false
    }
  )
end

puts "9 channels created."
