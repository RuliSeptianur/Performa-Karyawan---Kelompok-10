<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>ContentFilters</key>
	<dict/>
	<key>auto_connect</key>
	<true/>
	<key>data</key>
	<dict>
		<key>connection</key>
		<dict>
			<key>allowDataLocalInfile</key>
			<integer>0</integer>
			<key>database</key>
			<string>Perancangan_Data_SBU</string>
			<key>enableClearTextPlugin</key>
			<integer>0</integer>
			<key>host</key>
			<string>127.0.0.1</string>
			<key>name</key>
			<string>root@127.0.0.1</string>
			<key>rdbms_type</key>
			<string>mysql</string>
			<key>sslCACertFileLocation</key>
			<string></string>
			<key>sslCACertFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslCertificateFileLocation</key>
			<string></string>
			<key>sslCertificateFileLocationEnabled</key>
			<integer>0</integer>
			<key>sslKeyFileLocation</key>
			<string></string>
			<key>sslKeyFileLocationEnabled</key>
			<integer>0</integer>
			<key>type</key>
			<string>SPTCPIPConnection</string>
			<key>useSSL</key>
			<integer>0</integer>
			<key>user</key>
			<string>root</string>
		</dict>
		<key>session</key>
		<dict>
			<key>connectionEncoding</key>
			<string>utf8mb4</string>
			<key>contentFilterV2</key>
			<dict>
				<key>children</key>
				<array/>
				<key>filterClass</key>
				<string>groupNode</string>
				<key>isConjunction</key>
				<true/>
			</dict>
			<key>contentPageNumber</key>
			<integer>1</integer>
			<key>contentSelection</key>
			<data>
			YnBsaXN0MDDUAQIDBAUGBwpYJHZlcnNpb25ZJGFyY2hpdmVyVCR0
			b3BYJG9iamVjdHMSAAGGoF8QD05TS2V5ZWRBcmNoaXZlctEICVRk
			YXRhgAGuCwwZGhscHSEoLTE1ODxVJG51bGzTDQ4PEBQYV05TLmtl
			eXNaTlMub2JqZWN0c1YkY2xhc3OjERITgAKAA4AEoxUWF4AFgAaA
			CIANVHR5cGVUcm93c1RrZXlzXxAmU2VsZWN0aW9uRGV0YWlsVHlw
			ZVByaW1hcnlLZXllZERldGFpbHPTDQ4PHh8goKCAB9IiIyQlWiRj
			bGFzc25hbWVYJGNsYXNzZXNfEBNOU011dGFibGVEaWN0aW9uYXJ5
			oyQmJ1xOU0RpY3Rpb25hcnlYTlNPYmplY3TSDg8pLKIqK4AJgAuA
			DNIPLi8wWU5TLnN0cmluZ4AKXxAQTGV2ZWxfS29tcGV0ZW5zadIi
			IzIzXxAPTlNNdXRhYmxlU3RyaW5nozI0J1hOU1N0cmluZ9IPLi83
			gApfEA9Lb2RlX0tvbXBldGVuc2nSIiM5Ol5OU011dGFibGVBcnJh
			eaM5OydXTlNBcnJhedIiIyY9oiYnAAgAEQAaACQAKQAyADcASQBM
			AFEAUwBiAGgAbwB3AIIAiQCNAI8AkQCTAJcAmQCbAJ0AnwCkAKkA
			rgDXAN4A3wDgAOIA5wDyAPsBEQEVASIBKwEwATMBNQE3ATkBPgFI
			AUoBXQFiAXQBeAGBAYYBiAGaAZ8BrgGyAboBvwAAAAAAAAIBAAAA
			AAAAAD4AAAAAAAAAAAAAAAAAAAHC
			</data>
			<key>contentSortColIsAsc</key>
			<true/>
			<key>contentViewport</key>
			<string>{{0, 0}, {693, 473}}</string>
			<key>isToolbarVisible</key>
			<true/>
			<key>queries</key>
			<string>
