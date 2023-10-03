function doGet(){
    var sheet=SpreadsheetApp.openById("18JemTwi9EIpDJKTdIjw-npaggOQ3lij9b1eOuJVwHb");
    var values=sheet.getActiveSheet().getvalues;
    var data=[];
    for(i=1;i<values.length;i++){
var row=values[i];
var feedback={};
feedback['year']=row[0];
feedback['name']=row[1];
feedback['event']=row[2];
feedback['city']=row[3];
data.push(feedback);
}
return ContentService.createTextOutput(JSON.stringify(data)).setMimeType(ContentService.MimeType.JSON);


}