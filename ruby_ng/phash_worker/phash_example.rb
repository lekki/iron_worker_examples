#this example will only work on iron.io
ENV['PHASH_LIB']='./__debs__/usr/lib/libpHash.so.0.0.0'

require 'ffi'
require 'phash'


path1 = './test1.jpg'
path2 = './test2.png'

image1 = Phash::Image.new(path1)
image2 = Phash::Image.new(path2)

p "Phash for #{path1} #{image1.phash.data}"
p "Phash for #{path2} #{image2.phash.data}"
p "Similarity #{image1.similarity(image2)}"
p "Hamming distance #{Phash.image_hamming_distance(image1.hash, image2.hash)}"

