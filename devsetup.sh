export GOPATH=D:/VSCode/Harmony-Dev
export CGO_CFLAGS="-I$GOPATH/src/github.com/harmony-one/bls/include -I$GOPATH/src/github.com/harmony-one/mcl/include -I/usr/local/opt/openssl/include"
export CGO_LDFLAGS="-L$GOPATH/src/github.com/harmony-one/bls/lib -L/usr/local/opt/openssl/lib"
export LD_LIBRARY_PATH=$GOPATH/src/github.com/harmony-one/bls/lib:$GOPATH/src/github.com/harmony-one/mcl/lib:/usr/local/opt/openssl/lib
export LIBRARY_PATH=$LD_LIBRARY_PATH
export DYLD_FALLBACK_LIBRARY_PATH=$LD_LIBRARY_PATH

mkdir -p $GOPATH/src/github.com/harmony-one

cd $GOPATH/src/github.com/harmony-one

git clone git@github.com:harmony-one/mcl.git

cd mcl && make -j4 && cd ..

git clone git@github.com:harmony-one/bls.git

cd bls && make BLS_SWAP_G=1 -j4 && cd ..

git clone git@github.com:harmony-one/harmony.git

cd harmony

export GO111MODULE=on

./scripts/go_executable_build.sh