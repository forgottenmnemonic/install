#!/bin/bash

pacman -S - < pacman_list.txt --noconfirm --needed
