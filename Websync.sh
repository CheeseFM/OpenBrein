#!/bin/bash
rm -rf "/home/cheese/Quartz/content"
mkdir "/home/cheese/Quartz/content"
cp -r /home/cheese/Openbrein/* /home/cheese/Quartz/content/


cd /home/cheese/Quartz/
npx quartz sync
