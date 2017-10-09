require 'csv'

module Util
  def self.read_csv_file(path)
    # return “hello world”
    begin
    CSV.read(file)
    rescue
    return nil
  end
end

 def self.read_first_line(file)

   begin
      csv_absolute_filepath = File.expand_path("../" + file, __FILE__)
      # it is going to two folders up, back to

     arr_of_arrs = CSV.read(csv_absolute_filepath)
    rescue
      return nil
    end

   return arr_of_arrs[1].join(",")
  end

end
