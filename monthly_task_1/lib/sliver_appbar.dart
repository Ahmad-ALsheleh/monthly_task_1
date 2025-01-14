import 'package:flutter/material.dart';

import 'Widget/date_picker_widget.dart';
import 'Widget/page_view_widget.dart';
import 'Widget/range_slider_widget.dart';
import 'Widget/slider_widget.dart';
import 'Widget/time_picker_widget.dart';
import 'add_image.dart';




// شاشة SliverAppBar مع أزرار التنقل
class SliverAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Sliver AppBar'),
            snap: true,
            floating: true,
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/my_photo.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimePickerWidget()),
                    );
                  },
                  child: Text('انتقل إلى اختيار الوقت'),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DatePickerWidget()),
                    );
                  },
                  child: Text('انتقل إلى اختيار التاريخ'),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SliderWidget()),
                    );
                  },
                  child: Text('انتقل إلى Slider'),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RangeSliderWidget()),
                    );
                  },
                  child: Text('انتقل إلى Range Slider'),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageViewWidget()),
                    );
                  },
                  child: Text('انتقل إلى PageView'),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddImage()),
                    );
                  },
                  child: Text('انتقل إلى add image'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
