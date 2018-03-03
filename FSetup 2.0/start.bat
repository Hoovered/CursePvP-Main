@echo OFF

:loop

java -server -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:ParallelGCThreads=4 -XX:+AggressiveOpts -Xmx4096M -jar spigot.jar

echo Press control+C to exit the server!

timeout 10

echo (%time%) Restarting!

goto loop