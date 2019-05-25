files = ["file1.txt", "file2.txt", "file3.txt", "bigdata.txt"]
threads = []

sum = 0
files.each do |f|
    threads << Thread.new(f) do |t|
        lines = File.readlines(t) #read the lines of each file in the array
        line_count = lines.size
        text = lines.join
        word_count = text.force_encoding("iso-8859-1").split.length
        sum += word_count
    end
end

threads.each { |thr| thr.join }

puts "Total words found: #{sum}"