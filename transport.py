
import os
import sys

def get_files():
	file_list = os.listdir('/home/anmol1696')
	output_list = []
	for x in file_list:
		if '_output' in x:
			output_list.append(x)
	return output_list

def write_file(file_list):
	f = open('/home/anmol1696/name_list.txt', 'w')
	for name in file_list:
		f.write(name)
	f.close()

if __name__ == '__main__':
	try:		
		if sys.argv[1]:
			write_file([sys.argv[1]])
	except: write_file(get_files())
