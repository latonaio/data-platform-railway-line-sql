CREATE TABLE `data_platform_railway_line_header_data`
(
  `RailwayLine`                          int(16) NOT NULL,
  `RailwayLineType`                      varchar(4) NOT NULL,
  `RailwayLineOwner`                     int(12) NOT NULL,
  `RailwayLineOwnerBusinessPartnerRole`  varchar(40) NOT NULL,
  `Brand`                                int(16) NOT NULL,
  `PersonResponsible`                    varchar(40) DEFAULT NULL,
  `URL`                                  varchar(200) DEFAULT NULL,
  `ValidityStartDate`                    date NOT NULL,
  `ValidityEndDate`                      date NOT NULL,
  `DepartureStationOfOutboundLine`       int(16) NOT NULL,
  `DestinationStationOfOutboundLine`     int(16) NOT NULL,
  `Description`                          varchar(60) NOT NULL,
  `LongText`                             varchar(1000) NOT NULL,
  `Introduction`                         varchar(200) DEFAULT NULL,
  `Project`                              int(16) DEFAULT NULL,
  `WBSElement`                           int(8) DEFAULT NULL,
  `Tag1`                                 varchar(40) DEFAULT NULL,
  `Tag2`                                 varchar(40) DEFAULT NULL,
  `Tag3`                                 varchar(40) DEFAULT NULL,
  `Tag4`                                 varchar(40) DEFAULT NULL,
  `CreationDate`                         date NOT NULL,
  `CreationTime`                         time NOT NULL,
  `LastChangeDate`                       date NOT NULL,
  `LastChangeTime`                       time NOT NULL,
  `CreateUser`                           int(12) NOT NULL,
  `LastChangeUser`                       int(12) NOT NULL,
  `IsReleased`                           tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`                  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`RailwayLine`),

    CONSTRAINT `DPFMRailwayLineHeaderDataRailwayLineType_fk` FOREIGN KEY (`RailwayLineType`) REFERENCES `data_platform_railway_line_type_railway_line_type_data` (`RailwayLineType`),
    CONSTRAINT `DPFMRailwayLineHeaderDataRailwayLineOwner_fk` FOREIGN KEY (`RailwayLineOwner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMRailwayLineHeaderDataRailwayLineOwnerBPRole_fk` FOREIGN KEY (`RailwayLineOwnerBusinessPartnerRole`) REFERENCES `data_platform_bp_role_bp_role_data` (`BusinessPartnerRole`),
    CONSTRAINT `DPFMRailwayLineHeaderDataBrand_fk` FOREIGN KEY (`Brand`) REFERENCES `data_platform_brand_header_data` (`Brand`),
    CONSTRAINT `DPFMRailwayLineHeaderDataDptStationOfOBLine_fk` FOREIGN KEY (`DepartureStationOfOutboundLine`) REFERENCES `data_platform_station_header_data` (`Station`),
    CONSTRAINT `DPFMRailwayLineHeaderDataDstStationOfOBLine_fk` FOREIGN KEY (`DestinationStationOfOutboundLine`) REFERENCES `data_platform_station_header_data` (`Station`),
    CONSTRAINT `DPFMRailwayLineHeaderDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMRailwayLineHeaderDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`),
    CONSTRAINT `DPFMRailwayLineHeaderDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMRailwayLineHeaderDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
