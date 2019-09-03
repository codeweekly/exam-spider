# -*- coding: utf-8 -*-
# 输出格式
import os
from functools import reduce

import xlsxwriter
import xlwt


def _write_xls_row(worksheet, row, data):
    for index, value in enumerate(data):
        worksheet.write(row, index, value)


def _mkdir(sub_path):
    dir_path = os.path.join(os.getcwd(), 'output', sub_path)
    if not os.path.exists(dir_path):
        os.makedirs(dir_path)
    return dir_path


def convert_to_pkapp(course, paper_info_list):
    """
    转换为知识答题题库格式
    :param course: 科目信息
    :param paper_info_list: 试卷信息列表
    :return:
    """
    # 每个科目创建文件夹
    course_name = course.get('name')
    dir_path = _mkdir(os.path.join('pkapp', course_name))

    # 每个试卷创建csv文件
    for paper_info in paper_info_list:
        paper_name = paper_info.get('title')
        paper_questions_groups = paper_info.get('groups')

        file_path = os.path.join(dir_path, paper_name + '.xls')
        if True:
            workbook = xlwt.Workbook()
            # 仅处理单选题
            question_groups = map(lambda x: x.get('questions'), paper_questions_groups)
            question_all = reduce(lambda x, y: x + y, question_groups)
            question_filter = [question for question in question_all if 'single' == question.get('type')]
            question_filter = [question for question in question_filter if len(question.get('options')) <= 4]

            # 写入文件
            worksheet = workbook.add_sheet('Sheet1')
            _write_xls_row(worksheet, 0,
                           ('问题(必填)', '选项A(必填)', '选项B(必填)', '选项C(必填)', '选项D(必填)', '答案(必填)', '这行请勿删除'))
            for index, question in enumerate(question_filter):
                title = question.get('title')
                options = question.get('options')
                row = (title,
                       ([o.get('text') for o in options if "A" == o.get('value').upper()] or list(['']))[0],
                       ([o.get('text') for o in options if "B" == o.get('value').upper()] or list(['']))[0],
                       ([o.get('text') for o in options if "C" == o.get('value').upper()] or list(['']))[0],
                       ([o.get('text') for o in options if "D" == o.get('value').upper()] or list(['']))[0],
                       question.get('answer')[0]
                       )
                _write_xls_row(worksheet, index + 1, row)
            workbook.save(file_path)
            pass


def convert_to_goouc(course, paper_info_list):
    """
    转换为天天考试题库格式
    :param course:
    :param paper_info_list:
    :return:
    """
    # 每个科目创建文件夹
    course_name = course.get('name')
    dir_path = _mkdir(os.path.join('goouc', course_name))

    # 每个试卷创建csv文件
    for paper_info in paper_info_list:
        paper_name = paper_info.get('title')
        paper_questions_groups = paper_info.get('groups')

        file_path = os.path.join(dir_path, paper_name + '.xlsx')
        if True:
            workbook = xlsxwriter.Workbook(file_path)
            # 仅处理单选题
            question_groups = map(lambda x: x.get('questions'), paper_questions_groups)
            question_all = reduce(lambda x, y: x + y, question_groups)
            question_filter = [question for question in question_all if 'single' == question.get('type')]
            question_filter = [question for question in question_filter if len(question.get('options')) <= 4]

            # 写入文件
            worksheet = workbook.add_worksheet('Sheet1')
            worksheet.write_row(0, 0, ('题型', '难度', '题目问题', '正确答案', '选项A', '选项B', '选项C', '选项D', '选项E', '选项F', '讲解'))
            for index, question in enumerate(question_filter):
                title = question.get('title')
                options = question.get('options')
                row = ('单选题', 5,
                       title, question.get('answer')[0],
                       ([o.get('text') for o in options if "A" == o.get('value').upper()] or list(['']))[0],
                       ([o.get('text') for o in options if "B" == o.get('value').upper()] or list(['']))[0],
                       ([o.get('text') for o in options if "C" == o.get('value').upper()] or list(['']))[0],
                       ([o.get('text') for o in options if "D" == o.get('value').upper()] or list(['']))[0],
                       ([o.get('text') for o in options if "E" == o.get('value').upper()] or list(['']))[0],
                       ([o.get('text') for o in options if "F" == o.get('value').upper()] or list(['']))[0],
                       ''
                       )
                worksheet.write_row(index + 1, 0, row)
            workbook.close()
            pass


def convert_to_anki():
    """
    转换为 Anki 兼容格式
    :return:
    """
    pass
