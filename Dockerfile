FROM python:3.9-slim
WORKDIR /usr/src/app
COPY Personal_assistant_pkg /usr/src/app/Personal_assistant_pkg
RUN pip install ./Personal_assistant_pkg

CMD ["python", "Personal_assistant_pkg/Personal_assistant_pkg/menu_01.py"]



# - creates an image in docker : 
# docker build -t personal_assistant . 

# Due to interactive mode of my application 
# input function I added one parameter responsible for 
# the interactive mode (-i) during creation of container:

# docker run -i -t personal_assistant
