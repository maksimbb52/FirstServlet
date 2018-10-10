1. mvn package из корня проекта
2. war-файл из FirstServlet/target перенести в папку с Tomcat, в папку webapp
3. запустить из папки с Tomcat, мз папки bin файл startup.bat или startup.sh
4. в адресной строке прописать localhost:8080

Программа выводит результат в java классе, а не в jsp файле,
 поскольку возникли трудности с методом XMLHttpRequest.send для сетодов PUT и DELETE
 (ошибка 405 - XMLHttoRequest.send not allowed).
