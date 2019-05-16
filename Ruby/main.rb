# files = ["file1.txt", "file2.txt", "file3.txt"]
# def get_word_count (f)
#     sum = 0
#     f.each do |f|
#         lines = File.readlines(f) #read the lines of each file in the array
#         line_count = lines.size
#         text = lines.join
#         word_count = text.split.length
#         sum += word_count
#
#     end
#     puts sum

# end
files = ["file1.txt", "file2.txt", "file3.txt"]
threads = []

sum = 0
files.each do |f|
    threads << Thread.new(f) do |t|
        lines = File.readlines(t) #read the lines of each file in the array
        line_count = lines.size
        text = lines.join
        word_count = text.split.length
        sum += word_count
    end
end

threads.each { |thr| thr.join }

puts "Total words found: #{sum}"