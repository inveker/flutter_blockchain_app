import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blockchain_app/bloc/browser_extension_provider/browser_extension_provider_bloc.dart';
import 'package:flutter_blockchain_app/bloc/network/network_bloc.dart';
import 'package:flutter_blockchain_app/bloc/walletconnect_provider/walletconnect_provider_bloc.dart';
import 'package:flutter_blockchain_app/models/chain/chain_model.dart';
import 'package:flutter_blockchain_app/repositories/chains_repository.dart';
import 'package:flutter_blockchain_app/web3/provider_builders/walletconnect/walletconnect_provider_builder.dart';

class WalletLogoutButton extends StatelessWidget {
  const WalletLogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Logout wallet'),
      onPressed: () {
        context.read<NetworkBloc>().add(NetworkEvent.logout());
      },
    );
  }
}
