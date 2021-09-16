--
-- File generated with SQLiteStudio v3.2.1 on Do Sep 16 21:26:20 2021
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: account_emailaddress
DROP TABLE IF EXISTS account_emailaddress;

CREATE TABLE account_emailaddress (
    id        INTEGER       NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    verified  BOOL          NOT NULL,
    [primary] BOOL          NOT NULL,
    user_id   INTEGER       NOT NULL
                            REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    email     VARCHAR (254) NOT NULL
                            UNIQUE
);

INSERT INTO account_emailaddress (
                                     id,
                                     verified,
                                     [primary],
                                     user_id,
                                     email
                                 )
                                 VALUES (
                                     1,
                                     0,
                                     1,
                                     3,
                                     'matt@gmail.com'
                                 );


-- Table: account_emailconfirmation
DROP TABLE IF EXISTS account_emailconfirmation;

CREATE TABLE account_emailconfirmation (
    id               INTEGER      NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    created          DATETIME     NOT NULL,
    sent             DATETIME,
    [key]            VARCHAR (64) NOT NULL
                                  UNIQUE,
    email_address_id INTEGER      NOT NULL
                                  REFERENCES account_emailaddress (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: auth_group
DROP TABLE IF EXISTS auth_group;

CREATE TABLE auth_group (
    id   INTEGER       NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (150) NOT NULL
                       UNIQUE
);


-- Table: auth_group_permissions
DROP TABLE IF EXISTS auth_group_permissions;

CREATE TABLE auth_group_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    group_id      INTEGER NOT NULL
                          REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: auth_permission
DROP TABLE IF EXISTS auth_permission;

CREATE TABLE auth_permission (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    content_type_id INTEGER       NOT NULL
                                  REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    codename        VARCHAR (100) NOT NULL,
    name            VARCHAR (255) NOT NULL
);

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                1,
                                1,
                                'add_logentry',
                                'Can add log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                2,
                                1,
                                'change_logentry',
                                'Can change log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                3,
                                1,
                                'delete_logentry',
                                'Can delete log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                4,
                                1,
                                'view_logentry',
                                'Can view log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                5,
                                2,
                                'add_permission',
                                'Can add permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                6,
                                2,
                                'change_permission',
                                'Can change permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                7,
                                2,
                                'delete_permission',
                                'Can delete permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                8,
                                2,
                                'view_permission',
                                'Can view permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                9,
                                3,
                                'add_group',
                                'Can add group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                10,
                                3,
                                'change_group',
                                'Can change group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                11,
                                3,
                                'delete_group',
                                'Can delete group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                12,
                                3,
                                'view_group',
                                'Can view group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                13,
                                4,
                                'add_user',
                                'Can add user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                14,
                                4,
                                'change_user',
                                'Can change user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                15,
                                4,
                                'delete_user',
                                'Can delete user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                16,
                                4,
                                'view_user',
                                'Can view user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                17,
                                5,
                                'add_contenttype',
                                'Can add content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                18,
                                5,
                                'change_contenttype',
                                'Can change content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                19,
                                5,
                                'delete_contenttype',
                                'Can delete content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                20,
                                5,
                                'view_contenttype',
                                'Can view content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                21,
                                6,
                                'add_session',
                                'Can add session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                22,
                                6,
                                'change_session',
                                'Can change session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                23,
                                6,
                                'delete_session',
                                'Can delete session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                24,
                                6,
                                'view_session',
                                'Can view session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                25,
                                7,
                                'add_site',
                                'Can add site'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                26,
                                7,
                                'change_site',
                                'Can change site'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                27,
                                7,
                                'delete_site',
                                'Can delete site'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                28,
                                7,
                                'view_site',
                                'Can view site'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                29,
                                8,
                                'add_emailaddress',
                                'Can add email address'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                30,
                                8,
                                'change_emailaddress',
                                'Can change email address'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                31,
                                8,
                                'delete_emailaddress',
                                'Can delete email address'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                32,
                                8,
                                'view_emailaddress',
                                'Can view email address'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                33,
                                9,
                                'add_emailconfirmation',
                                'Can add email confirmation'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                34,
                                9,
                                'change_emailconfirmation',
                                'Can change email confirmation'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                35,
                                9,
                                'delete_emailconfirmation',
                                'Can delete email confirmation'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                36,
                                9,
                                'view_emailconfirmation',
                                'Can view email confirmation'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                37,
                                10,
                                'add_socialaccount',
                                'Can add social account'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                38,
                                10,
                                'change_socialaccount',
                                'Can change social account'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                39,
                                10,
                                'delete_socialaccount',
                                'Can delete social account'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                40,
                                10,
                                'view_socialaccount',
                                'Can view social account'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                41,
                                11,
                                'add_socialapp',
                                'Can add social application'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                42,
                                11,
                                'change_socialapp',
                                'Can change social application'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                43,
                                11,
                                'delete_socialapp',
                                'Can delete social application'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                44,
                                11,
                                'view_socialapp',
                                'Can view social application'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                45,
                                12,
                                'add_socialtoken',
                                'Can add social application token'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                46,
                                12,
                                'change_socialtoken',
                                'Can change social application token'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                47,
                                12,
                                'delete_socialtoken',
                                'Can delete social application token'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                48,
                                12,
                                'view_socialtoken',
                                'Can view social application token'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                49,
                                13,
                                'add_address',
                                'Can add address'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                50,
                                13,
                                'change_address',
                                'Can change address'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                51,
                                13,
                                'delete_address',
                                'Can delete address'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                52,
                                13,
                                'view_address',
                                'Can view address'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                53,
                                14,
                                'add_coupon',
                                'Can add coupon'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                54,
                                14,
                                'change_coupon',
                                'Can change coupon'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                55,
                                14,
                                'delete_coupon',
                                'Can delete coupon'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                56,
                                14,
                                'view_coupon',
                                'Can view coupon'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                57,
                                15,
                                'add_item',
                                'Can add item'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                58,
                                15,
                                'change_item',
                                'Can change item'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                59,
                                15,
                                'delete_item',
                                'Can delete item'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                60,
                                15,
                                'view_item',
                                'Can view item'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                61,
                                16,
                                'add_order',
                                'Can add order'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                62,
                                16,
                                'change_order',
                                'Can change order'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                63,
                                16,
                                'delete_order',
                                'Can delete order'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                64,
                                16,
                                'view_order',
                                'Can view order'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                65,
                                17,
                                'add_refund',
                                'Can add refund'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                66,
                                17,
                                'change_refund',
                                'Can change refund'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                67,
                                17,
                                'delete_refund',
                                'Can delete refund'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                68,
                                17,
                                'view_refund',
                                'Can view refund'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                69,
                                18,
                                'add_payment',
                                'Can add payment'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                70,
                                18,
                                'change_payment',
                                'Can change payment'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                71,
                                18,
                                'delete_payment',
                                'Can delete payment'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                72,
                                18,
                                'view_payment',
                                'Can view payment'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                73,
                                19,
                                'add_orderitem',
                                'Can add order item'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                74,
                                19,
                                'change_orderitem',
                                'Can change order item'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                75,
                                19,
                                'delete_orderitem',
                                'Can delete order item'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                76,
                                19,
                                'view_orderitem',
                                'Can view order item'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                77,
                                20,
                                'add_userprofile',
                                'Can add user profile'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                78,
                                20,
                                'change_userprofile',
                                'Can change user profile'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                79,
                                20,
                                'delete_userprofile',
                                'Can delete user profile'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                80,
                                20,
                                'view_userprofile',
                                'Can view user profile'
                            );


-- Table: auth_user
DROP TABLE IF EXISTS auth_user;

CREATE TABLE auth_user (
    id           INTEGER       NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    password     VARCHAR (128) NOT NULL,
    last_login   DATETIME,
    is_superuser BOOL          NOT NULL,
    username     VARCHAR (150) NOT NULL
                               UNIQUE,
    first_name   VARCHAR (30)  NOT NULL,
    email        VARCHAR (254) NOT NULL,
    is_staff     BOOL          NOT NULL,
    is_active    BOOL          NOT NULL,
    date_joined  DATETIME      NOT NULL,
    last_name    VARCHAR (150) NOT NULL
);

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          first_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          last_name
                      )
                      VALUES (
                          1,
                          'pbkdf2_sha256$150000$CuVlo6jZLDqu$NapI2LGx8hYoFq7PsmryzadoZJTprsjFy5ec89LkQWo=',
                          '2020-07-07 14:23:52.580598',
                          1,
                          'admin',
                          '',
                          '',
                          1,
                          1,
                          '2019-06-16 20:54:22.727554',
                          ''
                      );

