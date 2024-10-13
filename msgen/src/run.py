import random
import redis
from os import environ


min = int(environ.get('MSGEN_RANDOM_MIN')) if environ.get('MSGEN_RANDOM_MIN') else 0
max = int(environ.get('MSGEN_RANDOM_MAX')) if environ.get('MSGEN_RANDOM_MAX') else 10
redis_host = environ.get('REDIS_HOST') if environ.get('REDIS_HOST') else 'redis'
redis_msg_topic = environ.get('REDIS_MSG_TOPIC') if environ.get('REDIS_MSG_TOPIC') else 'messages'

r = redis.Redis(
host=redis_host,
port=6379,
decode_responses=True )
def generate_random_number():
    while True:
        num = random.randrange( min , max)
        r.publish(redis_msg_topic, num)
        print(num)

generate_random_number()