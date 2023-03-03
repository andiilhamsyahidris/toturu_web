const item = <Item>[
  Item(
    id: 1,
    imageAsset: 'atletik.jpg',
    title: 'Atletik',
    subtitle: 'Mari belajar atletik dengan cara yang menyenangkan',
    materi:
        'Atletik adalah cabang olahraga yang terdiri dari gabungan beberapa jenis olahraga fisik, seperti olahraga lari, lempar, lompat, dan jalan',
  ),
  Item(
    id: 2,
    imageAsset: 'bulutangkis.jpg',
    title: 'Bulutangkis',
    subtitle: 'Mari belajar bulutangkis dengan cara yang menyenangkan',
    materi:
        'Badminton adalah olahraga dengan menggunakan raket yang dimainkan oleh dua orang untuk tunggal atau dua pasangan untuk ganda yang mengambil posisi berlawanan dilapangan yang dibagi dua dan dibatasi oleh jaring',
  ),
  Item(
    id: 3,
    imageAsset: 'renang.jpg',
    title: 'Renang',
    subtitle: 'Mari belajar renang dengan cara yang menyenangkan',
    materi:
        'Renang adalah salah satu olahraga di cabang akuatik yang sangat populer dimana gerakannya murni dilakukan di dalam air dan membutuhkan koordinasi gerak hampir seluruh bagian tubuh.',
  ),
  Item(
    id: 4,
    imageAsset: 'senam.jpg',
    title: 'Senam',
    subtitle: 'Mari belajar senam dengan cara yang menyenangkan',
    materi:
        'Senam adalah suatu olahraga yang dilakukan dengan menggerakan tubuh dengan gerakan tertentu dan sudah dipilih dengan seksama.',
  ),
  Item(
    id: 5,
    imageAsset: 'narkoba.jpg',
    title: 'Bahaya Narkoba',
    subtitle: 'Mari belajar bahaya narkoba dengan cara yang menyenangkan',
    materi:
        'Narkoba singkatan dari Narkotika, Psikotropika dan Bahan Adiktif berbahaya lainnya adalah bahan/zat yang jika dimasukan dalam tubuh manusia, baik secara oral/diminum, dihirup, maupun disuntikan, dapat mengubah pikiran, suasana hati atau perasaan, dan perilaku seseorang.',
  ),
  Item(
    id: 6,
    imageAsset: 'sehat.jpg',
    title: 'Hidup Sehat',
    subtitle: 'Mari belajar pola hidup sehat dengan cara yang menyenangkan',
    materi:
        'Pola hidup sehat adalah gaya hidup yang memerhatikan semua aspek kondisi kesehatan seseorang. Tak hanya soal makanan, tapi juga kebiasaan orang itu dalam menjalani gaya hidup.',
  ),
];
const videoAtletik = <VideoAtletik>[
  VideoAtletik(
    videoAwal: 'atletik_awal.mp4',
    videoSempurna: 'atletik_sempurna.mp4',
  ),
];

class Item {
  final String imageAsset;
  final String title;
  final String subtitle;
  final String materi;
  final int id;
  final String? document;

  const Item({
    required this.id,
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    required this.materi,
    this.document,
  });
}

class VideoAtletik {
  final String? videoAwal;
  final String? videoSempurna;

  const VideoAtletik({
    this.videoAwal,
    this.videoSempurna,
  });
}
