FROM nginx:stable

COPY ./neuroglancer/dist/min /neuroglancer
COPY nginx.conf /etc/nginx/nginx.conf