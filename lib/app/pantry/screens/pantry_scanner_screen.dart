import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/pantry/widgets/pantry_add_sheet.dart';

class PantryScannerScreen extends StatefulWidget {
  const PantryScannerScreen({super.key});

  static Future<void> show(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => const PantryScannerScreen()),
    );
  }

  @override
  State<PantryScannerScreen> createState() => _PantryScannerScreenState();
}

class _PantryScannerScreenState extends State<PantryScannerScreen> {
  final MobileScannerController controller = MobileScannerController();
  bool _isProcessing = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.white),
        title: const Text('Escanear Produto', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: controller,
              builder: (context, state, child) {
                final torchState = state.torchState;
                switch (torchState) {
                  case TorchState.on:
                    return const Icon(Icons.flash_on, color: Colors.yellow);
                  case TorchState.auto:
                    return const Icon(Icons.flash_auto, color: Colors.blue);
                  case TorchState.off:
                  default:
                    return const Icon(Icons.flash_off, color: Colors.grey);
                }
              },
            ),
            iconSize: 32,
            onPressed: () => controller.toggleTorch(),
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.cameraswitch_outlined),
            iconSize: 32,
            onPressed: () => controller.switchCamera(),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            MobileScanner(
            controller: controller,
            onDetect: (capture) async {
              if (_isProcessing) {
                return;
              }
              final List<Barcode> barcodes = capture.barcodes;
              if (barcodes.isNotEmpty) {
                final String? code = barcodes.first.rawValue;
                if (code != null) {
                  setState(() => _isProcessing = true);
                  await _onCodeDetected(code);
                }
              }
            },
          ),
          _buildOverlay(context),
          if (_isProcessing)
            Container(
              color: Colors.black54,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
      ),
    );
  }

  Widget _buildOverlay(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scanAreaSize = size.width * 0.7;

    return Stack(
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.black.withAlpha((0.5 * 255).toInt()),
            BlendMode.srcOut,
          ),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  backgroundBlendMode: BlendMode.dstOut,
                ),
              ),
              Center(
                child: Container(
                  height: scanAreaSize,
                  width: scanAreaSize,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(RadiusTokens.lg),
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            height: scanAreaSize,
            width: scanAreaSize,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(RadiusTokens.lg),
            ),
          ).animate(onPlay: (c) => c.repeat()).shimmer(
            duration: 2.seconds,
            color: Colors.green.withAlpha((0.5 * 255).toInt()),
          ),
        ),
        Positioned(
          top: (size.height / 2) + (scanAreaSize / 2) + 20,
          left: 0,
          right: 0,
          child: const Text(
            'Posicione o código de barras no centro',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Future<void> _onCodeDetected(String code) async {
    if (!mounted) {
      return;
    }
    Navigator.of(context).pop();
    
    await PantryAddSheet.show(context, initialName: 'Produto $code');
  }
}
