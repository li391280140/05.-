//注意：需要引入libz.dylib框架
// 解压缩
NSString *zipPath = @"path_to_your_zip_file";
NSString *destinationPath = @"path_to_the_folder_where_you_want_it_unzipped";
[SSZipArchive unzipFileAtPath:zipPath toDestination:destinationPath];

// 压缩
NSString *zippedPath = @"path_where_you_want_the_file_created";
NSArray *inputPaths = [NSArray arrayWithObjects:
                       [[NSBundle mainBundle] pathForResource:@"photo1" ofType:@"jpg"],
                       [[NSBundle mainBundle] pathForResource:@"photo2" ofType:@"jpg"]
                       nil];
[SSZipArchive createZipFileAtPath:zippedPath withFilesAtPaths:inputPaths];
