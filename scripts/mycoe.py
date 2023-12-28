from PIL import Image
import argparse #for argument parsing

parser = argparse.ArgumentParser()
parser.add_argument('filename')
args = parser.parse_args()

im = Image.open(args.filename, 'r').convert('RGB')
width, height = im.size
pixel_values = list(im.getdata())

with open("a.coe", 'w+') as f:
    f.write("memory_initialization_radix=16;\nmemory_initialization_vector=")
    
    pixels = [tuple(int(t/16) for t in rgb) for rgb in pixel_values]
    values = [(format(pixel[0],'x')+format(pixel[1],'x')+format(pixel[2],'x')) for pixel in pixels]
    
    vector = " ".join(values)
    
    f.write(vector)
    f.write(";")
    