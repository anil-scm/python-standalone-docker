FROM python:3-alpine
RUN apk add --update py3-numpy
# Install flask
RUN pip install flask
# Install redis
RUN pip install redis
# Copy your code to docker image
WORKDIR /app
COPY app.py .
# Oper 5000 port
EXPOSE 5000

# Start python app at docker runtime

CMD ["python","app.py"]
