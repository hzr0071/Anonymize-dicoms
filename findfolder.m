function foldertmp=findfolder(foldertmp,lastfolder)
fullDcmFolder=lastfolder(end).name;
fFiles = dir(fullDcmFolder);

for i=3:length(fFiles)
    if fFiles(i).isdir==1
    fullDcmFolder=fullfile(fullDcmFolder,fFiles(i).name);
    foldertmp(end+1).name=fullDcmFolder;
    foldertmp(end).flag=0;

    lastfolder(end+1).name=fullDcmFolder;

    foldertmp=findfolder(foldertmp,lastfolder);
    lastfolder(end)=[];
    fullDcmFolder=lastfolder(end).name;
    end

end


end