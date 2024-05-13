CREATE TABLE `data_platform_railway_line_header_doc_data`
(
  `RailwayLine`                    int(16) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`RailwayLine`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DPFMRailwayLineHeaderDocData_fk` FOREIGN KEY (`RailwayLine`) REFERENCES `data_platform_railway_line_header_data` (`RailwayLine`),
    CONSTRAINT `DPFMRailwayLineHeaderDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DPFMRailwayLineHeaderDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
