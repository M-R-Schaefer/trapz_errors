#!/bin/bash

echo "Calculate total error"
trapz-errors calculate-error ../test/eg_data.dat --conservative
trapz-errors plot ../test/eg_data.dat --png example.png

echo
echo "Find largest error source"
trapz-errors reduce-error ../test/eg_data.dat --target 1.0 --conservative
