CREATE TABLE load_NSWPublicSchools (
    DimSchoolKey INT NOT NULL PRIMARY KEY,
    school_code NVARCHAR(255) NULL,
    AgeID NVARCHAR(255) NULL,
    school_name VARCHAR(255) NULL,
    street VARCHAR(500) NULL,
    town_suburb VARCHAR(100) NULL,
    postcode VARCHAR(10) NULL,
    student_number VARCHAR(10) NULL,
    ICSEA_value VARCHAR(50) NULL,
    level_of_schooling VARCHAR(100) NULL,
    selective_school VARCHAR(50) NULL,
    opportunity_class VARCHAR(50) NULL,
    school_specialty_type VARCHAR(100) NULL,
    school_subtype VARCHAR(500) NULL,
    preschool_ind VARCHAR(50) NULL,
    distance_education VARCHAR(50) NULL,
    intensive_english_centre VARCHAR(50) NULL,
    school_gender VARCHAR(50) NULL,
    phone VARCHAR(20) NULL,
    school_email VARCHAR(255) NULL,
    fax VARCHAR(50) NULL,
    lga VARCHAR(100) NULL,
    electorate VARCHAR(100) NULL,
    fed_electorate VARCHAR(100) NULL,
    operational_directorate VARCHAR(100) NULL,
    principal_network VARCHAR(100) NULL,
    local_health_district VARCHAR(100) NULL,
    aegc_region VARCHAR(100) NULL,
	ASGS_remoteness VARCHAR(100) NULL,
	latitude NVARCHAR(100) NULL,
	longitude NVARCHAR(100) NULL,
	CompositeKey NVARCHAR(100) NULL
);


CREATE TABLE load_AUSSubCityDistrictState (
    DimSubCityKey INT NOT NULL PRIMARY KEY,
    Postcode INT NULL,
    Suburb VARCHAR(256) NULL,
    City VARCHAR(256) NULL,
    State VARCHAR(256) NULL,
    StateCode CHAR(5) NULL,
    Lat DECIMAL(9, 6) NULL,
    Lon DECIMAL(9, 6) NULL,
    District VARCHAR(100) NULL,
    CompositeKey NVARCHAR(266) NOT NULL
);

CREATE TABLE load_NSWPropertyMedianValue(
	FactMedianValueKey INT NOT NULL PRIMARY KEY,
    State VARCHAR(100) NULL,
    CityTown VARCHAR(100) NULL,
    Suburb VARCHAR(100) NULL,
    Postcode INT NULL,
    District VARCHAR(100) NULL,
    Location VARCHAR(100) NULL,
    PropertyMedianValue DECIMAL(15, 2) NULL,
    UpdatedYear INT NULL,
    UpdatedMonth INT NULL,
    CompositeKey NVARCHAR(150) NOT NULL
);
 truncate table[dbo].[load_AUSSubCityDistrictState]
 truncate table [dbo].[load_NSWPropertyMedianValue]
 truncate table [dbo].[load_NSWPublicSchools]
 select * from [dbo].[load_NSWPropertyMedianValue]
 select * from [dbo].[load_NSWPublicSchools]
 select * from [dbo].[load_AUSSubCityDistrictState]