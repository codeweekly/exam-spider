# -*- coding: utf-8 -*-
import os

from formats import convert_to_pkapp
from sources import ExamSourceApi

SESSION_ID = 'XXXXXX'

if __name__ == '__main__':
    source = ExamSourceApi(session_id=SESSION_ID)
    course_list = source.get_course_list()
    # 科目列表
    for course in course_list:
        course_id = course.get('id')
        course_name = course.get('name')
        print('正在处理[{}]...'.format(course_name))
        paper_list = source.get_paper_list(course_id)
        # for paper in paper_list:
        #     paper_id = paper.get('id')
        #     paper_info = source.get_paper_info(paper_id)
        # 试卷列表
        paper_info_list = [source.get_paper_info(paper.get('id')) for paper in paper_list]

        # 处理科目
        convert_to_pkapp(course, paper_info_list)
    print('生成成功，请查看output文件夹')
