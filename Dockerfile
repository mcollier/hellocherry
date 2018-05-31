# Base image
FROM python:3.6.1

RUN mkdir work_directory

# Copy to work directory
COPY hellocherry.py work_directory
COPY requirements.txt work_directory

# Set work directory
WORKDIR work_directory

RUN pip install -r ./requirements.txt

# Run
EXPOSE 80
CMD ["python", "hellocherry.py"]
