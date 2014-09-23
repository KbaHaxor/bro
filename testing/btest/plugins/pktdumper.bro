# @TEST-EXEC: ${DIST}/aux/bro-aux/plugin-support/init-plugin Demo Foo
# @TEST-EXEC: cp -r %DIR/pktdumper-plugin/* .
# @TEST-EXEC: ./configure --bro-dist=${DIST} && make
# @TEST-EXEC: BRO_PLUGIN_PATH=`pwd` bro -NN Demo::Foo  >>output
# @TEST-EXEC: echo === >>output
# @TEST-EXEC: BRO_PLUGIN_PATH=`pwd` bro -r $TRACES/port4242.trace -w foo:XXX %INPUT FilteredTraceDetection::enable=F >>output
# @TEST-EXEC: btest-diff output

