from os import environ
from pyflink.common.typeinfo import Types
from pyflink.common.watermark_strategy import WatermarkStrategy
from pyflink.datastream import StreamExecutionEnvironment
from pyflink.datastream.connectors import NumberSequenceSource


socket_host = environ.get('SOCKET_HOST') if environ.get('SOCKET_HOST') else '127.0.0.1'
socket_port = environ.get('SOCKET_PORT') if environ.get('SOCKET_PORT') else 16980
env = StreamExecutionEnvironment.get_execution_environment()
seq_num_source = NumberSequenceSource(1, 1000)
ds = env.from_source(
    source=seq_num_source,
    watermark_strategy=WatermarkStrategy.for_monotonous_timestamps(),
    source_name='seq_num_source',
    type_info=Types.LONG())
print('Submitting job ')
env.execute("Stock stream")