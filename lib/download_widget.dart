import 'package:flutter/material.dart';
import 'package:flutter_download_file_dio/progress.dart';
import 'package:provider/provider.dart';

class DownloadWidget extends StatelessWidget {
  final String url = 'https://file-examples-com.github.io/uploads/2017/10/file-sample_150kB.pdf';
  const DownloadWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<DownloadProgress>(
        builder: (context, status, _) {
          var progress = status.progress.toStringAsFixed(1);

          return ElevatedButton(
            child: Text('$progress %'),
            onPressed: () => status.start(url: url,
                localPath: 'file_p2.pdf'),
          );
        },
      ),
    );
  }
}
