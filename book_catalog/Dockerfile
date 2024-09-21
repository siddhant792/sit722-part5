FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PYTHONUNBUFFERED=1
ENV DATABASE_URL=postgresql://task_9_2d_user:2euDqt3wTy7nXfXULw2ripXCYjUX3YWE@dpg-crn44fu8ii6s73ekhnf0-a.oregon-postgres.render.com/task_9_2d

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
