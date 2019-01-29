class ReWriteCsv
    def initialize()
        @delimer=','
    end

    def convert
        write_to_csv(read_csv)
    end

    private

    def read_csv
        file_values=[]
        File.open('person_list.csv') do |file|
            while line =file.gets

                values=line.split(@delimer)

                sn=values[0]
                first_name=values[1]
                middle_name=values[2]
                last_name=values[3]
                dob =values[4]
                age = Time.now.year - dob.split('-')[0].to_i

                file_values<<{
                    'SN'=>sn,
                    'Full Name'=>first_name +' '+middle_name+' '+last_name,
                    'Age'=>age
                    }
            end
        end
        file_values
    end

    def write_to_csv(persons)
         #create file
         file = File.new('person_bio.csv', "w")

         #write to file
         persons.each { |person| file.puts(person.values.join(@delimer)) }
 
         #close file after reading
         file.close
    end
end


#for running this code

csv_read_writer =ReWriteCsv.new
csv_read_writer.convert