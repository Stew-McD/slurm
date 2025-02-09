#!/bin/bash

#SBATCH --job-name=WMF
#SBATCH --output=WMF_%j.out
#SBATCH --error=WMF_%j.err
#SBATCH --time=04:00:00
#SBATCH --mem=24GB
#SBATCH --partition=cpu-short
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --mail-type=ALL
#SBATCH --mail-user=s.c.mcdowall@cml.leidenuniv.nl

source $HOME/.bashrc
module purge
module load OpenSSL/1.1
module load Python/3.10.4-GCCcore-11.3.0
module load SciPy-bundle/2022.05-foss-2022a



# activate the virtual environment
source $HOME/venvs/lca/bin/activate
pip list

# Your python script execution
#python3.10 $HOME/gh/WasteAndMaterialFootprint/src/WasteAndMaterialFootprint/main.py
python $HOME/code/gh/WasteAndMaterialFootprint-MacroStudy/scripts/main.py
