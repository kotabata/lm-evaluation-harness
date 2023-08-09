MODEL_ARGS="pretrained=abeja/gpt-neox-japanese-2.7b"
TASK="jcommonsenseqa-1.1-0.3,jnli-1.1-0.3,jsquad-1.1-0.3"
python main.py --model hf-causal --model_args $MODEL_ARGS --tasks $TASK --num_fewshot "3,3,3" --device "cuda" --output_path "models/abeja-gpt-neox-japanese-2.7b/result_test.json"
