# Dùng image chính thức của Tomcat
FROM tomcat:9.0

# Xóa ứng dụng mặc định trong Tomcat (ROOT, docs, examples, ...)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của bạn vào thư mục webapps và đặt tên là ROOT.war
# (để khi truy cập trang chính "/", servlet của bạn sẽ chạy)
COPY shophoa-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080 để bên ngoài có thể truy cập vào server này
EXPOSE 8080
