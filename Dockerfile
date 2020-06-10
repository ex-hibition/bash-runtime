FROM lambci/lambda:build-provided

COPY . .

CMD chmod 755 bootstrap function.sh && \
    zip -9yr function.zip bootstrap function.sh
