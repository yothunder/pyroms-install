buat environment pyroms
1. cd ~
2. git clone https://github.com/ESMG/pyroms.git
3. cp /mnt-storage1/TRAINING/script/requirements.yaml .
4. edit file requirementnya pake vi atau nano, ubah path prefix di line terakhir
5. conda env create --file requirements.yaml
6. conda activate pyroms && pip install -e pyroms/pyroms && pip install -e pyroms/pyroms_toolbox && pip install -e pyroms/bathy_smoother
7. cd ~/pyroms/pyroms/external/scrip/source/
8. export PREFIX=/home/tr16/.conda/envs/pyroms
9. make DEVELOP=1 PREFIX=$PREFIX install
10. mv -vf scrip*.so ../../../pyroms
