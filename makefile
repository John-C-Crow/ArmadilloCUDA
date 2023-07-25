all: projectest

projectest: gpusolve.o creatematrixarm.o
	nvcc  -o projectest gpusolve.o creatematrixarm.o -L/usr/local/cuda/lib64  -lcudart  -lcusparse -lcusolver -llapack -lopenblas
    
gpusolve.o:
	nvcc -c -I/usr/local/cuda/include gpusolve.cu -lcusolver 

creatematrixarm.o:
	g++ creatematrixarm.cpp -c -O2 -I ./armadillo-10.7.4/include -DARMA_DONT_USE_WRAPPER -lopenblas -llapack 


clean:
	rm -f *.o projectest

