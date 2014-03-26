	class Number_to_words

		def ones(number)
			case number
			when 0
				print "zero "
			when 1 
				print "One "
			when 2
				print "Two "
			when 3
				print "Three "
			when 4
				print "Four "
			when 5
				print "Five "
			when 6
				print "Six "
			when 7 
				print "Seven "
			when 8
				print "Eight "
			when 9
				print "Nine "
			else 
				print "nothing "
			end
		end

		def teens(number)
			case number
			when 0
				print "Ten "
			when 1 
				print "Eleven "
			when 2
				print "Twelve "
			when 3
				print "Thirteen "
			when 4
				print "Fourteen "
			when 5
				print "Fifteen "
			when 6
				print "Sixteen "
			when 7
				print "Seventeen "
			when 8
				print "Eighteen "
			when 9
				print "Nineteen "
			else 
				print "nothing "
			end
		end
		def tens(number)
			case number
			when 1
				print "Ten "
			when 2 
				print "Twenty "
			when 3
				print "Thirty "
			when 4
				print "Fourty "
			when 5
				print "Fity "
			when 6
				print "Sixty "
			when 7
				print "Seventy "
			when 8
				print "Eighty "
			when 9
				print "Ninety "
			else 
				print "nothing "
			end
		end
		def hundred(x)
			if x != 0 
				ones(x)
				print "Hundred "
			end
		end
		def thousand(x)
			if x != 0 
				ones(x)
				print "Thousand "
			end
		end

		def converter(array_of_number,length,current_pos)

			array_of_number.each_with_index do |x, index|

				if current_pos==1
					if !(length > 1 && array_of_number[index] == '0')
						ones(array_of_number[length -1].to_i)
						current_pos=0
					end
				end

				if current_pos == 2 

					if array_of_number[length -current_pos]== '1'
						val = (length -current_pos) +1
						teens(array_of_number[val].to_i)
						current_pos=0
						break	
					elsif array_of_number[length -current_pos]!='1'
						tens(array_of_number[length -current_pos].to_i)
						current_pos -=1
					end
				end

				if current_pos == 3
					hundred(array_of_number[length -current_pos].to_i)
					current_pos -=1
				end

				if current_pos == 4
					thousand(array_of_number[length -current_pos].to_i)
					current_pos -=1
				end
			end
		end
	end
