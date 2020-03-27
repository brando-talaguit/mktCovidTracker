ALTER TABLE `mkt_covid_tracker`.`trans_details`
CHANGE COLUMN `trans_detail_answ_id` `trans_detail_answ_id` VARCHAR(100) NOT NULL ;

ALTER TABLE `mkt_covid_tracker`.`trans_details`
CHANGE COLUMN `trans_detail_answ_id` `trans_detail_answ` VARCHAR(100) NOT NULL ;

ALTER TABLE `mkt_covid_tracker`.`trans_details`
CHANGE COLUMN `trans_detail_answ` `trans_detail_answ` VARCHAR(100) NULL DEFAULT ' ' ;
