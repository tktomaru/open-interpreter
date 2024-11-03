# Load model directly
from transformers import AutoTokenizer, AutoModelForCausalLM

tokenizer = AutoTokenizer.from_pretrained("google/gemma-2-2b")
model = AutoModelForCausalLM.from_pretrained("google/gemma-2-2b")