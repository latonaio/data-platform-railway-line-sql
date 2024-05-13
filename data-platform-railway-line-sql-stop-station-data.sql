CREATE TABLE `data_platform_railway_line_stop_station_data`
(
  `RailwayLine`                  int(16) NOT NULL,
  `RailwayLineStationID`         int(4) NOT NULL,
  `StopStation`                  int(16) NOT NULL,
  `OrderNumberOnOutboundLine`    int(4) NOT NULL,
  `ValidityStartDate`            date NOT NULL,
  `ValidityEndDate`              date NOT NULL,
  `Description`                  varchar(60) NOT NULL,
  `LongText`                     varchar(1000) NOT NULL,
  `Introduction`                 varchar(200) DEFAULT NULL,
  `Project`                      int(16) DEFAULT NULL,
  `WBSElement`                   int(8) DEFAULT NULL,
  `Tag1`                         varchar(40) DEFAULT NULL,
  `Tag2`                         varchar(40) DEFAULT NULL,
  `Tag3`                         varchar(40) DEFAULT NULL,
  `Tag4`                         varchar(40) DEFAULT NULL,
  `CreationDate`                 date NOT NULL,
  `CreationTime`                 time NOT NULL,
  `LastChangeDate`               date NOT NULL,
  `LastChangeTime`               time NOT NULL,
  `CreateUser`                   int(12) NOT NULL,
  `LastChangeUser`               int(12) NOT NULL,
  `IsReleased`                   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`RailwayLine`, `RailwayLineStationID`, `StopStation`),

    CONSTRAINT `DPFMRailwayLineStopStationData_fk` FOREIGN KEY (`RailwayLine`) REFERENCES `data_platform_railway_line_header_data` (`RailwayLine`),
    CONSTRAINT `DPFMRailwayLineStopStationDataStopStation_fk` FOREIGN KEY (`StopStation`) REFERENCES `data_platform_station_header_data` (`Station`),
    CONSTRAINT `DPFMRailwayLineStopStationDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMRailwayLineStopStationDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`),
    CONSTRAINT `DPFMRailwayLineStopStationDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMRailwayLineStopStationDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
