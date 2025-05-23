CREATE TABLE load_NSWPublicSchools (
	DimSchoolKey INT IDENTITY(1,1) PRIMARY KEY,
    SchoolCode INT ,
    AgeID INT,
    SchoolName VARCHAR(150),
    Street VARCHAR(150),
    TownSuburb VARCHAR(100),
    Postcode INT,
    StudentNumber INT,
    IndigenousPct VARCHAR(10),
    LbotePct VARCHAR(10),
    ICSEAValue INT,
    LevelOfSchooling VARCHAR(50),
    SelectiveSchool VARCHAR(20),
    OpportunityClass CHAR(1),
    SchoolSpecialtyType VARCHAR(50),
    SchoolSubtype VARCHAR(50),
    SupportClasses CHAR(1),
    PreschoolInd CHAR(1),
    DistanceEducation CHAR(1),
    IntensiveEnglishCentre CHAR(1),
    SchoolGender VARCHAR(20),
    Phone VARCHAR(30),
    SchoolEmail VARCHAR(100),
    Fax VARCHAR(30),
    LateOpeningSchool CHAR(1),
    Date1stTeacher DATE,
    LGA VARCHAR(100),
    Electorate VARCHAR(100),
    FedElectorate VARCHAR(100),
    OperationalDirectorate VARCHAR(100),
    PrincipalNetwork VARCHAR(100),
    FacsDistrict VARCHAR(150),
    LocalHealthDistrict VARCHAR(100),
    AECGRegion VARCHAR(100),
    ASGSRemoteness VARCHAR(50),
    Latitude DECIMAL(9,6),
    Longitude DECIMAL(9,6),
    DateExtracted DATE
);

CREATE TABLE load_AUSSubCityDistrictState (
	DimSubCityKey INT IDENTITY(1,1) PRIMARY KEY,
    Postcode INT,
    Suburb VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    StateCode CHAR(3),
    Lat DECIMAL(9,6),
    Lon DECIMAL(9,6),
    District VARCHAR(100)
);

CREATE TABLE load_NSWPropertyMedianValue(
	FactMedianValueKey INT IDENTITY(1,1) PRIMARY KEY,
    State VARCHAR(100),
    CityTown VARCHAR(100),
    Suburb VARCHAR(100),
    Postcode INT,
    District VARCHAR(100),
    Location VARCHAR(100),
    PropertyMedianValue DECIMAL(15,2),
    UpdatedYear INT,
    UpdatedMonth INT
);
exec sp_rename 'NSWPublicSchools' , 'load_NSWPublicSchools ';
exec sp_rename 'AUSSubCityDistrictState', 'load_AUSSubCityDistrictState';
exec sp_rename 'NSWPropertyMedianValue', 'load_NSWPropertyMedianValue';