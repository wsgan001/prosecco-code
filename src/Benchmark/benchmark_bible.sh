#!/bin/bash
cd server
dotnet restore
dotnet build -c Release

cd ../client
dotnet restore
dotnet build -c Release


cd ../server
dotnet run  -c Release -- -p 50006 &

sleep 15


cd ../client

dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.40 -z 20000 -e 0.05 -a PrefixSpan -r 5 -d 5455350 -i n_ps-seq-bible-lg-0.40-20k
dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.40 -z 20000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.40-20k

dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.50 -z 20000 -e 0.05 -a PrefixSpan -r 5 -d 5455350 -i n_ps-seq-bible-lg-0.50-20k
dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.50 -z 20000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.50-20k

dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.60 -z 20000 -e 0.05 -a PrefixSpan -r 5 -d 5455350 -i n_ps-seq-bible-lg-0.60-20k
dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.60 -z 20000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.60-20k


dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.40 -z 10000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.40-10k
dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.50 -z 10000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.50-10k
dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.60 -z 10000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.60-10k

dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.40 -z 40000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.40-40k
dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.50 -z 40000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.50-40k
dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.60 -z 40000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.60-40k

dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.40 -z 60000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.40-60k
dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.50 -z 60000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.50-60k
dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.60 -z 60000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.60-60k

dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.40 -z 80000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.40-80k
dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.50 -z 80000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.50-80k
dotnet run -c Release -- -p 50006 -f ~/data/sequence/seq-bible-lg.txt -s 0.60 -z 80000 -e 0.05 -a ProSecCo -r 5 -d 5455350 -i n_ips-seq-bible-lg-0.60-80k