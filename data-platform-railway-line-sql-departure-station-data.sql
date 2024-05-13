CREATE TABLE `data_platform_railway_line_departure_station_data`
(
  `RailwayLine`                  int(16) NOT NULL,
  `ExpressType`                  varchar(4) NOT NULL,
  `DepartureStation`             int(16) NOT NULL,
  `RailwayLineStationID`         int(4) NOT NULL,
  `ValidityStartDate`            date NOT NULL,
  `ValidityEndDate`              date NOT NULL,
  `CreationDate`                 date NOT NULL,
  `CreationTime`                 time NOT NULL,
  `LastChangeDate`               date NOT NULL,
  `LastChangeTime`               time NOT NULL,
  `CreateUser`                   int(12) NOT NULL,
  `LastChangeUser`               int(12) NOT NULL,
  `IsReleased`                   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`RailwayLine`, `ExpressType`, `DepartureStation`),

    CONSTRAINT `DPFMRailwayLineDepartureStationData_fk` FOREIGN KEY (`RailwayLine`) REFERENCES `data_platform_railway_line_header_data` (`RailwayLine`),
    CONSTRAINT `DPFMRailwayLineDepartureStationDataExpressType_fk` FOREIGN KEY (`RailwayLine`, `ExpressType`) REFERENCES `data_platform_railway_line_express_type_data` (`RailwayLine`, `ExpressType`),
    CONSTRAINT `DPFMRailwayLineDepartureStationDataDptStation_fk` FOREIGN KEY (`RailwayLine`, `RailwayLineStationID`, `DepartureStation`) REFERENCES `data_platform_railway_line_stop_station_data` (`RailwayLine`, `RailwayLineStationID`, `StopStation`),
    CONSTRAINT `DPFMRailwayLineDepartureStationDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMRailwayLineDepartureStationDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