INSERT INTO auth_user (
                          id,
                          password,
                          last_login,
                          is_superuser,
                          username,
                          first_name,
                          email,
                          is_staff,
                          is_active,
                          date_joined,
                          last_name
                      )
                      VALUES (
                          3,
                          'pbkdf2_sha256$150000$uJvxvVtAHiQD$cRP03f5f2FC+LdMEZ7YCJ2G6IObXPkL88BFsPO6jv6s=',
                          '2019-06-30 14:10:40.454170',
                          0,
                          'matttt',
                          '',
                          'matt@gmail.com',
                          0,
                          1,
                          '2019-06-30 14:09:17.611074',
                          ''
                      );


-- Table: auth_user_groups
DROP TABLE IF EXISTS auth_user_groups;

CREATE TABLE auth_user_groups (
    id       INTEGER NOT NULL
                     PRIMARY KEY AUTOINCREMENT,
    user_id  INTEGER NOT NULL
                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    group_id INTEGER NOT NULL
                     REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: auth_user_user_permissions
DROP TABLE IF EXISTS auth_user_user_permissions;

CREATE TABLE auth_user_user_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER NOT NULL
                          REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: core_address
DROP TABLE IF EXISTS core_address;

CREATE TABLE core_address (
    id                INTEGER       NOT NULL
                                    PRIMARY KEY AUTOINCREMENT,
    street_address    VARCHAR (100) NOT NULL,
    apartment_address VARCHAR (100) NOT NULL,
    country           VARCHAR (2)   NOT NULL,
    zip               VARCHAR (100) NOT NULL,
    address_type      VARCHAR (1)   NOT NULL,
    [default]         BOOL          NOT NULL,
    user_id           INTEGER       NOT NULL
                                    REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO core_address (
                             id,
                             street_address,
                             apartment_address,
                             country,
                             zip,
                             address_type,
                             [default],
                             user_id
                         )
                         VALUES (
                             3,
                             'fwfewfwe',
                             'fewfewfew',
                             'AX',
                             '345345',
                             'S',
                             1,
                             1
                         );

INSERT INTO core_address (
                             id,
                             street_address,
                             apartment_address,
                             country,
                             zip,
                             address_type,
                             [default],
                             user_id
                         )
                         VALUES (
                             4,
                             'fwfewfwe',
                             'fewfewfew',
                             'AX',
                             '345345',
                             'B',
                             1,
                             1
                         );

INSERT INTO core_address (
                             id,
                             street_address,
                             apartment_address,
                             country,
                             zip,
                             address_type,
                             [default],
                             user_id
                         )
                         VALUES (
                             5,
                             'gergregre',
                             'gregre',
                             'DZ',
                             '345345',
                             'S',
                             1,
                             3
                         );

INSERT INTO core_address (
                             id,
                             street_address,
                             apartment_address,
                             country,
                             zip,
                             address_type,
                             [default],
                             user_id
                         )
                         VALUES (
                             6,
                             '534543',
                             'htrhrthrt',
                             'DZ',
                             '35345',
                             'B',
                             1,
                             3
                         );

INSERT INTO core_address (
                             id,
                             street_address,
                             apartment_address,
                             country,
                             zip,
                             address_type,
                             [default],
                             user_id
                         )
                         VALUES (
                             7,
                             'Test',
                             'This place',
                             'AF',
                             '003943',
                             'S',
                             0,
                             1
                         );

INSERT INTO core_address (
                             id,
                             street_address,
                             apartment_address,
                             country,
                             zip,
                             address_type,
                             [default],
                             user_id
                         )
                         VALUES (
                             8,
                             'Another one',
                             'Testing',
                             'AF',
                             '234324',
                             'B',
                             0,
                             1
                         );

INSERT INTO core_address (
                             id,
                             street_address,
                             apartment_address,
                             country,
                             zip,
                             address_type,
                             [default],
                             user_id
                         )
                         VALUES (
                             9,
                             'Somewhere',
                             'Some place',
                             'AF',
                             '432432',
                             'S',
                             0,
                             1
                         );

INSERT INTO core_address (
                             id,
                             street_address,
                             apartment_address,
                             country,
                             zip,
                             address_type,
                             [default],
                             user_id
                         )
                         VALUES (
                             10,
                             'And this',
                             'testing',
                             'AF',
                             '342432',
                             'B',
                             0,
                             1
                         );


-- Table: core_coupon
DROP TABLE IF EXISTS core_coupon;

CREATE TABLE core_coupon (
    id     INTEGER      NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    code   VARCHAR (15) NOT NULL,
    amount REAL         NOT NULL
);


-- Table: core_item
DROP TABLE IF EXISTS core_item;

CREATE TABLE core_item (
    id             INTEGER       NOT NULL
                                 PRIMARY KEY AUTOINCREMENT,
    title          VARCHAR (100) NOT NULL,
    price          REAL          NOT NULL,
    discount_price REAL,
    category       VARCHAR (2)   NOT NULL,
    label          VARCHAR (1)   NOT NULL,
    slug           VARCHAR (50)  NOT NULL,
    description    TEXT          NOT NULL,
    image          VARCHAR (100) NOT NULL
);

INSERT INTO core_item (
                          id,
                          title,
                          price,
                          discount_price,
                          category,
                          label,
                          slug,
                          description,
                          image
                      )
                      VALUES (
                          1,
                          'A shirt',
                          30.0,
                          20.0,
                          'S',
                          'P',
                          'shirt',
                          'this is a shirt',
                          'shirt.jpeg'
                      );


-- Table: core_order
DROP TABLE IF EXISTS core_order;

CREATE TABLE core_order (
    id                  INTEGER      NOT NULL
                                     PRIMARY KEY AUTOINCREMENT,
    start_date          DATETIME     NOT NULL,
    ordered_date        DATETIME     NOT NULL,
    ordered             BOOL         NOT NULL,
    being_delivered     BOOL         NOT NULL,
    received            BOOL         NOT NULL,
    refund_requested    BOOL         NOT NULL,
    refund_granted      BOOL         NOT NULL,
    billing_address_id  INTEGER
                                     REFERENCES core_address (id) DEFERRABLE INITIALLY DEFERRED,
    coupon_id           INTEGER
                                     REFERENCES core_coupon (id) DEFERRABLE INITIALLY DEFERRED,
    payment_id          INTEGER
                                     REFERENCES core_payment (id) DEFERRABLE INITIALLY DEFERRED,
    shipping_address_id INTEGER
                                     REFERENCES core_address (id) DEFERRABLE INITIALLY DEFERRED,
    user_id             INTEGER      NOT NULL
                                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    ref_code            VARCHAR (20) 
);

INSERT INTO core_order (
                           id,
                           start_date,
                           ordered_date,
                           ordered,
                           being_delivered,
                           received,
                           refund_requested,
                           refund_granted,
                           billing_address_id,
                           coupon_id,
                           payment_id,
                           shipping_address_id,
                           user_id,
                           ref_code
                       )
                       VALUES (
                           10,
                           '2020-07-07 14:49:17.894748',
                           '2020-07-07 14:49:17.894317',
                           0,
                           0,
                           0,
                           0,
                           0,
                           10,
                           NULL,
                           NULL,
                           9,
                           1,
                           NULL
                       );


-- Table: core_order_items
DROP TABLE IF EXISTS core_order_items;

CREATE TABLE core_order_items (
    id           INTEGER NOT NULL
                         PRIMARY KEY AUTOINCREMENT,
    order_id     INTEGER NOT NULL
                         REFERENCES core_order (id) DEFERRABLE INITIALLY DEFERRED,
    orderitem_id INTEGER NOT NULL
                         REFERENCES core_orderitem (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO core_order_items (
                                 id,
                                 order_id,
                                 orderitem_id
                             )
                             VALUES (
                                 14,
                                 10,
                                 12
                             );


-- Table: core_orderitem
DROP TABLE IF EXISTS core_orderitem;

CREATE TABLE core_orderitem (
    id       INTEGER NOT NULL
                     PRIMARY KEY AUTOINCREMENT,
    ordered  BOOL    NOT NULL,
    quantity INTEGER NOT NULL,
    item_id  INTEGER NOT NULL
                     REFERENCES core_item (id) DEFERRABLE INITIALLY DEFERRED,
    user_id  INTEGER NOT NULL
                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO core_orderitem (
                               id,
                               ordered,
                               quantity,
                               item_id,
                               user_id
                           )
                           VALUES (
                               12,
                               0,
                               1,
                               1,
                               1
                           );


-- Table: core_payment
DROP TABLE IF EXISTS core_payment;

CREATE TABLE core_payment (
    id               INTEGER      NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    stripe_charge_id VARCHAR (50) NOT NULL,
    amount           REAL         NOT NULL,
    timestamp        DATETIME     NOT NULL,
    user_id          INTEGER
                                  REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO core_payment (
                             id,
                             stripe_charge_id,
                             amount,
                             timestamp,
                             user_id
                         )
                         VALUES (
                             1,
                             'ch_1EqzhKAOiJzDcnKnPP8FemeK',
                             20.0,
                             '2019-06-30 09:51:51.338784',
                             1
                         );

INSERT INTO core_payment (
                             id,
                             stripe_charge_id,
                             amount,
                             timestamp,
                             user_id
                         )
                         VALUES (
                             2,
                             'ch_1Er39cAOiJzDcnKnM7BT7EXG',
                             20.0,
                             '2019-06-30 13:33:16.729089',
                             1
                         );

INSERT INTO core_payment (
                             id,
                             stripe_charge_id,
                             amount,
                             timestamp,
                             user_id
                         )
                         VALUES (
                             3,
                             'ch_1Er3r9AOiJzDcnKn61iVZfnC',
                             20.0,
                             '2019-06-30 14:18:16.571515',
                             3
                         );

INSERT INTO core_payment (
                             id,
                             stripe_charge_id,
                             amount,
                             timestamp,
                             user_id
                         )
                         VALUES (
                             4,
                             'ch_1Er3usAOiJzDcnKnCvtlpIwD',
                             20.0,
                             '2019-06-30 14:22:07.278405',
                             3
                         );

INSERT INTO core_payment (
                             id,
                             stripe_charge_id,
                             amount,
                             timestamp,
                             user_id
                         )
                         VALUES (
                             5,
                             'ch_1Er9JyAOiJzDcnKntxENpYFa',
                             20.0,
                             '2019-06-30 20:08:23.360973',
                             3
                         );

INSERT INTO core_payment (
                             id,
                             stripe_charge_id,
                             amount,
                             timestamp,
                             user_id
                         )
                         VALUES (
                             6,
                             'ch_1Er9PQAOiJzDcnKnCaAWXzK7',
                             20.0,
                             '2019-06-30 20:14:01.181309',
                             3
                         );

INSERT INTO core_payment (
                             id,
                             stripe_charge_id,
                             amount,
                             timestamp,
                             user_id
                         )
                         VALUES (
                             7,
                             'ch_1Er9QAAOiJzDcnKn2hhCuIG5',
                             20.0,
                             '2019-06-30 20:14:47.590560',
                             3
                         );

INSERT INTO core_payment (
                             id,
                             stripe_charge_id,
                             amount,
                             timestamp,
                             user_id
                         )
                         VALUES (
                             8,
                             'ch_1Er9QdAOiJzDcnKn0FkrMYK0',
                             20.0,
                             '2019-06-30 20:15:16.234978',
                             3
                         );


-- Table: core_refund
DROP TABLE IF EXISTS core_refund;

CREATE TABLE core_refund (
    id       INTEGER       NOT NULL
                           PRIMARY KEY AUTOINCREMENT,
    reason   TEXT          NOT NULL,
    accepted BOOL          NOT NULL,
    email    VARCHAR (254) NOT NULL,
    order_id INTEGER       NOT NULL
                           REFERENCES core_order (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: core_userprofile
DROP TABLE IF EXISTS core_userprofile;

CREATE TABLE core_userprofile (
    id                   INTEGER      NOT NULL
                                      PRIMARY KEY AUTOINCREMENT,
    stripe_customer_id   VARCHAR (50),
    user_id              INTEGER      NOT NULL
                                      UNIQUE
                                      REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    one_click_purchasing BOOL         NOT NULL
);

INSERT INTO core_userprofile (
                                 id,
                                 stripe_customer_id,
                                 user_id,
                                 one_click_purchasing
                             )
                             VALUES (
                                 1,
                                 'cus_HZFGCOdmSW1t6D',
                                 1,
                                 1
                             );

INSERT INTO core_userprofile (
                                 id,
                                 stripe_customer_id,
                                 user_id,
                                 one_click_purchasing
                             )
                             VALUES (
                                 2,
                                 'cus_FLr8YaQN3uCgUb',
                                 3,
                                 1
                             );


-- Table: django_admin_log
DROP TABLE IF EXISTS django_admin_log;

CREATE TABLE django_admin_log (
    id              INTEGER             NOT NULL
                                        PRIMARY KEY AUTOINCREMENT,
    action_time     DATETIME            NOT NULL,
    object_id       TEXT,
    object_repr     VARCHAR (200)       NOT NULL,
    change_message  TEXT                NOT NULL,
    content_type_id INTEGER
                                        REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    user_id         INTEGER             NOT NULL
                                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    action_flag     [SMALLINT UNSIGNED] NOT NULL
                                        CHECK ("action_flag" >= 0) 
);

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 1,
                                 '2019-06-16 21:03:15.396450',
                                 '1',
                                 'A shirt',
                                 '[{"added": {}}]',
                                 15,
                                 1,
                                 1
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 2,
                                 '2019-06-16 21:45:07.066436',
                                 '1',
                                 'admin',
                                 '[{"changed": {"fields": ["shipping_address", "billing_address"]}}]',
                                 16,
                                 1,
                                 2
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 3,
                                 '2019-06-16 21:45:41.725612',
                                 '2',
                                 'admin',
                                 '',
                                 13,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 4,
                                 '2019-06-16 21:45:41.732526',
                                 '1',
                                 'admin',
                                 '',
                                 13,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 5,
                                 '2019-06-16 21:50:53.443660',
                                 '4',
                                 'admin',
                                 '[{"changed": {"fields": ["default"]}}]',
                                 13,
                                 1,
                                 2
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 6,
                                 '2019-06-16 21:50:56.370861',
                                 '3',
                                 'admin',
                                 '[{"changed": {"fields": ["default"]}}]',
                                 13,
                                 1,
                                 2
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 7,
                                 '2019-06-30 09:51:46.331152',
                                 '1',
                                 'admin',
                                 '[{"added": {}}]',
                                 20,
                                 1,
                                 1
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 8,
                                 '2019-06-30 14:08:49.294656',
                                 '2',
                                 'matttt',
                                 '',
                                 4,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 9,
                                 '2019-06-30 14:14:54.648717',
                                 '2',
                                 'matttt',
                                 '[{"changed": {"fields": ["stripe_customer_id", "one_click_purchasing"]}}]',
                                 20,
                                 1,
                                 2
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 10,
                                 '2019-06-30 14:18:00.945493',
                                 '2',
                                 'matttt',
                                 '[{"changed": {"fields": ["stripe_customer_id", "one_click_purchasing"]}}]',
                                 20,
                                 1,
                                 2
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 11,
                                 '2019-06-30 20:03:42.723165',
                                 '2',
                                 'matttt',
                                 '[{"changed": {"fields": ["stripe_customer_id", "one_click_purchasing"]}}]',
                                 20,
                                 1,
                                 2
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 12,
                                 '2019-06-30 20:11:23.629437',
                                 '2',
                                 'matttt',
                                 '[{"changed": {"fields": ["stripe_customer_id", "one_click_purchasing"]}}]',
                                 20,
                                 1,
                                 2
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 13,
                                 '2019-06-30 20:13:37.441341',
                                 '2',
                                 'matttt',
                                 '[{"changed": {"fields": ["stripe_customer_id", "one_click_purchasing"]}}]',
                                 20,
                                 1,
                                 2
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 14,
                                 '2020-07-07 14:49:02.847747',
                                 '9',
                                 'matttt',
                                 '',
                                 16,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 15,
                                 '2020-07-07 14:49:02.862954',
                                 '8',
                                 'matttt',
                                 '',
                                 16,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 16,
                                 '2020-07-07 14:49:02.872644',
                                 '7',
                                 'matttt',
                                 '',
                                 16,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 17,
                                 '2020-07-07 14:49:02.883231',
                                 '6',
                                 'matttt',
                                 '',
                                 16,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 18,
                                 '2020-07-07 14:49:02.896142',
                                 '5',
                                 'matttt',
                                 '',
                                 16,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 19,
                                 '2020-07-07 14:49:02.909875',
                                 '4',
                                 'matttt',
                                 '',
                                 16,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 20,
                                 '2020-07-07 14:49:02.922171',
                                 '3',
                                 'admin',
                                 '',
                                 16,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 21,
                                 '2020-07-07 14:49:02.932744',
                                 '2',
                                 'admin',
                                 '',
                                 16,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 22,
                                 '2020-07-07 14:49:02.943217',
                                 '1',
                                 'admin',
                                 '',
                                 16,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 23,
                                 '2020-07-07 14:49:26.859819',
                                 '9',
                                 '1 of A shirt',
                                 '',
                                 19,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 24,
                                 '2020-07-07 14:49:26.877231',
                                 '8',
                                 '1 of A shirt',
                                 '',
                                 19,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 25,
                                 '2020-07-07 14:49:26.890345',
                                 '7',
                                 '1 of A shirt',
                                 '',
                                 19,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 26,
                                 '2020-07-07 14:49:26.902182',
                                 '6',
                                 '1 of A shirt',
                                 '',
                                 19,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 27,
                                 '2020-07-07 14:49:26.912264',
                                 '5',
                                 '1 of A shirt',
                                 '',
                                 19,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 28,
                                 '2020-07-07 14:49:26.923129',
                                 '4',
                                 '1 of A shirt',
                                 '',
                                 19,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 29,
                                 '2020-07-07 14:49:26.933600',
                                 '3',
                                 '3 of A shirt',
                                 '',
                                 19,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 30,
                                 '2020-07-07 14:49:26.945322',
                                 '2',
                                 '1 of A shirt',
                                 '',
                                 19,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 31,
                                 '2020-07-07 14:49:26.956044',
                                 '1',
                                 '1 of A shirt',
                                 '',
                                 19,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 32,
                                 '2020-07-07 14:49:45.039056',
                                 '10',
                                 '1 of A shirt',
                                 '',
                                 19,
                                 1,
                                 3
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 33,
                                 '2020-07-07 14:51:16.465576',
                                 '1',
                                 'admin',
                                 '[{"changed": {"fields": ["stripe_customer_id"]}}]',
                                 20,
                                 1,
                                 2
                             );

INSERT INTO django_admin_log (
                                 id,
                                 action_time,
                                 object_id,
                                 object_repr,
                                 change_message,
                                 content_type_id,
                                 user_id,
                                 action_flag
                             )
                             VALUES (
                                 34,
                                 '2020-07-07 14:51:26.885972',
                                 '11',
                                 '1 of A shirt',
                                 '',
                                 19,
                                 1,
                                 3
                             );


-- Table: django_content_type
DROP TABLE IF EXISTS django_content_type;

CREATE TABLE django_content_type (
    id        INTEGER       NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    app_label VARCHAR (100) NOT NULL,
    model     VARCHAR (100) NOT NULL
);

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    1,
                                    'admin',
                                    'logentry'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    2,
                                    'auth',
                                    'permission'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    3,
                                    'auth',
                                    'group'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    4,
                                    'auth',
                                    'user'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    5,
                                    'contenttypes',
                                    'contenttype'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    6,
                                    'sessions',
                                    'session'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    7,
                                    'sites',
                                    'site'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    8,
                                    'account',
                                    'emailaddress'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    9,
                                    'account',
                                    'emailconfirmation'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    10,
                                    'socialaccount',
                                    'socialaccount'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    11,
                                    'socialaccount',
                                    'socialapp'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    12,
                                    'socialaccount',
                                    'socialtoken'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    13,
                                    'core',
                                    'address'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    14,
                                    'core',
                                    'coupon'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    15,
                                    'core',
                                    'item'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    16,
                                    'core',
                                    'order'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    17,
                                    'core',
                                    'refund'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    18,
                                    'core',
                                    'payment'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    19,
                                    'core',
                                    'orderitem'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    20,
                                    'core',
                                    'userprofile'
                                );


-- Table: django_migrations
DROP TABLE IF EXISTS django_migrations;

CREATE TABLE django_migrations (
    id      INTEGER       NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    app     VARCHAR (255) NOT NULL,
    name    VARCHAR (255) NOT NULL,
    applied DATETIME      NOT NULL
);

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  1,
                                  'contenttypes',
                                  '0001_initial',
                                  '2019-06-16 20:54:13.452527'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  2,
                                  'auth',
                                  '0001_initial',
                                  '2019-06-16 20:54:13.464341'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  3,
                                  'account',
                                  '0001_initial',
                                  '2019-06-16 20:54:13.478053'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  4,
                                  'account',
                                  '0002_email_max_length',
                                  '2019-06-16 20:54:13.486813'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  5,
                                  'admin',
                                  '0001_initial',
                                  '2019-06-16 20:54:13.494717'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  6,
                                  'admin',
                                  '0002_logentry_remove_auto_add',
                                  '2019-06-16 20:54:13.504811'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  7,
                                  'admin',
                                  '0003_logentry_add_action_flag_choices',
                                  '2019-06-16 20:54:13.514776'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  8,
                                  'contenttypes',
                                  '0002_remove_content_type_name',
                                  '2019-06-16 20:54:13.531799'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  9,
                                  'auth',
                                  '0002_alter_permission_name_max_length',
                                  '2019-06-16 20:54:13.537767'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  10,
                                  'auth',
                                  '0003_alter_user_email_max_length',
                                  '2019-06-16 20:54:13.547088'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  11,
                                  'auth',
                                  '0004_alter_user_username_opts',
                                  '2019-06-16 20:54:13.557284'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  12,
                                  'auth',
                                  '0005_alter_user_last_login_null',
                                  '2019-06-16 20:54:13.566185'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  13,
                                  'auth',
                                  '0006_require_contenttypes_0002',
                                  '2019-06-16 20:54:13.567554'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  14,
                                  'auth',
                                  '0007_alter_validators_add_error_messages',
                                  '2019-06-16 20:54:13.576477'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  15,
                                  'auth',
                                  '0008_alter_user_username_max_length',
                                  '2019-06-16 20:54:13.585346'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  16,
                                  'auth',
                                  '0009_alter_user_last_name_max_length',
                                  '2019-06-16 20:54:13.594345'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  17,
                                  'auth',
                                  '0010_alter_group_name_max_length',
                                  '2019-06-16 20:54:13.601875'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  18,
                                  'auth',
                                  '0011_update_proxy_permissions',
                                  '2019-06-16 20:54:13.609014'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  19,
                                  'core',
                                  '0001_initial',
                                  '2019-06-16 20:54:13.701479'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  20,
                                  'sessions',
                                  '0001_initial',
                                  '2019-06-16 20:54:13.705244'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  21,
                                  'sites',
                                  '0001_initial',
                                  '2019-06-16 20:54:13.708813'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  22,
                                  'sites',
                                  '0002_alter_domain_unique',
                                  '2019-06-16 20:54:13.716080'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  23,
                                  'socialaccount',
                                  '0001_initial',
                                  '2019-06-16 20:54:13.753974'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  24,
                                  'socialaccount',
                                  '0002_token_max_lengths',
                                  '2019-06-16 20:54:13.799800'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  25,
                                  'socialaccount',
                                  '0003_extra_data_default_dict',
                                  '2019-06-16 20:54:13.810806'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  26,
                                  'core',
                                  '0002_auto_20190616_2144',
                                  '2019-06-16 21:45:01.079177'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  27,
                                  'core',
                                  '0003_userprofile',
                                  '2019-06-30 09:49:57.482292'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  28,
                                  'core',
                                  '0004_auto_20190630_1408',
                                  '2019-06-30 14:08:30.102395'
                              );


-- Table: django_session
DROP TABLE IF EXISTS django_session;

CREATE TABLE django_session (
    session_key  VARCHAR (40) NOT NULL
                              PRIMARY KEY,
    session_data TEXT         NOT NULL,
    expire_date  DATETIME     NOT NULL
);

INSERT INTO django_session (
                               session_key,
                               session_data,
                               expire_date
                           )
                           VALUES (
                               '9x8pqgrj0tgyt8cgksikq4j5yyw2g3j4',
                               'ZDExZmQzZTdlYTYzMzEzNmI4MTUwMmM3NDU1MGVjZWRjNDNjZTM0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MjIwNjZiODkwMWM5NGQyYTA5MWNkN2IzOWE4NWUyMzBlODhjZjI3In0=',
                               '2019-06-30 21:02:37.563093'
                           );

INSERT INTO django_session (
                               session_key,
                               session_data,
                               expire_date
                           )
                           VALUES (
                               '95z7sepwtqu8o4f7pp4d22ynbi8tjgfl',
                               'YWViMDdkZjA1ZjdiMjY5Mjc5OGY2YWEzNzM0MGFhZDE0YWMwZTk5NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYTZhM2M5MmM3NDljMmVmYWM3MzVlNzk3NTBlMWRmNDBlOTIxNzBiIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==',
                               '2019-07-14 14:10:40.461996'
                           );

INSERT INTO django_session (
                               session_key,
                               session_data,
                               expire_date
                           )
                           VALUES (
                               'zc5js866sqlgbpu4ejuxiy8cq8mr14b7',
                               'ZDExZmQzZTdlYTYzMzEzNmI4MTUwMmM3NDU1MGVjZWRjNDNjZTM0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MjIwNjZiODkwMWM5NGQyYTA5MWNkN2IzOWE4NWUyMzBlODhjZjI3In0=',
                               '2019-07-14 14:11:37.062998'
                           );

INSERT INTO django_session (
                               session_key,
                               session_data,
                               expire_date
                           )
                           VALUES (
                               'ljmcixhto1bbx4texkhs23u0k56kfnzb',
                               'ZDExZmQzZTdlYTYzMzEzNmI4MTUwMmM3NDU1MGVjZWRjNDNjZTM0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MjIwNjZiODkwMWM5NGQyYTA5MWNkN2IzOWE4NWUyMzBlODhjZjI3In0=',
                               '2020-07-21 14:23:52.591461'
                           );


-- Table: django_site
DROP TABLE IF EXISTS django_site;

CREATE TABLE django_site (
    id     INTEGER       NOT NULL
                         PRIMARY KEY AUTOINCREMENT,
    name   VARCHAR (50)  NOT NULL,
    domain VARCHAR (100) NOT NULL
                         UNIQUE
);

INSERT INTO django_site (
                            id,
                            name,
                            domain
                        )
                        VALUES (
                            1,
                            'example.com',
                            'example.com'
                        );


-- Table: socialaccount_socialaccount
DROP TABLE IF EXISTS socialaccount_socialaccount;

CREATE TABLE socialaccount_socialaccount (
    id          INTEGER       NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    provider    VARCHAR (30)  NOT NULL,
    uid         VARCHAR (191) NOT NULL,
    last_login  DATETIME      NOT NULL,
    date_joined DATETIME      NOT NULL,
    user_id     INTEGER       NOT NULL
                              REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    extra_data  TEXT          NOT NULL
);


-- Table: socialaccount_socialapp
DROP TABLE IF EXISTS socialaccount_socialapp;

CREATE TABLE socialaccount_socialapp (
    id        INTEGER       NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    provider  VARCHAR (30)  NOT NULL,
    name      VARCHAR (40)  NOT NULL,
    client_id VARCHAR (191) NOT NULL,
    [key]     VARCHAR (191) NOT NULL,
    secret    VARCHAR (191) NOT NULL
);


-- Table: socialaccount_socialapp_sites
DROP TABLE IF EXISTS socialaccount_socialapp_sites;

CREATE TABLE socialaccount_socialapp_sites (
    id           INTEGER NOT NULL
                         PRIMARY KEY AUTOINCREMENT,
    socialapp_id INTEGER NOT NULL
                         REFERENCES socialaccount_socialapp (id) DEFERRABLE INITIALLY DEFERRED,
    site_id      INTEGER NOT NULL
                         REFERENCES django_site (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: socialaccount_socialtoken
DROP TABLE IF EXISTS socialaccount_socialtoken;

CREATE TABLE socialaccount_socialtoken (
    id           INTEGER  NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    token        TEXT     NOT NULL,
    token_secret TEXT     NOT NULL,
    expires_at   DATETIME,
    account_id   INTEGER  NOT NULL
                          REFERENCES socialaccount_socialaccount (id) DEFERRABLE INITIALLY DEFERRED,
    app_id       INTEGER  NOT NULL
                          REFERENCES socialaccount_socialapp (id) DEFERRABLE INITIALLY DEFERRED
);


-- Index: account_emailaddress_user_id_2c513194
DROP INDEX IF EXISTS account_emailaddress_user_id_2c513194;

CREATE INDEX account_emailaddress_user_id_2c513194 ON account_emailaddress (
    "user_id"
);


-- Index: account_emailconfirmation_email_address_id_5b7f8c58
DROP INDEX IF EXISTS account_emailconfirmation_email_address_id_5b7f8c58;

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON account_emailconfirmation (
    "email_address_id"
);


-- Index: auth_group_permissions_group_id_b120cbf9
DROP INDEX IF EXISTS auth_group_permissions_group_id_b120cbf9;

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions (
    "group_id"
);


-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
DROP INDEX IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;

CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions (
    "group_id",
    "permission_id"
);


-- Index: auth_group_permissions_permission_id_84c5c92e
DROP INDEX IF EXISTS auth_group_permissions_permission_id_84c5c92e;

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions (
    "permission_id"
);


-- Index: auth_permission_content_type_id_2f476e4b
DROP INDEX IF EXISTS auth_permission_content_type_id_2f476e4b;

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission (
    "content_type_id"
);


-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
DROP INDEX IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;

CREATE UNIQUE INDEX auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission (
    "content_type_id",
    "codename"
);


-- Index: auth_user_groups_group_id_97559544
DROP INDEX IF EXISTS auth_user_groups_group_id_97559544;

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups (
    "group_id"
);


-- Index: auth_user_groups_user_id_6a12ed8b
DROP INDEX IF EXISTS auth_user_groups_user_id_6a12ed8b;

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups (
    "user_id"
);


-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
DROP INDEX IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;

CREATE UNIQUE INDEX auth_user_groups_user_id_group_id_94350c0c_uniq ON auth_user_groups (
    "user_id",
    "group_id"
);


-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
DROP INDEX IF EXISTS auth_user_user_permissions_permission_id_1fbb5f2c;

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions (
    "permission_id"
);


-- Index: auth_user_user_permissions_user_id_a95ead1b
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_a95ead1b;

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions (
    "user_id"
);


-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;

CREATE UNIQUE INDEX auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON auth_user_user_permissions (
    "user_id",
    "permission_id"
);


-- Index: core_address_user_id_7681a39c
DROP INDEX IF EXISTS core_address_user_id_7681a39c;

CREATE INDEX core_address_user_id_7681a39c ON core_address (
    "user_id"
);


-- Index: core_item_slug_07f502d0
DROP INDEX IF EXISTS core_item_slug_07f502d0;

CREATE INDEX core_item_slug_07f502d0 ON core_item (
    "slug"
);


-- Index: core_order_billing_address_id_b33cde99
DROP INDEX IF EXISTS core_order_billing_address_id_b33cde99;

CREATE INDEX core_order_billing_address_id_b33cde99 ON core_order (
    "billing_address_id"
);


-- Index: core_order_coupon_id_bade53ba
DROP INDEX IF EXISTS core_order_coupon_id_bade53ba;

CREATE INDEX core_order_coupon_id_bade53ba ON core_order (
    "coupon_id"
);


-- Index: core_order_items_order_id_c5dde6c1
DROP INDEX IF EXISTS core_order_items_order_id_c5dde6c1;

CREATE INDEX core_order_items_order_id_c5dde6c1 ON core_order_items (
    "order_id"
);


-- Index: core_order_items_order_id_orderitem_id_f9cea05f_uniq
DROP INDEX IF EXISTS core_order_items_order_id_orderitem_id_f9cea05f_uniq;

CREATE UNIQUE INDEX core_order_items_order_id_orderitem_id_f9cea05f_uniq ON core_order_items (
    "order_id",
    "orderitem_id"
);


-- Index: core_order_items_orderitem_id_e44f86b6
DROP INDEX IF EXISTS core_order_items_orderitem_id_e44f86b6;

CREATE INDEX core_order_items_orderitem_id_e44f86b6 ON core_order_items (
    "orderitem_id"
);


-- Index: core_order_payment_id_e5a26a3c
DROP INDEX IF EXISTS core_order_payment_id_e5a26a3c;

CREATE INDEX core_order_payment_id_e5a26a3c ON core_order (
    "payment_id"
);


-- Index: core_order_shipping_address_id_8c054f15
DROP INDEX IF EXISTS core_order_shipping_address_id_8c054f15;

CREATE INDEX core_order_shipping_address_id_8c054f15 ON core_order (
    "shipping_address_id"
);


-- Index: core_order_user_id_b03bbffd
DROP INDEX IF EXISTS core_order_user_id_b03bbffd;

CREATE INDEX core_order_user_id_b03bbffd ON core_order (
    "user_id"
);


-- Index: core_orderitem_item_id_3b7d0c2e
DROP INDEX IF EXISTS core_orderitem_item_id_3b7d0c2e;

CREATE INDEX core_orderitem_item_id_3b7d0c2e ON core_orderitem (
    "item_id"
);


-- Index: core_orderitem_user_id_323fe695
DROP INDEX IF EXISTS core_orderitem_user_id_323fe695;

CREATE INDEX core_orderitem_user_id_323fe695 ON core_orderitem (
    "user_id"
);


-- Index: core_payment_user_id_274e164a
DROP INDEX IF EXISTS core_payment_user_id_274e164a;

CREATE INDEX core_payment_user_id_274e164a ON core_payment (
    "user_id"
);


-- Index: core_refund_order_id_7fe621fa
DROP INDEX IF EXISTS core_refund_order_id_7fe621fa;

CREATE INDEX core_refund_order_id_7fe621fa ON core_refund (
    "order_id"
);


-- Index: django_admin_log_content_type_id_c4bce8eb
DROP INDEX IF EXISTS django_admin_log_content_type_id_c4bce8eb;

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log (
    "content_type_id"
);


-- Index: django_admin_log_user_id_c564eba6
DROP INDEX IF EXISTS django_admin_log_user_id_c564eba6;

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log (
    "user_id"
);


-- Index: django_content_type_app_label_model_76bd3d3b_uniq
DROP INDEX IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;

CREATE UNIQUE INDEX django_content_type_app_label_model_76bd3d3b_uniq ON django_content_type (
    "app_label",
    "model"
);


-- Index: django_session_expire_date_a5c62663
DROP INDEX IF EXISTS django_session_expire_date_a5c62663;

CREATE INDEX django_session_expire_date_a5c62663 ON django_session (
    "expire_date"
);


-- Index: socialaccount_socialaccount_provider_uid_fc810c6e_uniq
DROP INDEX IF EXISTS socialaccount_socialaccount_provider_uid_fc810c6e_uniq;

CREATE UNIQUE INDEX socialaccount_socialaccount_provider_uid_fc810c6e_uniq ON socialaccount_socialaccount (
    "provider",
    "uid"
);


-- Index: socialaccount_socialaccount_user_id_8146e70c
DROP INDEX IF EXISTS socialaccount_socialaccount_user_id_8146e70c;

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON socialaccount_socialaccount (
    "user_id"
);


-- Index: socialaccount_socialapp_sites_site_id_2579dee5
DROP INDEX IF EXISTS socialaccount_socialapp_sites_site_id_2579dee5;

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON socialaccount_socialapp_sites (
    "site_id"
);


-- Index: socialaccount_socialapp_sites_socialapp_id_97fb6e7d
DROP INDEX IF EXISTS socialaccount_socialapp_sites_socialapp_id_97fb6e7d;

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON socialaccount_socialapp_sites (
    "socialapp_id"
);


-- Index: socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq
DROP INDEX IF EXISTS socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq;

CREATE UNIQUE INDEX socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq ON socialaccount_socialapp_sites (
    "socialapp_id",
    "site_id"
);


-- Index: socialaccount_socialtoken_account_id_951f210e
DROP INDEX IF EXISTS socialaccount_socialtoken_account_id_951f210e;

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON socialaccount_socialtoken (
    "account_id"
);


-- Index: socialaccount_socialtoken_app_id_636a42d7
DROP INDEX IF EXISTS socialaccount_socialtoken_app_id_636a42d7;

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON socialaccount_socialtoken (
    "app_id"
);


-- Index: socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq
DROP INDEX IF EXISTS socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;

CREATE UNIQUE INDEX socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq ON socialaccount_socialtoken (
    "app_id",
    "account_id"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
