function rename(dicomfolder,newID,fig)

fullDcmFolder = dicomfolder;
dcmFiles = dir(fullfile(fullDcmFolder, '*.dcm'));

fulloutFolder=fullDcmFolder;

for i = 1:length(dcmFiles)
    % 读取DICOM文件
%     fprintf("正在处理第%d张/共%d张",i,length(dcmFiles));
    % Read mini-batch of data.
    waitbar(i/length(dcmFiles),fig);
    info = dicominfo(fullfile(dcmFiles(1).folder,dcmFiles(i).name));
    info.InstitutionName='**';
    info.InstitutionAddress='**';
    info.StudyDescription=[];
    info.PatientID=newID;
    info.PatientName=newID;
    info.PerformedProcedureStepDescription=[];
    data=dicomread(fullfile(dcmFiles(1).folder,dcmFiles(i).name));
    dicomwrite(data,fullfile(fulloutFolder,dcmFiles(i).name),info);

end
 close(fig);
end