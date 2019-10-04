class PhoneDataExporter
  
  def initialize(format)
    @path = "tmp/phone_data"
    if format == 'csv'
      export_csv
    else
      export_excel
    end
  end
  
  def export_csv
    @csv_path = @path.concat('.csv')
    CSV.open(@csv_path, "wb", row_sep: '\r\n') do |csv|
      csv << Phone.take.attributes.keys.map(&:titleize)
      csv << ['', '']
      Phone.all.each do |phone|
        csv.add_row(phone.attributes.values)
      end
    end
    @csv_path
  end
  
  def export_excel
    @excel_path = @path.concat('.xlsx')
    book        = WriteXLSX.new(@excel_path)
    sheet       = book.add_worksheet('Phones')
    row         = 0
    Phone.all.each do |phone|
      sheet.write_row(row, 0, phone.attributes.values)
      row += 1
    end
    book.close
    @excel_path
  end
end