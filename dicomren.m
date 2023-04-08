function dicomren(dicomfolder,newID)
currentFolder = pwd;
dicomfolder=char(dicomfolder);
newID=char(newID);
% dicomfolder ='dcms';
% newID='210012';
fullDcmFolder = fullfile(currentFolder, dicomfolder);
foldertmp=[];
lastfolder=[];
foldertmp(end+1).name=fullDcmFolder;%写入堆栈
foldertmp(end).flag=0;%标记

lastfolder(end+1).name=fullDcmFolder;
foldertmp=findfolder(foldertmp,lastfolder);
 persistent fig;
for i=1:length(foldertmp)

 fig=waitbar(0,"匿名系统正在启动，请等待!");
 msg=sprintf("正在处理第%d个文件夹/共%d个文件夹\n",i,length(foldertmp));
 waitbar(0,fig,msg);

rename(foldertmp(i).name,newID,fig);
end
 msg=sprintf("已完成");
 waitbar(1,msg);

end