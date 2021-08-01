# Copyright (c) Facebook, Inc. and its affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#

# Code adapted from https://github.com/phillipi/pix2pix/blob/master/datasets/download_dataset.sh
FILE=edges2shoes # edges2handbags
#URL=https://people.eecs.berkeley.edu/~tinghuiz/projects/pix2pix/datasets/$FILE.tar.gz
URL="https://storage.googleapis.com/kaggle-data-sets/926989/1568691/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20210801%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20210801T153004Z&X-Goog-Expires=259199&X-Goog-SignedHeaders=host&X-Goog-Signature=65bb8c9454a254537e91e95c4fc11618028b76095d5d62d979de006a84a446d9fcf6c3c38d398534fbdfe328b6ea4b58e05a085f00af621b4b2a07710fdb09d32711665acd2937c13aff4739896a4be4e9863b11a4a8b859a6ae02acdf80fda3ce5f59498df9126e2674fc5fe8c78ca5e2a4c1aebdbb119610776309e036584d5f6ac4c61dd042f3bf45c51b97ffc3ee5aaa210006372ed4c06076f961e68a4ea77aec6011f0dfce52932f30352d0f4ad8c065c2110530faf8330c6f37ada2770ca021ef9a94b7a582ab070967b4030b957fe7b79efec6951653e44b0983e06b669d75db0b0ca65b2f7cca46fac421c3fbf486eea84c81f3dc8e478635b4b578"
#TAR_FILE=./$FILE.tar.gz
TAR_FILE=./$FILE.zip
TARGET_DIR=./$FILE/
wget -N $URL -O $TAR_FILE
mkdir $TARGET_DIR
#tar -zxvf $TAR_FILE -C ./
unzip $TAR_FILE -d ./FILE
rm $TAR_FILE

python process_data.py $FILE
rm -r $TARGET_DIR
