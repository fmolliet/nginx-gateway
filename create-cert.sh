# Criando arquivos de certificados
# Ou gera um auto assinado com o parametro -x509 ou utiliza uma certificadora
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./localhost.key -out ./localhost.crt
# Confiamos nesse certificado
# blog https://sadique.io/blog/2012/06/05/managing-security-certificates-from-the-console-on-windows-mac-os-x-and-linux/index.html
certutil.exe -addstore -user root localhost.crt
# Após executado, fechar todas instancias do navegador