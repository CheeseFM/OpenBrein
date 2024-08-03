#!/bin/bash
rm -rvf "/home/cheese/Quartz/content"
mkdir "/home/cheese/Quartz/content"
cp -rv /home/cheese/Openbrein/* /home/cheese/Quartz/content/


cd /home/cheese/Quartz/
npx quartz sync
