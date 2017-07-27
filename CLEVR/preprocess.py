#!/usr/bin/env python3

# Converts CLEVR JSON into a list of pre-processed strings
import argparse
import json

parser = argparse.ArgumentParser()
parser.add_argument("file", type=open,
	help="The CLEVR file to be translated.")

arguments = parser.parse_args()

data = json.load(arguments.file)

def preproc(question_string):
	return question_string.lower()[0:-1]

for question in data['questions']:
	if question['question'].find(';') == -1:
		print(preproc(question['question']))
