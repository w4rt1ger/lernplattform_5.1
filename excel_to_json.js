// installiere zuerst die Abhängigkeit: npm install xlsx
const XLSX = require('xlsx');
const fs = require('fs');

const workbook = XLSX.readFile('LPIC-1.xlsx');
const sheets = workbook.SheetNames;

let data = {};
sheets.forEach(sheet => {
    const sheetData = XLSX.utils.sheet_to_json(workbook.Sheets[sheet]);
    data[sheet] = sheetData;
});

fs.writeFileSync('fragen.json', JSON.stringify(data, null, 2));
