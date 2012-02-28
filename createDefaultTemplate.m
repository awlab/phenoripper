%Create the default template list
function templates=createDefaultTemplate()
  templates=[];
  templates{1}=MyTemplate('A1/xxxxxxxx__SEPARATOR__1.__EXTENSION__','(?<Row>[A-Z]*)(?<Column>[0-9]{1,2})\/\S*(?<Separator>__SEPARATOR__)(?<Channel>\S*)(?<Extension>.__EXTENSION__)$');
  templates{1}.Description='Template which can detect Well directory, Row, Column and ChannelNumber based on the folder name following this convention:%s[Row][Column]\xxxx[channel sep][ChannelNumber].[file ext]%s (e.g. A1\img-2.tiff).%sSupport Single channel Image only.';
  templates{2}=MyTemplate('c1-r2-xxxxxxxx__SEPARATOR__1.__EXTENSION__','c(?<Row>[1-9])-r(?<Column>[0-9]{1,2})-\S*(?<Separator>__SEPARATOR__)(?<Channel>\S*)(?<Extension>.__EXTENSION__)$');
  templates{2}.Description='Template which can detect Row, Column and ChannelNumber based on the file name following this convention:%sc[Column]-r[Row]-xxxx[channel sep][ChannelNumber].[file ext]%s (e.g. c1-r3-img-2.tiff).%sSupport Single channel Image only.';
  templates{3}=MyTemplate('w1-xxxxxxxx__SEPARATOR__dapi.__EXTENSION__','w(?<Well>[0-9]{1,2})-\S*(?<Separator>__SEPARATOR__)(?<Channel>\S*)(?<Extension>.__EXTENSION__)$');
  templates{3}.Description='Template which can detect Well and ChannelNumber based on the file name following this convention:%sw[Well Number]-xxxx[channel sep][Channel].[file ext]%s (e.g. w12-img-dapi.tiff).%sSupport Single channel Image only.';
  templates{4}=MyTemplate('Well A03/Alexa 488 - n000000.__EXTENSION__','Well (?<Row>[A-Z]*)(?<Column>[0-9]{1,2})\/(?<Channel>.*)(?<Separator> - )\S*(?<Extension>.__EXTENSION__)$');
  templates{4}.Description='Standard BD Template which can detect Well directory, Row, Column and ChannelNumber based on the file name following this convention:%sWell [Row][Column]/[Channel] - xxxx.[file ext]%s (e.g. Well A03/Alexa 488 - n000000.tiff).%sSupport Single channel Image only.';
  templates{5}=MyTemplate('HT01/HT01A004/image_1.__EXTENSION__','\S*\/HT(?<Plate>[0-9]*)(?<Row>[A-Z]*)(?<Column>[0-9]*)\/\S*_(?<ImgNum>[0-4]*)(?<Extension>.__EXTENSION__)$',true);
  templates{5}.Description='Template which can detect PlateNumber, Row, Column, ImageNumber and ChannelNumber based on folder and file name following this convention:%sxxxx/HT[PlateNumber]/[Row][Column]/xxx[ImageNumber].[file ext]%s (e.g.HT01/HT01A004/image_1.jpg).%sSupport Multi channel Image only.';
  save('default-templates_unix.mat','templates');
  
  
  templates=[];
  templates{1}=MyTemplate('A1\xxxxxxxx__SEPARATOR__1.__EXTENSION__','(?<Row>[A-Z]*)(?<Column>[0-9]{1,2})\\\S*(?<Separator>__SEPARATOR__)(?<Channel>\S*)(?<Extension>.__EXTENSION__)$');
  templates{1}.Description='Well format template which can detect directory, row and column based on the folder name following this convention: [Row][Column]/xxxx[channel sep][channel number].[file ext.] (e.g. A1/imageName-2.tiff). Support Single channel Image only.';
  templates{2}=MyTemplate('c1-r2-xxxxxxxx__SEPARATOR__1.__EXTENSION__','c(?<Row>[1-9])-r(?<Column>[0-9]{1,2})-\S*(?<Separator>__SEPARATOR__)(?<Channel>\S*)(?<Extension>.__EXTENSION__)$');
  templates{3}=MyTemplate('w1-xxxxxxxx__SEPARATOR__dapi.__EXTENSION__','w(?<Well>[0-9]{1,2})-\S*(?<Separator>__SEPARATOR__)(?<Channel>\S*)(?<Extension>.__EXTENSION__)$');
  templates{4}=MyTemplate('Well A03\Alexa 488 - n000000.__EXTENSION__','Well (?<Row>[A-Z]*)(?<Column>[0-9]{1,2})\\(?<Channel>.*)(?<Separator> - )\S*(?<Extension>.__EXTENSION__)$');
  templates{5}=MyTemplate('HT01\HT01A004\image_1.__EXTENSION__','\S*\/HT(?<Plate>[0-9]*)(?<Row>[A-Z]*)(?<Column>[0-9]*)\\\S*_(?<ImgNum>[0-4]*)(?<Extension>.__EXTENSION__)$',true);
templates{1}.Description='Template which can detect Well directory, Row, Column and ChannelNumber based on the folder name following this convention:%s[Row][Column]\xxxx[channel sep][ChannelNumber].[file ext]%s (e.g. A1\img-2.tiff).%sSupport Single channel Image only.';
templates{2}.Description='Template which can detect Row, Column and ChannelNumber based on the file name following this convention:%sc[Column]-r[Row]-xxxx[channel sep][ChannelNumber].[file ext]%s (e.g. c1-r3-img-2.tiff).%sSupport Single channel Image only.';
templates{3}.Description='Template which can detect Well and ChannelNumber based on the file name following this convention:%sw[Well Number]-xxxx[channel sep][Channel].[file ext]%s (e.g. w12-img-dapi.tiff).%sSupport Single channel Image only.';
templates{4}.Description='Standard BD Template which can detect Well directory, Row, Column and ChannelNumber based on the file name following this convention:%sWell [Row][Column]/[Channel] - xxxx.[file ext]%s (e.g. Well A03/Alexa 488 - n000000.tiff).%sSupport Single channel Image only.';
templates{5}.Description='Template which can detect PlateNumber, Row, Column, ImageNumber and ChannelNumber based on folder and file name following this convention:%sxxxx/HT[PlateNumber]/[Row][Column]/xxx[ImageNumber].[file ext]%s (e.g.HT01/HT01A004/image_1.jpg).%sSupport Multi channel Image only.';
save('default-templates_windows.mat','templates');
end
