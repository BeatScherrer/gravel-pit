#!/usr/bin/python

import pathlib

import os
import xrp


def main():
  file_name = str(pathlib.Path.home()) + '/.Xresources'
  result = xrp.parse_file(file_name, encoding='utf-8')
  print(result.resources['*.foreground'])

  print('test')


if __name__ == "__main__":
  main()