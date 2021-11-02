import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class LocationProvider extends ChangeNotifier {
  static LocationProvider of(BuildContext context, {bool listen = true}) => Provider.of<LocationProvider>(context, listen: listen);

  LatLng? _lastIdleLocation;
  String _selectedPlacedId = "";

  LatLng? get lastIdleLocation => _lastIdleLocation;
  String? get selectedPlacedId => _selectedPlacedId;

  void setLastIdleLocation(LatLng lastIdleLocation) {
    if (_lastIdleLocation != lastIdleLocation) {
      _lastIdleLocation = lastIdleLocation;
      notifyListeners();
    }
  }

  void setSelectedPlacedId(String selectedPlacedId, {bool isNotifiable = false}) {
    if (_selectedPlacedId != selectedPlacedId) {
      _selectedPlacedId = selectedPlacedId;
      if (isNotifiable) notifyListeners();
    }
  }
}
