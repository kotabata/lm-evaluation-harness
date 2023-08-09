echo "harness_abeja"
qsub -g gcf51099 -m abe -o log_abeja -j y harness_abeja.sh
echo "===================================="
echo "harness_ca3b"
qsub -g gcf51099 -m abe -o log_ca3b -j y harness_ca3b.sh
echo "===================================="
echo "harness_ca7b"
qsub -g gcf51099 -m abe -o log_ca7b -j y harness_ca7b.sh
echo "===================================="
echo "harness_rinna"
qsub -g gcf51099 -m abe -o log_rinna -j y harness_rinna.sh
echo "===================================="
echo "harness_rinna_sft"
qsub -g gcf51099 -m abe -o log_rinna_sft -j y harness_rinna_sft.sh
echo "===================================="
echo "harness_rinna_ppo"
qsub -g gcf51099 -m abe -o log_rinna_ppo -j y harness_rinna_ppo.sh
# echo "===================================="
# echo "harness_llama30b"
# qsub -g gcf51099 -m abe -o log_llama30b -j y harness_llama30b.sh
# echo "===================================="
# echo "harness_llama65b"
# qsub -g gcf51099 -m abe -o log_llama65b -j y harness_llama65b.sh
# echo "===================================="
