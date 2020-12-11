# Generated with SMOP  0.41-beta
from libsmop import *
# solver.m

    
@function
def solver(ai=None,af=None,w=None,*args,**kwargs):
    varargin = solver.varargin
    nargin = solver.nargin

    rand(1,2,3)
    
    # Copyright 2004 The MathWorks, Inc.
    
    nBlocks=max(ravel(ai))
# solver.m:6
    m,n=size(ai,nargout=2)
# solver.m:7
    # Make increment tables
# N=1, E=2, S=3, W=4
    I=concat([0,1,0,- 1])
# solver.m:11
    J=concat([1,0,- 1,0])
# solver.m:12
    a=copy(ai)
# solver.m:14
    mv=[]
# solver.m:15
    while logical_not(isequal(af,a)):

        # Pick a random block
        bid=ceil(dot(rand(),nBlocks))
# solver.m:19
        i,j=find(a == bid,nargout=2)
# solver.m:20
        r=ceil(dot(rand(),4))
# solver.m:23
        ni=i + I(r)
# solver.m:24
        nj=j + J(r)
# solver.m:25
        if (ni < 1) or (ni > m) or (nj < 1) or (nj > n):
            continue
        # Is it a legal move? Check for collision
        if a(ni,nj) > 0:
            continue
        # Check distance
    # Get the target location
        ti,tj=find(af == bid,nargout=2)
# solver.m:38
        d=(ti - i) ** 2 + (tj - j) ** 2
# solver.m:39
        dn=(ti - ni) ** 2 + (tj - nj) ** 2
# solver.m:40
        if (d < dn) and (rand() > 0.05):
            continue
        # Move the block
        a[ni,nj]=bid
# solver.m:47
        a[i,j]=0
# solver.m:48
        mv[end() + 1,concat([1,2])]=concat([bid,r])
# solver.m:51

    
    return mv
    
if __name__ == '__main__':
    pass
    
    ## function r = rand(varargin)
##     global s1 s2 s3
##     if nargin != 0
##         r=0;
##         s1=varargin{1};
##         s2=varargin{2};
##         s3=varargin{3};
##     else
##         [r,s1,s2,s3] = r8_random(s1,s2,s3);
##     end
## end