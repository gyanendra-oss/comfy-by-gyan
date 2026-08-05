# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.8.4-base

# install custom nodes into comfyui
RUN comfy node install --exit-on-fail comfyui-videohelpersuite --mode remote
RUN comfy node install --exit-on-fail comfyui-liveportraitkj

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
