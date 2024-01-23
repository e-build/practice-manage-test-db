#!/bin/bash
echo "wait DB container up"
dockerize -wait tcp://db-mysql:3306 -timeout 60s

# 스키마 마이그레이션
echo
echo "#####################################################"
echo "########### run database schema migration ###########"
echo "#####################################################"
flyway -configFiles=/flyway/conf/flyway.conf -locations=filesystem:/flyway/sql/schema migrate

# Seed 데이터 마이그레이션
echo
echo "########################################"
echo "########### insert seed data ########### "
echo "########################################"
flyway -configFiles=/flyway/conf/flyway.conf -locations=filesystem:/flyway/sql/seed migrate
