# -*-coding:utf-8 -*-
import logging
import multiprocessing

LOGGING_ROOT = './log.txt'
# 创建一个logger
logger = logging.getLogger('mylogger')
logger.setLevel(logging.DEBUG)

# 创建一个handler，用于写入日志文件
fh = logging.FileHandler(LOGGING_ROOT)
fh.setLevel(logging.WARNING)

# 再创建一个handler，用于输出到控制台
ch = logging.StreamHandler()
ch.setLevel(logging.DEBUG)

# 定义handler的输出格式
formatter = logging.Formatter('[%(asctime)s][%(process)d][%(thread)d][%(filename)s][line: %(lineno)d][%(levelname)s] ## %(message)s')
fh.setFormatter(formatter)
ch.setFormatter(formatter)

# 给logger添加handler
logger.addHandler(fh)
logger.addHandler(ch)

# 记录一条日志
logger.debug('foorbar')
logger.info('foorbar')
logger.warning('foorbar')
logger.error('foorbar')
print(multiprocessing.current_process().pid)


