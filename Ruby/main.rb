files = ["file1.txt", "file2.txt", "file3.txt", "bigdata.txt"]
threads = []

sum = 0
files.each do |f|
    threads << Thread.new(f) do |t|
        lines = File.readlines(t) #read the lines of each file in the array
        text = lines.join #join the lines
        word_count = text.force_encoding("iso-8859-1").split.length #count each word by refrencing the space
        sum += word_count #keep adding the words
    end
end

threads.each { |thr| thr.join }

puts "Total words found: #{sum}"