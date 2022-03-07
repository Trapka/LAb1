FROM ubuntu
COPY lab1.sh .
RUN mkdir test 
RUN cd /test : > test1
RUN cd /test : > test2
RUN chmod +x lab1.sh
CMD ./lab1.sh
