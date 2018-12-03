get '/pricing_information' do
  filename = "public/pricing_information_#{Date.today}.xlsx"
  # room for api call





  # room for data transform





  Axlsx::Package.new do |p|
    p.workbook.add_worksheet(:name => "Pricing Information") do |sheet|
      sheet.add_row ["Per Client Pricing Information"]
      %w(first second third).each { |label| sheet.add_row [label, rand(24)+1] }
    end
    p.serialize(filename)
  end

  `open "#{filename}"`
end

