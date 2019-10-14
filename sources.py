# -*- coding: utf-8 -*-
# 爬取数据源
import requests


class AlitripApi:

    def get_country_list(self, page_no):
        """
        获取城市列表
        :return:
        """
        resp = requests.get('http://hotel.alitrip.com/area.htm?domestic=1&enName=&page=' + str(page_no))
        if resp.ok:
            return resp.content
        return None


def _tr_mapper(tr):
    td_list = tr.find_all('td')
    return tuple([x.text for x in td_list])
