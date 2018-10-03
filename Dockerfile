# どのイメージを基にするか
FROM centos
MAINTAINER ryu314159 <tatsuya@shoin.fam.cx>
# RUN: buildするときに実行される
# RUN echo "now building..."
# CMD: runするときに実行される
CMD echo "now running..."

# httpdのインストール
RUN yum install -y httpd
#ホストのindex.htmlをImage内にコピー
ADD ./index.html /var/www/html/
#ポート80を開ける
EXPOSE 80
#runした時にapache起動
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
