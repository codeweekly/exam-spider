# -*- coding: utf-8 -*-

from formats import convert_to_pkapp, convert_to_goouc
from sources import ExamSourceApi

SESSION_ID = 'XXXXXX'

if __name__ == '__main__':
    source = ExamSourceApi(session_id=SESSION_ID)
    course_list = source.get_course_list()
    if not course_list:
        print('未获取到题目')
        exit(0)
    # 科目列表
    for course in course_list:
        course_id = course.get('id')
        course_name = course.get('name')
        print('正在处理[{}]...'.format(course_name))
        paper_list = source.get_paper_list(course_id)
        # 试卷列表
        paper_info_list = [source.get_paper_info(paper.get('id')) for paper in paper_list]
        # 处理科目
        convert_to_goouc(course, paper_info_list)
    # 生成成功
    print('生成成功，请查看output文件夹')
