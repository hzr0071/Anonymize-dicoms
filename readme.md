# the exe use matlab runtime 2022a
use exe in cmd like
dicomren.exe foldername newID
this program will change patient name&ID with newID
the dcms can be at subfolder
the files must have extension .dcm
dicom文件重命名小程序，dcm文件可以再子文件夹，无需拷贝到根目录
文件必须拥有.dcm的后缀，否者不能正常识别
如果没有.dcm后缀，可以先试用 ren *.* *.dcm进行批量重命名

![image](https://github.com/hzr0071/Anonymize-dicoms/blob/main/dcmfolder/%E6%89%B9%E6%B3%A8%202023-04-11%20100037.png)

如果使用exe程序需要matlab runtime 2022a
