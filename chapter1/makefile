SHELL = /bin/sh
#FC and FFLAGS are special names that make will look for in implicit rules
FC=gfortran
FFLAGS=-O0 -g -ffixed-form -fdollar-ok -std=legacy -Wno-tabs \
		-fno-automatic -fbounds-check -fno-range-check \
		-Wall -Wextra -Wconversion -pedantic
				
SRCS := $(wildcard *.f) #get list of all source files		
PRGS := $(patsubst %.f,%,$(SRCS)) #chop '.f' off of names
OBJS  := $(patsubst %,%.o,$(PRGS)) #add '.o' to program file names
PRG_SUFFIX=.out
BINS := $(patsubst %,%$(PRG_SUFFIX),$(PRGS))

#default
default: all

#compile all binaries
.PHONY : all #causes make to not get confused by file name 'all'
all: $(BINS)
		
%.out : %.o
	$(FC) -o $@ $< $(FFLAGS)
		
%.o : %.f
	$(FC) -c -o $@ $< $(FFLAGS)


#clean
.PHONY : clean   #causes make to not get confused by file name 'clean'
clean :
	#causes make to not stop on errors hit by 'rm' 
	rm -rf *.o 
	
#clean
.PHONY : cleanall   #causes make to not get confused by file name 'clean'
cleanall :
	#causes make to not stop on errors hit by 'rm' 
	-rm -f *.o *.out 
	
