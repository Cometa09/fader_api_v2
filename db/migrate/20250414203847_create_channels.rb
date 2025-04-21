class CreateChannels < ActiveRecord::Migration[8.0]
  def change
    create_table :channels do |t|
      t.string   :label, comment: "Имя канала, например 'MIC 1'"
      t.integer  :order, comment: "Порядок отображения канала"
      t.boolean  :visible, default: true, comment: "Флаг видимости канала"
      t.jsonb    :ui_state, default: {
        pgm_buttons: { PGM1: false, PGM2: false, PGM3: false, PGM4: false },
        fader:       { min: -60, max: 10, current: 0 },
        meter:       { min: -60, max: 10, current: 0 },
        opt_button:  false,
        tb_button:   false,
        pfl_button:  false,
        on_button:   false
      }, comment: "Агрегированное состояние канала"
      t.timestamps
    end

    add_index :channels, :order, name: "index_channels_on_order"
  end
end
