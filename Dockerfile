FROM python:3.8
RUN pip install streamlit pandas pymongo
RUN mkdir /workspace && chown -R 42420:42420 /workspace
ENV HOME /workspace
WORKDIR /workspace
#RUN mkdir -p /opt/.streamlit
#COPY Questionnaire.py /opt/Questionnaire.py
COPY Questionnaire.py /workspace/Questionnaire.py
COPY .streamlit .streamlit
CMD [ "streamlit" , "run" , "/workspace/Questionnaire.py", "--server.address=0.0.0.0" ]