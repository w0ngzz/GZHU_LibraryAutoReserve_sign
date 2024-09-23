import os

# 获取特定环境变量的值
sno = os.environ.get('SNO')
pwd = os.environ.get('PWD')
seat = os.environ.get('SEAT')
infos = [
    {
        'sno': sno,         # 学号
        'pwd': pwd,         # 密码
        'devName': seat,   # 预约的座位号（不足3位数的要补零）
        'name': '猪猪侠',        # 随便起个名字
        'periods': (            # 预约时间段（每段时间不能超过4小时）
            ('8:30:00', '12:30:00'),
            ('13:30:00', '17:30:00'),
            ('18:30:00', '21:45:00')
        ),
        'pushplus': '',         # pushplus 的 token（用于推送消息到微信）
    }
]
