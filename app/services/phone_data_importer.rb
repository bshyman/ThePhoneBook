class PhoneDataImporter
  def initialize
    @csv_path = 'files/phonebook_seed.csv'
  end
  
  def import
    return 'file_error' unless File.open(@csv_path, 'rb').path.ends_with?('.csv')
    results = {saved: 0, previous: 0}
    CSV.foreach(@csv_path, headers: true) do |phone_row|
      phone = Phone.find_or_initialize_by(imei: phone_row['imei'])
      if phone.new_record?
        phone.assign_attributes(model:            phone_row['model'], capacity: phone_row['capacity'], original_carrier: phone_row['original_carrier'], unlocked: phone_row['unlocked'], battery: phone_row['battery'],
                                screen_condition: phone_row['screen_condition'], frame_condition: phone_row['frame_condition'], imei: phone_row['imei'].to_i, serial: phone_row['serial'], color: phone_row['color'], source: phone_row['source'],
                                known_issues:     phone_row['known_issues'])
        if phone.save!
          results[:saved] += 1
        else
          results[:errors] << phone.errors
        end
      else
        results[:previous] += 1
      end
    end
    results
  end
end