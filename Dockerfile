FROM python:3.9

WORKDIR /app

# COPY requirements.txt .
RUN python -m pip install -U pip
RUN pip install openai
RUN pip install gpt_index==0.4.24
RUN pip install langchain==0.0.118
RUN pip install PyPDF2
RUN pip install PyCryptodome
RUN pip install gradio
RUN pip install python-decouple
# RUN pip install --no-cache-dir -r requirements.txt

ENV HOME=/app

RUN chown -R 7860:7860 /app

COPY . .

CMD ["python", "app.py"]