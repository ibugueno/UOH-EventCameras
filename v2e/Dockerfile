FROM nvidia/cuda:10.1-base

#FROM dokken/ubuntu-18.04

FROM continuumio/miniconda3

RUN apt-get update
RUN apt-get install libgl1-mesa-glx libjpeg62 -y

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN mkdir data

RUN ls

RUN conda env create -f environment.yml



# Make RUN commands use the new environment:

RUN echo "activate environment"

SHELL ["conda", "run", "-n", "v2e", "/bin/bash", "-c"]

RUN echo "conda env list"
RUN conda env list

RUN echo "CONDA_DEFAULT_ENV"
RUN echo $CONDA_DEFAULT_ENV



## Install any needed packages specified in requirements.txt
#RUN pip install --trusted-host pypi.python.org -r requirements.txt




# Run gan.py
#CMD ["python3", "-u", "gan_pytorch.py"]


ENTRYPOINT ["conda", "run", "-n", "v2e", "python", "v2e.py", "-i", "input/87-25-1920x1080.mp4", "--timestamp_resolution=.005", "--dvs_exposure duration=0.005", "--output_folder=output/87-25-1920x1080", "--pos_thres=.15", "--neg_thres=.15", "--sigma_thres=0.03", "--dvs_aedat2", "87-25-1920x1080.aedat", "--output_width=346", "--output_height=260", "--stop_time=30"]
