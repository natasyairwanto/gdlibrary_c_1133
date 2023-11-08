import 'package:gdlibrary_c_1133/invoice/model/custom_row_invoice.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

//Widget untuk membentuk tampilan invoice dengan menyesuaikan custom row
pw.Widget itemColumn(List<CustomRow> elements) {
  final List<pw.TableRow> rows = [];
  // Mendefinisikan warna pada baris tabel
  final List<PdfColor> rowColors = [PdfColors.white, PdfColors.blue50];

  // Value data barisnya
  for (var i = 0; i < elements.length; i++) {
    final CustomRow element = elements[i];
    final PdfColor rowColor = rowColors[i % rowColors.length];

    rows.add(
      pw.TableRow(
        children: [
          pw.Container(
            alignment: pw.Alignment.center,
            padding : const pw.EdgeInsets.all(5),
            color: rowColor,
            child: pw.Text(element.itemName),
          ),
          pw.Container(
            alignment: pw.Alignment.center,
            padding : const pw.EdgeInsets.all(5),
            color: rowColor,
            child: pw.Text(element.itemPrice),
          ),
          pw.Container(
            alignment: pw.Alignment.center,
            padding : const pw.EdgeInsets.all(5),
            color: rowColor,
            child: pw.Text(element.amount),
          ),
          pw.Container(
            alignment: pw.Alignment.center,
            padding : const pw.EdgeInsets.all(5),
            color: rowColor,
            child: pw.Text(element.subTotalProduct),
          ),
        ],
      ),
    );
  }

  return pw.Table(children: rows);
}