/* SOAL QUERY SEDERHANA
1. Manajemen membutuhkan data karyawan tingkat manajerial untuk persiapan agenda leadership training. Tampilkan NIK, Nama_Karyawan, Jabatan, dan Tgl_Masuk dari tabel Karyawan yang memiliki jabatan 'Manager'. Urutkan hasil berdasarkan Tgl_Masuk dari yang paling lama. */

SELECT NIK, Nama_Karyawan, Jabatan, Tgl_Masuk 
FROM Karyawan 
WHERE Jabatan = 'Manager'
ORDER BY Tgl_Masuk ASC;

/* 
2. Tampilkan daftar karyawan yang memiliki jabatan sebagai 'Staff' 
dan diurutkan berdasarkan tanggal masuk (Tgl_Masuk) dari yang paling lama ke yang paling baru.*/

SELECT NIK, Nama_Karyawan, Jabatan, Tgl_Masuk, Email
FROM Karyawan
WHERE Jabatan = 'Staff'
ORDER BY Tgl_Masuk ASC;

/* 
3. Manajemen SBU sedang melakukan audit internal untuk mendata ulang aset komunikasi perusahaan. 
Tolong tampilkan daftar seluruh karyawan yang saat ini memegang jabatan sebagai 'Manager'. 
Informasi yang dibutuhkan oleh manajemen hanyalah NIK, Nama Karyawan, Jabatan, dan Email mereka.
Tampilkan kolom NIK, Nama_Karyawan, Jabatan, dan Email dari tabel Karyawan 
yang memiliki Jabatan sama dengan 'Manager'!. */

SELECT NIK, Nama_Karyawan, Jabatan, Email 
FROM Karyawan 
WHERE Jabatan = 'Manager';



/* SOAL QUERY MULTI-TABLE
1. Tim Auditor ingin melihat sebaran divisi operasional yang aktif di bawah setiap unit bisnis (Strategic Business Unit). Gabungkan tabel SBU dan Divisi. Tampilkan kolom ID_SBU, Nama_SBU, Fokus_Pasar, dan Nama_Divisi. Urutkan hasil berdasarkan ID_SBU secara alfabetis. */


SELECT 
    s.ID_SBU, 
    s.Nama_SBU, 
    s.Fokus_Pasar, 
    d.Nama_Divisi
FROM SBU s
JOIN Divisi d ON s.ID_SBU = d.ID_SBU
ORDER BY s.ID_SBU ASC;

/* 
2. Tampilkan daftar kompetensi perilaku spesifik yang dimiliki oleh karyawan. 
Tampilkan Nama_Karyawan, Nama_Divisi, Nama_Kompetensi, dan Perilaku_Kunci (Melibatkan tabel Karyawan, Divisi, Kompetensi, dan Soft_Kompetensi).*/

SELECT 
    k.Nama_Karyawan, 
    d.Nama_Divisi, 
    kom.Nama_Kompetensi, 
    sk.Perilaku_Kunci
FROM Karyawan k
JOIN Divisi d ON k.ID_Divisi = d.ID_divisi
JOIN Performa_Review pr ON k.NIK = pr.NIK
JOIN Kompetensi kom ON pr.Kode_Kompetensi = kom.Kode_Kompetensi
JOIN Soft_Kompetensi sk ON kom.Kode_Kompetensi = sk.Kode_Kompetensi;

/* 
3. Direksi perusahaan ingin melihat pemetaan penempatan SDM beserta fokus bisnis yang mereka jalankan. Hubungkan data yang ada untuk menampilkan Nama Karyawan, Jabatan mereka, Nama Divisi tempat mereka bernaung, serta Nama SBU yang menaungi divisi tersebut beserta Fokus Pasar dari SBU-nya. Lakukan JOIN pada tabel Karyawan, Divisi, dan SBU untuk menampilkan kolom Nama_Karyawan, Jabatan, Nama_Divisi, Nama_SBU, dan Fokus_Pasar! */

SELECT 
    k.Nama_Karyawan, 
    k.Jabatan, 
    d.Nama_Divisi, 
    s.Nama_SBU, 
    s.Fokus_Pasar
FROM Karyawan k
JOIN Divisi d ON k.ID_Divisi = d.ID_divisi
JOIN SBU s ON d.ID_SBU = s.ID_SBU;



