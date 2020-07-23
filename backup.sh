#!/bin/bash

rsync -xavHl /home/jeff/public/ /run/media/jeff/backup/public/

rsync -xavHl /home/jeff/work/ /run/media/jeff/backup/work/

rsync -xavHl /home/jeff/media/ /run/media/jeff/backup/media/
