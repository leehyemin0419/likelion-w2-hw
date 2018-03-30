persons = Array.new
person = Hash.new
    
loop do
    print "이름을 입력하세요: "
    name = gets.chomp 
        break if name =="exit"
    print "전화번호를 입력하세요: "
    phoneNumber = gets.chomp
    print "성별을 입력하세요: "
    gender = gets.chomp
    
    if gender == "female"
        gender = "female"
    elsif gender =="male"
        gender = "male"
    else 
        gender = "both"
    end
    
    person={
        :name => name,
        :phoneNumber => phoneNumber,
        :gender => gender
    }
    
    persons << person
    
    persons.each do |p|
        puts "이름:#{p[:name]}, 전화번호:#{p[:phoneNumber]}, 성별:#{p[:gender]}"
    end
end