FROM runpod/worker-comfyui:5.11.0-base

RUN comfy-node-install comfyui-gguf

RUN comfy model download --url https://huggingface.co/abenzerps/qwen-image-2.1-uncensored-quantized/resolve/main/qwen-image-2.1-uc-bf16.gguf --relative-path models/unet --filename qwen-image-2.1-uc-bf16.gguf
RUN comfy model download --url https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors --relative-path models/text_encoders --filename qwen_2.5_vl_7b_fp8_scaled.safetensors
RUN comfy model download --url https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/vae/qwen_image_vae.safetensors --relative-path models/vae --filename qwen_image_vae.safetensors
