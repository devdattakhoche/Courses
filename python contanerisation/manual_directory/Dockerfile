FROM python
WORKDIR /app
COPY hello.py .
COPY scripts.sh .
RUN pip install Flask
CMD ["/bin/bash","scripts.sh"]