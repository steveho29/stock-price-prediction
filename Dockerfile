FROM python:3

WORKDIR /app

COPY requirements.txt .

ENV VIRTUAL_ENV=/venv

RUN python -m venv $VIRTUAL_ENV

ENV PATH=”$VIRTUAL_ENV/bin:$PATH”

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# EXPOSE 8050

# CMD ["tail", "-f", "/dev/null"]

CMD ["python", "dashboard.py"]



