create table CATEGORY
(
    CATEGORY_ID int auto_increment
        primary key,
    NAME        varchar(100) not null
);

create table FUNDRAISER
(
    FUNDRAISER_ID   int auto_increment
        primary key,
    ORGANIZATION    varchar(255)   not null,
    TITLE           varchar(255)   not null,
    TARGET_FUNDING  decimal(10, 2) not null,
    CURRENT_FUNDING decimal(10, 2) null,
    CITY            varchar(100)   null,
    EVENT_DATE      date           null,
    CATEGORY_ID     int            null,
    constraint fundraiser_ibfk_1
        foreign key (CATEGORY_ID) references CATEGORY (CATEGORY_ID)
);

create index CATEGORY_ID
    on FUNDRAISER (CATEGORY_ID);


INSERT INTO CATEGORY (NAME)
VALUES
('Education'),
('Health'),
('Environment');

INSERT INTO FUNDRAISER (ORGANIZATION, TITLE, TARGET_FUNDING, CURRENT_FUNDING, CITY, EVENT_DATE, CATEGORY_ID)
VALUES
('Charity A', 'Education Fundraiser', 10000.00, 2500.00, 'New York', '2024-01-15', 1),
('Charity B', 'Universal Healthcare', 15000.00, 10000.00, 'Los Angeles', '2024-02-10', 2),
('Organization X', 'Save the Environment', 50000.00, 12000.00, 'San Francisco', '2024-03-20', 3),
('Charity C', 'Student Scholarships', 20000.00, 5000.00, 'Chicago', '2024-04-25', 1),
('Charity D', 'Cancer Research Fund', 30000.00, 22000.00, 'Houston', '2024-05-30', 2);