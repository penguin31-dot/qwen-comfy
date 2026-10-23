FROM runpod/worker-comfyui:5.10.0-base

RUN cd /comfyui/custom_nodes && git clone https://github.com/leejet/ComfyUI-GGUF && pip install -r ComfyUI-GGUF/requirements.txt

RUN comfy model download --url https://huggingface.co/abenzerps/Qwen-Image-2.1-Uncensored-Quantized/resolve/main/qwen-image-2.1-UC-Q8_0.gguf --relative-path models/diffusion_models --filename qwen-image-2.1-UC-Q8_0.gguf
RUN comfy model download --url https://huggingface.co/abenzerps/Qwen-Image-2.1-Uncensored-Quantized/resolve/main/text_encoders/qwen3vl_8b_int8_convrot.safetensors --relative-path models/text_encoders --filename qwen3vl_8b_int8_convrot.safetensors
RUN comfy model download --url https://huggingface.co/abenzerps/Qwen-Image-2.1-Uncensored-Quantized/resolve/main/vae/qwen_image_2.1_vae_bf16.safetensors --relative-path models/vae --filename qwen_image_2.1_vae_bf16.safetensors
