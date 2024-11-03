FROM ubuntu:22.04 as production

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git python3 python3-pip

RUN pip install numpy matplotlib pandas
RUN pip install open-interpreter
RUN pip install transformers
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

ARG HUGGINGFACE_PASS
ENV HUGGINGFACE_PASS $HUGGINGFACE_PASS
ENV APP_PATH /server

RUN python3 -c "from huggingface_hub import HfFolder; HfFolder.save_token(\"${HUGGINGFACE_PASS}\")"

# Install Path
COPY ./download-model-gemma-2-2b.py $APP_PATH/
# RUN python3 $APP_PATH/download-model-gemma-2-2b.py
COPY ./download-model-gemma-2-9b.py $APP_PATH/

# interpreter --local
#  interpreter --model i

WORKDIR /root
