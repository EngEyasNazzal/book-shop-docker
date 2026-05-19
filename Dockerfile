FROM python:3.11-slim

WORKDIR /app

ARG ARTIFACT=artifacts/app.tar.gz

COPY ${ARTIFACT} /tmp/app.tar.gz

RUN tar -xzf /tmp/app.tar.gz -C /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["sh", "-c", "python manage.py migrate && python manage.py collectstatic --noinput && gunicorn book_shop.wsgi:application --bind 0.0.0.0:8000"]
