FROM python as build
WORKDIR /DevOps/docker
COPY . /DevOps/docker
CMD python build

FROM python:3.10.0-alpine3.13 as runtime
COPY --from=build /DevOps/docker .
CMD python app.py