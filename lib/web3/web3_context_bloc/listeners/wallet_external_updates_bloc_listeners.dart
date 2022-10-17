import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/wallet_external_updates/wallet_external_updates_bloc.dart';

class WalletExternalUpdatesBlocListeners {
  static BlocListener<WalletExternalUpdatesBloc, WalletExternalUpdatesState> accountUpdated(void Function(String account)? onExternalAccountChanged) {
    return BlocListener<WalletExternalUpdatesBloc, WalletExternalUpdatesState>(
      listenWhen: (p, n) => p.newAccount != n.newAccount,
      listener: (context, state) {
        final newAccount = state.newAccount;
        print('ACCOUNT UPDATED $newAccount');

        if(newAccount != null) {
          onExternalAccountChanged?.call(newAccount);
        }
      },
    );
  }

  static BlocListener<WalletExternalUpdatesBloc, WalletExternalUpdatesState> chainUpdated(Function(int chainId)? onExternalChainChanged) {
    return BlocListener<WalletExternalUpdatesBloc, WalletExternalUpdatesState>(
      listenWhen: (p, n) => p.newChainId != n.newChainId,
      listener: (context, state) {
        final newChainId = state.newChainId;
        print('CHAIN UPDATED $newChainId');

        if(newChainId != null) {
          onExternalChainChanged?.call(newChainId);
        }
      },
    );
  }
}
