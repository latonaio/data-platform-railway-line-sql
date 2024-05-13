CREATE TABLE `data_platform_railway_line_express_stop_station_data`
(
  `RailwayLine`                  int(16) NOT NULL,
  `ExpressType`                  varchar(4) NOT NULL,
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

    PRIMARY KEY (`RailwayLine`, `ExpressType`, `RailwayLineStationID`, `StopStation`),

    CONSTRAINT `DPFMRailwayLineExpressData_fk` FOREIGN KEY (`RailwayLine`) REFERENCES `data_platform_railway_line_header_data` (`RailwayLine`),
    CONSTRAINT `DPFMRailwayLineExpressDataExpressType_fk` FOREIGN KEY (`RailwayLine`, `ExpressType`) REFERENCES `data_platform_railway_line_express_type_data` (`RailwayLine`, `ExpressType`),
    CONSTRAINT `DPFMRailwayLineExpressDataStopStation_fk` FOREIGN KEY (`RailwayLine`, `RailwayLineStationID`, `StopStation`) REFERENCES `data_platform_railway_line_stop_station_data` (`RailwayLine`, `RailwayLineStationID`, `StopStation`),
    CONSTRAINT `DPFMRailwayLineExpressDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMRailwayLineExpressDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`),
    CONSTRAINT `DPFMRailwayLineExpressDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMRailwayLineExpressDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
