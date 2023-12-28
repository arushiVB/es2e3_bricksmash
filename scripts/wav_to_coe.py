import wave, struct

WAV_FILE = "josh-hutcherson-whistle.wav"
COE_FILE = "josh-hutcherson-whistle.coe"

wav = wave.open(WAV_FILE, mode='rb') 
coe = open(COE_FILE, 'w+')

coe.write("memory_initialization_radix=16;\nmemory_initialization_vector=")

print("Number of channels: ", wav.getnchannels())
print("Sample width: ", wav.getsampwidth())
print("Sampling frequency: ", wav.getframerate())
print("Number of frames: ", wav.getnframes())

length = wav.getnframes()

values = []

for i in range(length):
    rawdata = wav.readframes(1)
    data = struct.unpack("<hh", rawdata)
    # print(int(data[0]))
    values.append(format(int(data[0]) + 32768, 'x'))

coe.write(" ".join(values))
coe.write(";")

wav.close()
coe.close()