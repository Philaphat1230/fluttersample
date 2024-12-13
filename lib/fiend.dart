import 'package:flutter/material.dart';

class Friend extends StatelessWidget {
  const Friend({super.key});

  @override
  Widget build(BuildContext context) {
    var friends = [
      {
        'name': 'ธนดล สิงเถื่อน',
        'height': '175 cm',
        'weight': '70 kg',
        'hobby': 'ขับไรเดอร์',
        'Nickname': 'ก็อต',
        'image':
            'https://scontent.xx.fbcdn.net/v/t1.15752-9/462536128_547384024497577_120530863017328833_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=0024fc&_nc_ohc=58kmvvbYrHYQ7kNvgFEE1Pb&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1QFxGDL_dA3XXRPVd3lOCzHlQlE9tbA7_rt6DRnt39LCWw&oe=678339E8', // URL รูปภาพ
      },
      {
        'name': 'ชาคริต อสังกรุณา',
        'height': '180 cm',
        'weight': '75 kg',
        'hobby': 'เล่นเกม',
        'Nickname': 'บลู',
        'image':
            'https://scontent.xx.fbcdn.net/v/t1.15752-9/462521752_950448456911613_2354426506835136001_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=0024fc&_nc_ohc=szyILlG2jNsQ7kNvgEuIu_o&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1QGzsk1mlqL244A2_5pD0Cs0zwpcZqmDzBo6MpyI5YuI_A&oe=67834008', // URL รูปภาพ
      },
      {
        'name': 'ภวัต วรรณตรง',
        'height': '165 cm',
        'weight': '45 kg',
        'hobby': 'ดูบอล',
        'Nickname': 'เปา',
        'image':
            'https://scontent.fbkk28-1.fna.fbcdn.net/v/t39.30808-6/450868196_3541055626185832_8226514074285381976_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=D4IY2nH9DE4Q7kNvgGhVepV&_nc_zt=23&_nc_ht=scontent.fbkk28-1.fna&_nc_gid=AW-31G4qBe6aOJEWb9UUjJ2&oh=00_AYCDKhQYshAZGU7pc24s10UIIoRXyV-oXDexm8AufKIiWw&oe=6761D5E2', // URL รูปภาพ
      },
      {
        'name': 'บัณฑิต ทองประเสริฐ',
        'height': '165 cm',
        'weight': '80 kg',
        'hobby': 'เต้นหมูเด้ง',
        'Nickname': 'เซฟ',
        'image':
            'https://scontent.fbkk28-1.fna.fbcdn.net/v/t39.30808-6/371909528_1709575916131280_5876592852263117297_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=oLbaM_zGa-UQ7kNvgEiJK3i&_nc_zt=23&_nc_ht=scontent.fbkk28-1.fna&_nc_gid=AzcGcmXxzh_hRHKcojSpFwO&oh=00_AYAKYslY2hRGf_0llYTh0a5qJ1CIDZ4Z2VisFEU6n32DTg&oe=6761C3ED', // URL รูปภาพ
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Friend'),
          centerTitle: true,
        ),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          itemCount: friends.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(
                  color: Colors.blueGrey,
                  width: 1,
                ),
              ),
              child: ListTile(
                leading: const Icon(Icons.person, size: 40), // ไอคอนคน
                iconColor: Colors.deepPurple, // สีของไอคอน
                title: Text(friends[index]['name']!),
                subtitle: Text('ชื่อเล่น: ${friends[index]['Nickname']}'),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () => _showFriendDetails(
                      context, friends[index]), // เมื่อกดลูกศรแสดง dialog
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ฟังก์ชันสำหรับแสดง AlertDialog พร้อมรูปและข้อมูลเพื่อน
  void _showFriendDetails(BuildContext context, Map<String, String> friend) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(friend['name']!), // ชื่อเพื่อนในหัวข้อ
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50, // ขนาดของรูปใน AlertDialog
              backgroundImage: NetworkImage(friend['image']!), // โหลดรูปจาก URL
            ),
            const SizedBox(height: 10),
            Text('ส่วนสูง: ${friend['height']}'),
            Text('น้ำหนัก: ${friend['weight']}'),
            Text('สิ่งที่ชอบ: ${friend['hobby']}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), // ปิด dialog
            child: const Text('ปิด'),
          ),
        ],
      ),
    );
  }
}
