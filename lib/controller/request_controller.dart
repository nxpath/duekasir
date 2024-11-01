import 'package:due_kasir/brick/model/request.model.dart';
import 'package:due_kasir/service/supabase_service.dart';
import 'package:signals/signals_flutter.dart';

class RequestController {
  final requests = futureSignal(() async => SupabaseHelper().getRequests());
  final requestItemSelected = signal<RequestModel?>(null);
}

final requestController = RequestController();
