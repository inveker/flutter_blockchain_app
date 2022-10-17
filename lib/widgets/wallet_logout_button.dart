import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/wallet_connection/wallet_connection_bloc.dart';

class WalletLogoutButton extends StatelessWidget {
  const WalletLogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Logout wallet'),
      onPressed: () {
        context.read<WalletConnectionBloc>().add(WalletConnectionEvent.logout());
      },
    );
  }
}
