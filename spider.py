# -*- coding: utf-8 -*-
from bs4 import BeautifulSoup

from formats import convert_to_xlsx
from sources import AlitripApi, _tr_mapper

if __name__ == '__main__':
    BEGIN_PAGE, END_PAGE = 1, 213

    client = AlitripApi()
    title = None
    row_list = list()

    for i in range(BEGIN_PAGE, END_PAGE + 1):
        print('正在处理第 {}/{} 页'.format(i, END_PAGE))
        html = client.get_country_list(i)

        soup = BeautifulSoup(html, 'html.parser', from_encoding='utf-8')
        tr_title = soup.find('thead').find('tr')
        title = _tr_mapper(tr_title)

        tr_list = soup.find('tbody').find_all('tr')
        page_row_list = [_tr_mapper(x) for x in tr_list]
        row_list.extend(page_row_list)

    print('正在保存文件......')
    convert_to_xlsx('alitrip_country2', title, row_list)
    print("ok")
    pass
