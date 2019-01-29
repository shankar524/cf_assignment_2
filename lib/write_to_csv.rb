class CsvWrite 
    def initialize()
        @values_to_write=[
            {'SN'=>1,'First Name'=>'John','Middle Name'=>'','Last Name'=>'Doe','DOB'=>'1996-03-29'},
            {'SN'=>2,'First Name'=>'Ram','Middle Name'=>'Bd','Last Name'=>'Magar','DOB'=>'1990-03-29'},
            {'SN'=>3,'First Name'=>'Daenerys','Middle Name'=>'','Last Name'=>'Targaryen','DOB'=>'1991-03-29'},
            {'SN'=>4,'First Name'=>'Tyrion','Middle Name'=>'','Last Name'=>'Lannister','DOB'=>'1988-03-29'}
        ]
    
        @file_name='person_list.csv'
        @delimer=','
    end
   

    def write
        #create file
        file = File.new('person_list.csv', "w")

        #write to file
        @values_to_write.each { |person| file.puts(person.values.join(@delimer)) }

        #close file after reading
        file.close
    end
end


#execute above code

my_csv_writer=CsvWrite.new
my_csv_writer.write