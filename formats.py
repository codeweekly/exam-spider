# -*- coding: utf-8 -*-
# 输出格式
import os
import re
from abc import ABC, abstractmethod
from functools import reduce

import xlsxwriter
import xlwt

from utils import switch


def _write_xls_row(worksheet, row, data):
    for index, value in enumerate(data):
        worksheet.write(row, index, value)


def _mkdir(sub_path):
    dir_path = os.path.join(os.getcwd(), 'output', sub_path)
    if not os.path.exists(dir_path):
        os.makedirs(dir_path)
    return dir_path


def convert_to_xlsx(file_name, header, data_list):
    """
    :param file_name:
    :param header:
    :param data_list:
    :return:
    """
    # 存储文件
    dir_path = _mkdir(os.path.join('xlsx'))
    file_path = os.path.join(dir_path, file_name + '.xlsx')
    # 写入文件
    workbook = xlsxwriter.Workbook(file_path)
    worksheet = workbook.add_worksheet('Sheet1')
    worksheet.write_row(0, 0, header)
    for index, row in enumerate(data_list):
        if row:
            worksheet.write_row(index + 1, 0, row)
    workbook.close()
