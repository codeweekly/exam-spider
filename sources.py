# -*- coding: utf-8 -*-
# 爬取数据源
import requests


class ExamSourceApi:
    def __init__(self, session_id):
        self.session_id = session_id
        self.cookies = dict(sessionid=self.session_id)

    def check_alive(self):
        """
        检查是否可用
        :return:
        """
        resp = requests.get('https://sdjrzk.xuanyun.tech/api/auth/user/current/', cookies=self.cookies)
        if resp.ok:
            json_data = resp.json()
            return json_data.get('id')
        return None

    def get_course_list(self):
        """
        获取科目列表
        :return:
        """
        resp = requests.get('https://sdjrzk.xuanyun.tech/api/course/course/?is_active=true', cookies=self.cookies)
        if resp.ok:
            json_data = resp.json()
            return json_data.get('results')
        return None

    def get_paper_list(self, course_id):
        """
        获取试卷列表
        :param course_id:
        :return:
        """
        resp = requests.get('https://sdjrzk.xuanyun.tech/api/exam/paper/for_course/?id={}'.format(course_id),
                            cookies=self.cookies)
        if resp.ok:
            json_data = resp.json()
            return json_data.get('course').get('exam_papers')
        return None

    def get_paper_info(self, paper_id):
        """
        获取试卷信息
        :param paper_id: 试卷id
        :return:
        """
        resp = requests.get('https://sdjrzk.xuanyun.tech/api/exam/paper/{id}/'.format(id=paper_id),
                            cookies=self.cookies)
        if resp.ok:
            json_data = resp.json()
            return json_data.get('content_object')
        return None
