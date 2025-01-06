CREATE TABLE rougga_gbl_table (
    id VARCHAR(255) primary key,
    id_service VARCHAR(255) not null,
    service_name VARCHAR(255) not null,
    nb_t bigint default 0,
    nb_tt bigint DEFAULT 0,
    nb_a bigint DEFAULT 0,
    nb_tl1 bigint DEFAULT 0,
    nb_sa bigint DEFAULT 0,
    perApT DECIMAL(6, 3) DEFAULT 00.00,
    PERTL1pt DECIMAL(6, 3) DEFAULT 00.00,
    perSApT DECIMAL(6, 3) DEFAULT 00.00,
    avgSec_A numeric default 0,
    nb_ca bigint default 0,
    percapt DECIMAL(6, 3) DEFAULT 00.00,
    avgSec_T numeric default 0,
    nb_ct bigint default 0,
    perctpt DECIMAL(6, 3) DEFAULT 00.00,
    date timestamp default now(),
    id_agence varchar(40) references agence(id) on delete cascade not null
);