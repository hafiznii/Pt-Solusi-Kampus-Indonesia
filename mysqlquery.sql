CREATE TABLE tb_mahasiswa (
    mhs_id int NOT NULL,
    mhs_nim int(100),
    mhs_nama varchar(100),
    mhs_angkatan int(100),
    PRIMARY KEY (mhs_id)
);

INSERT INTO tb_mahasiswa (mhs_id, mhs_nim, mhs_nama, mhs_angkatan)
VALUES 
(1, 20180001, 'Jono', 2018),
(2, 20180002, 'Taufik', 2018),
(3, 20180003, 'Maria', 2018),
(4, 20180004, 'Sari', 2018),
(5, 20180005, 'Bambang', 2018);

CREATE TABLE tb_mahasiswa_nilai (
    mhs_nilai_id int NOT NULL,
    mhs_id int,
    mk_id int,
    nilai int,
    PRIMARY KEY (mhs_nilai_id)
);

INSERT INTO tb_mahasiswa_nilai (mhs_nilai_id, mhs_id, mk_id, nilai)
VALUES 
(1, 1, 1, 70),
(2, 1, 2, 76),
(3, 2, 1, 82),
(4, 2, 2, 74),
(5, 4, 1, 78),
(6, 4, 2, 80),
(7, 5, 1, 60);

CREATE TABLE tb_matakuliah (
    mk_id int NOT NULL,
    mk_kode varchar(100),
    mk_sks int,
    mk_nama varchar(100),
    PRIMARY KEY (mk_id)
);

INSERT INTO tb_matakuliah  (mk_id, mk_kode, mk_sks, mk_nama)
VALUES 
(1, "MK202", 3, "OOP"),
(2, "MK303", 2, "Basis Data");



SELECT 
	mhs_nama
FROM
	tb_mahasiswa MHS
    INNER JOIN tb_mahasiswa_nilai MHS_NL ON MHS_NL.MHS_ID = MHS.MHS_ID
    INNER JOIN tb_matakuliah MK ON MK.MK_ID = MHS_NL.MK_ID
    
WHERE 
	MK.MK_KODE = 'MK303'
AND MHS_NL.NILAI = (SELECT MAX(NILAI) FROM tb_mahasiswa_nilai NL
				INNER JOIN  tb_matakuliah MK ON MK.MK_ID = NL.MK_ID
                WHERE MK_KODE = 'MK303')
