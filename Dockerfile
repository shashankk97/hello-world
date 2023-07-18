FROM ubuntu
LABEL maintainer=shashank
COPY  /var/lib/jenkins/.m2/repository/works/buddy/samples/works-with-heroku/1.0/*.war  ./opt
CMD ["./*.war"]
