class Payroll < ApplicationRecord
  belongs_to :jobrole
  belongs_to :workspace
  belongs_to :city

  def self.import(city_id,department_id,year,month,file)
    spreadsheet = Roo::Spreadsheet.open(file.path)
    header = [:registration,:name,:jobrole_id,:workspace_id,:admission_date,:admission_type,:city_hall_secretary_name]
    (1..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i).collect{|x| x.strip if x.present? || x }].transpose]
      row[:jobrole_id] = Jobrole.find_or_create_by(name: row[:jobrole_id]).id
      row[:workspace_id] = Workspace.find_or_create_by(name: row[:workspace_id]).id
      payroll = Payroll.where(registration: row[:registration].to_i ,year: year.to_i,month: month.to_i,city_id: city_id.to_i).first || new
      payroll.attributes = row.to_hash
      payroll.city_id = city_id
      payroll.department_id = department_id
      payroll.year = year
      payroll.month = month
      payroll.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Roo::CSV.new(file.path, nil, :ignore)
    when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

  def referency
    "#{self.month}/#{self.year}"
  end

end
