#!/bin/bash

# rank.sh - list the ranks of the nodes of balances for all-time, 24h, and 4h, as well as the all-time rank for signers
NODES="one18ky073zdrrmme3fs7h63wyzguuj6a3uukuc3gk|one1a4nhuqsa7d2znx8yq7tsuyf86v6tuq597y925l|one1zgmd5s6fyv9rm2vuf3augqf3ucnp9a2j0h09u3|one10dw0xnkm6qvpmsmeszw5wn29et9jmek9sc6dmw|one14uzsrvucmxx5wwkx46r9a6mpqgtjlrchelw5pp|one1pmcysk3kctszln8n89hzcrgmncnqcdxg6nl2gg|one1zzhwus03x3j3fgtust0v07k7rf583rrp84zdet|one1sp687xe0kk93ngp8kaxa2qd8yjm56wjmup8mf5|one1s4rypls26kmzg03dxkklmpwhmv8u4nlh6vqkdv|one1uhqaf9jgeczmuxs7ydzfeevwnt63ftps752cnr|one1gqdnwl6zmn9avnaksqv2555x388nr792v7gzjr|one13hrrej58t6kn3k24fwuhzudy7x9tayh8p73cq9|one1c4w9danpa5v9zqurnl07lkqdcwyn3yfm86anqu"

echo -e '\nOrdered Shard Numbers:'
curl -Ls https://harmony.one/balances | grep 2019
curl -Ls https://harmony.one/balances | grep one | sort -nk 2 | grep -n one| grep -E $NODES

echo -e '\nRanks by Balances (All-Time): '
curl -Ls https://harmony.one/balances | grep 2019
curl -Ls https://harmony.one/balances | grep one| sort -rnk 4 | grep -n one| grep -E $NODES

echo -e '\nRanks by Balances (24h):'
curl -Ls https://harmony.one/day | grep 2019
curl -Ls https://harmony.one/day | grep one| sort -rnk 2 | grep -n one| grep -E $NODES

echo -e '\nRanks by Balances (4h):'
curl -Ls https://harmony.one/4h | grep 2019
curl -Ls https://harmony.one/4h | grep one| sort -rnk 2 | grep -n one| grep -E $NODES

echo -e '\nRanks by Balances (1h):'
curl -Ls https://harmony.one/1h | grep 2019
curl -Ls https://harmony.one/1h | grep one| sort -rnk 2 | grep -n one| grep -E $NODES
