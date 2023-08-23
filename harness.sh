MODEL_ARGS="pretrained=meta-llama/Llama-2-70b-chat-hf,use_accelerate=True,load_in_4bit=True,dtype=float16"
TASK="jcommonsenseqa-1.1-0.3,jnli-1.1-0.3,jsquad-1.1-0.3,marc_ja-1.1-0.3"
python main.py --model hf-causal-experimental --model_args $MODEL_ARGS --tasks $TASK --num_fewshot "3,3,3,3" --device "cuda" --output_path "results/llama2_70b_chat.json" --batch_size 1
