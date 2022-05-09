import 'package:elmawkef_inc/app/views/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends GetResponsiveView {
  @override
  Widget? phone() {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screen.height * 0.09),
        child: AppBar(
          title: SizedBox(
            height: screen.height * 0.065,
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: 'Find What You need  Here'.tr,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 12, right: 12, top: 16),
        child: Card(
          elevation: 1,
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                child: SectionTitle(
                  text: 'All Services'.tr,
                  alignment: MainAxisAlignment.start,
                ),
              ),
              SizedBox(
                height: screen.height,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 48,
                        ),
                        title: Text("Ac Regular Services"),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Price 120dh"),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellowAccent.shade400,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '4.8',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        isThreeLine: true,
                        onTap: () {},
                      );
                    },
                    itemCount: 15,
                    separatorBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Divider(
                          color: Colors.blueGrey.shade900,
                          thickness: 1.2,
                          indent: screen.width * 0.1,
                          endIndent: screen.width * 0.08,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
