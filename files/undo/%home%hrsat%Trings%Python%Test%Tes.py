Vim�UnDo� mF|�?1a���L���4���IЊ�Q�u�'��                                         ^�3v    _�                             ����                                                                                                                                                                                                                                                                                                                                                             ^�1�     �                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�1�     �                 #! /usr/bin/env pyt hon35�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�3u    �                  #! /usr/bin/env python35�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^�3    �                 #! /usr/bin/env python3       def a_new_decorator(a_func):           def wrapTheFunction():   F        print("I am doing some boring work before executing a_func()")               a_func()       E        print("I am doing some boring work after executing a_func()")           return wrapTheFunction       &def a_function_requiring_decoration():   R    print("I am the function which needs some decoration to remove my foul smell")       !a_function_requiring_decoration()   Q#outputs: "I am the function which needs some decoration to remove my foul smell"       Ra_function_requiring_decoration = a_new_decorator(a_function_requiring_decoration)   D#now a_function_requiring_decoration is wrapped by wrapTheFunction()       !a_function_requiring_decoration()   >#outputs:I am doing some boring work before executing a_func()   N#        I am the function which needs some decoration to remove my foul smell   =#        I am doing some boring work after executing a_func()5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             ^�2�   
 �                 #! /usr/bin/env python3       def use_logging(func):           def wrapper():   5        logging.warn("%s is running" % func.__name__)   c        return func()   # 把 foo 当做参数传递进来时，执行func()就相当于执行foo()       return wrapper       
def foo():       print('i am foo')       �foo = use_logging(foo)  # 因为装饰器 use_logging(foo) 返回的时函数对象 wrapper，这条语句相当于  foo = wrapper   Afoo()                   # 执行foo()就相当于执行 wrapper()5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             ^�1�    �                 #! /usr/bin/env python3       def use_logging(func):           def wrapper():   5        logging.warn("%s is running" % func.__name__)           return func()       return wrapper       @use_logging   
def foo():       print("i am foo")       foo()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^�2     �               6         logging.warn("%s is running" % func.__name__)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^�2     �               . logging.warn("%s is running" % func.__name__)�                   def wrapper():       5        logging.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2
    �                �                   def wrapper():    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2     �                �                   def wrapper():5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             ^�2L    �                �               def use_logging(func):5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             ^�2f     �               4       logging.warn("%s is running" % func.__name__)5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             ^�2g     �               3      logging.warn("%s is running" % func.__name__)5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             ^�2g     �               2     logging.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2g     �               1    logging.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2g     �               0   logging.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2g     �               /  logging.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2g     �               . logging.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2g     �               -logging.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2g     �               ,ogging.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2g     �               +gging.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2g     �               *ging.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2h     �               )ing.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2h     �               (ng.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2i     �               'g.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2i     �               &.warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2i     �               %warn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2i     �               $arn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2j     �               #rn("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2j     �               "n("%s is running" % func.__name__)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�2j     �               !("%s is running" % func.__name__)5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             ^�2l    �               !("%s is running" % func.__name__)�                   def wrapper():   .        print("%s is running" % func.__name__)5��