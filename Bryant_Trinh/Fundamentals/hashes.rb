#1
h={:first_name => "Bryant", :last_name => "Trinh"}
h.delete(:last_name)
puts h

#2
h.empty? => false

#3
h.has_key?(:first_name) => true
h.has_key?(:last_name) => false

#4
h.has_value?("Bryant") => true
h.has_value?("Trinh") => false
