# Static site for IAFF Local 727 Bold Community preview
FROM nginx:1.27-alpine

# Cloud Run / many hosts expect PORT 8080
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html fire-assessment.html styles.css /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
