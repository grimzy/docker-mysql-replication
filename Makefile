DOCKER_IMAGE=mysql:5.7
M=master-mysql
S=slave-mysql
CUR_DIR=$(shell pwd)
DB_DIR=$(CUR_DIR)/_dbs
OUT_DIR=$(CUR_DIR)/_out
MASTER_HOST=%
SLAVE_HOST=%
SLAVE_USER=replication_user
SLAVE_PASSWORD=1234

run_master:
	docker run -it -d --name $(M) \
		-p 5000:3306 \
		-e MYSQL_ALLOW_EMPTY_PASSWORD=1 \
		-v $(DB_DIR)/master:/var/lib/mysql \
		-v $(CUR_DIR)/master:/etc/mysql/conf.d \
		$(DOCKER_IMAGE)
	docker logs -f $(M)

run_slave:
	docker run -it -d --name $(S) \
		-p 5001:3306 \
		-e MYSQL_ALLOW_EMPTY_PASSWORD=1 \
		-v $(DB_DIR)/slave:/var/lib/mysql \
		-v $(CUR_DIR)/slave:/etc/mysql/conf.d \
		$(DOCKER_IMAGE)
	docker inspect $(S)

create_user_on_master:
	docker exec -i $(M) mysql -uroot <<< "GRANT REPLICATION SLAVE ON *.* TO '$(SLAVE_USER)'@'$(SLAVE_HOST)' IDENTIFIED BY '$(SLAVE_PASSWORD)';"

snapshot:
	docker exec -i $(M) mysql -uroot <<< "SET GLOBAL WAIT_TIMEOUT=600000; SET WAIT_TIMEOUT = 600000; FLUSH TABLES WITH READ LOCK;"
	tar -cvf $(OUT_DIR)/master-`date +%Y%m%d`.tar $(DB_DIR)/master > $(OUT_DIR)/snapshot-`date +%Y%m%d`.log 2>&1
	docker exec -i $(M) mysql -uroot <<< "SHOW MASTER STATUS;"
	# STR="CHANGE MASTER TO MASTER_HOST='$(MASTER_HOST)', MASTER_USER='$(SLAVE_USER)', MASTER_PASSWORD='$(SLAVE_PASSWORD)', MASTER_LOG_FILE='recorded_log_file_name', MASTER_LOG_POS=recorded_log_position; START SLAVE;"
	# STR=`echo $STR | sed -e "s/recorded_log_file_name/$(LOGFILE_NAME)/g"`
	# STR=`echo $STR | sed -e "s/recorded_log_position/$(LOGFILE_POSITION)/g"`
	# echo $(STR) > $(OUT_DIR)/slave_config.sql
	docker exec -i $(M) mysql -uroot <<< "UNLOCK TABLES;"

setup_slave:


load_data:
	-docker exec -t $(M) mysqladmin -uroot drop deathnote --force | true
	docker exec -t $(M) mysqladmin -uroot create deathnote
	docker exec -i $(M) mysql -uroot deathnote < data.sql

rm:
	docker stop $(M)
	docker rm $(M) && rm -Rf $(DB_DIR) && rm -f $(OUT_DIR)/master-*.tar

build:
	docker build -t mysql-master:$(MYSQL_VERSION) -f Dockerfile-master .
