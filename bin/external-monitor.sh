#!/bin/bash

echo sudo systemctl stop bumblebeed
echo export LD_LIBRARY_PATH=/usr/lib32/nvidia:/usr/lib/nvidia:$LD_LIBRARY_PATH
echo sudo tee /proc/acpi/bbswitch <<<ON
