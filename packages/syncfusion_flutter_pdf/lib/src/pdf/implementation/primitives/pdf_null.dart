import '../../interfaces/pdf_interface.dart';
import '../io/enums.dart';
import '../io/pdf_cross_table.dart';

/// internal class
class PdfNull implements IPdfPrimitive {
  /// internal constructor
  PdfNull();

  //Fields
  bool? _isSaving;
  int? _objectCollectionIndex;
  int? _position;
  PdfObjectStatus? _status;

  //IPdfPrimitive members
  @override
  bool? get isSaving {
    _isSaving ??= false;
    return _isSaving;
  }

  @override
  set isSaving(bool? value) {
    _isSaving = value;
  }

  @override
  int? get objectCollectionIndex {
    _objectCollectionIndex ??= 0;
    return _objectCollectionIndex;
  }

  @override
  set objectCollectionIndex(int? value) {
    _objectCollectionIndex = value;
  }

  @override
  int? get position {
    _position ??= -1;
    return _position;
  }

  @override
  set position(int? value) {
    _position = value;
  }

  @override
  PdfObjectStatus? get status {
    _status ??= PdfObjectStatus.none;
    return _status;
  }

  @override
  set status(PdfObjectStatus? value) {
    _status = value;
  }

  @override
  IPdfPrimitive? clonedObject;

  @override
  void save(IPdfWriter? writer) {
    writer!.write('null');
  }

  @override
  void dispose() {
    if (_status != null) {
      _status = null;
    }
  }

  @override
  IPdfPrimitive cloneObject(PdfCrossTable crossTable) => PdfNull();
}
