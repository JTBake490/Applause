CREATE TABLE testers(
    testerId BIGSERIAL NOT NULL PRIMARY KEY,
    firstName VARCHAR(15) NOT NULL,
    lastName VARCHAR(15) NOT NULL,
    country CHAR(2),
    lastLogin DATE
);

CREATE TABLE devices(
    deviceId BIGSERIAL NOT NULL PRIMARY KEY,
    deviceName varchar(20) NOT NULL
);

CREATE TABLE tester_device(
    testerId BIGINT REFERENCES testers(testerId),
    deviceId BIGINT REFERENCES devices(deviceId)
    
);

CREATE TABLE bugs(
    bugId BIGINT NOT NULL PRIMARY KEY,
    deviceId BIGINT REFERENCES devices(deviceId),
    testerId BIGINT REFERENCES testers(testerId)
);

-- .mode csv
-- .import ../Applause_files/testers.csv testers
-- .import ../Applause_files/devices_devicename.csv devices
-- .import ../Applause_files/tester_device.csv tester_device
-- .import ../Applause_files/bugs.csv bugs