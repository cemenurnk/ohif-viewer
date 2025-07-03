sudo docker stop ohif-v3.8.3-custom
echo Contenedor ohif-v3.8.3-custom detenido.
sudo docker rm ohif-v3.8.3-custom
echo Contenedor ohif-v3.8.3-custom eliminado.
sudo docker rmi ohif-v3.8.3-custom
echo Imagen ohif-v3.8.3-custom eliminada.
git pull
echo Repositorio actualizado.
sudo docker build . -t ohif-v3.8.3-custom
echo Imagen ohif-v3.8.3-custom creada correctamente.
read -p 'Puerto: ' port
sudo docker run -d -e PORT=$port -p 3000:$port/tcp --name ohif-v3.8.3-custom ohif-v3.8.3-custom
echo Contenedor ohif-v3.8.3-custom corriendo en el puerto $port
