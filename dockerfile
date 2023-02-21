FROM python:3.10

WORKDIR /app

# Install dependencies
COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Pull in the source code
COPY . /app

# Run the bot
CMD [ "python", "aiya.py" ]
