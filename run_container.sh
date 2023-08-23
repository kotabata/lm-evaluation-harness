docker run --gpus device=3 -it --rm --name lm_docker -v /home/tabata/lm-evaluation-harness/:/home/tabata/lm-evaluation-harness/ -w /home/tabata lm_eval_tabata:latest /bin/bash