/* SOAL QUERY KOMPLEKS
1. Direksi ingin memberikan insentif bagi divisi yang kerja timnya solid dengan rata-rata skor performa di atas 90.00 pada periode 'Semester 1 2026'. Gabungkan tabel Divisi, Karyawan, dan Performa_Review. Tampilkan ID_divisi dan Nama_Divisi. Hitung rata-rata skor capaiannya (beri nama alias Rata_Rata_Skor dengan pembulatan 2 angka desimal) beserta total penilaiannya (beri nama alias Jumlah_Penilaian). Filter hanya untuk periode 'Semester 1 2026' dan divisi yang memiliki Rata_Rata_Skor di atas 90.00, lalu urutkan dari skor tertinggi. */

SELECT 
    d.ID_divisi,
    d.Nama_Divisi, 
    ROUND(AVG(pr.Skor_Capaian), 2) AS Rata_Rata_Skor,
    COUNT(pr.ID_Review) AS Jumlah_Penilaian
FROM Divisi d
JOIN Karyawan k ON d.ID_divisi = k.ID_Divisi
JOIN Performa_Review pr ON k.NIK = pr.NIK
WHERE pr.Periode = 'Semester 1 2026'
GROUP BY d.ID_divisi, d.Nama_Divisi
HAVING AVG(pr.Skor_Capaian) &gt; 90.00
ORDER BY Rata_Rata_Skor DESC; 

/* 
2. Tim Human Resource (HR) ingin memberikan apresiasi berupa pelatihan khusus bagi karyawan 
yang menunjukkan performa luar biasa. Cari tahu siapa saja karyawan yang berhasil mendapatkan 
Skor Capaian di atas rata-rata skor review perusahaan pada periode 'Semester 1 2026'. Tampilkan data berupa NIK, ID Review, dan Skor Capaian mereka. Tampilkan ID_Review, NIK, dan Skor_Capaian dari tabel Performa_Review di mana Skor_Capaian-nya lebih besar dari rata-rata (AVG) Skor_Capaian 
pada Periode 'Semester 1 2026'!
*/

SELECT ID_Review, NIK, Skor_Capaian 
FROM Performa_Review 
WHERE Skor_Capaian &gt; (
    SELECT AVG(Skor_Capaian) 
    FROM Performa_Review 
    WHERE Periode = 'Semester 1 2026'
) AND Periode = 'Semester 1 2026';

/* 
3. Tampilkan daftar nama divisi (Nama_Divisi) beserta jumlah karyawan yang bekerja di masing-masing divisi tersebut, 
namun hanya untuk divisi yang berada di bawah SBU bernama 'SBU Digital Solutions' (gunakan subquery untuk mencari ID_SBU-nya).*/

SELECT NIK, Nama_Karyawan, Jabatan, Tgl_Masuk
FROM Karyawan
WHERE Tgl_Masuk = (
    SELECT MIN(Tgl_Masuk) 
    FROM Karyawan
);

/* 
4. Tampilkan data divisi (ID_divisi dan Nama_Divisi) yang mencatatkan rata-rata skor capaian performa karyawan paling tinggi dalam mengelola target pasar mereka.*/
SELECT ID_divisi, Nama_Divisi
FROM Divisi
WHERE ID_divisi = (
    SELECT k.ID_Divisi
    FROM Performa_Review pr
    JOIN Karyawan k ON pr.NIK = k.NIK
    GROUP BY k.ID_Divisi
    ORDER BY AVG(pr.Skor_Capaian) DESC
    LIMIT 1
);


</string>
			<key>table</key>
			<string>Soft_Kompetensi</string>
			<key>view</key>
			<string>SP_VIEW_CUSTOMQUERY</string>
			<key>windowVerticalDividerPosition</key>
			<real>214</real>
		</dict>
	</dict>
	<key>encrypted</key>
	<false/>
	<key>format</key>
	<string>connection</string>
	<key>queryFavorites</key>
	<array/>
	<key>rdbms_type</key>
	<string>mysql</string>
	<key>rdbms_version</key>
	<string>9.7.0</string>
	<key>version</key>
	<integer>1</integer>
</dict>
</plist>
