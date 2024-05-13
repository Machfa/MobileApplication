import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatelessWidget {
  final Map<String, String> availablePaymentMethod = {
    "Edahabia": "lib/icons/paymentMethod/algerie-post.png",
    "CIB Card": "lib/icons/paymentMethod/cib.png",
    "Visa Card": "lib/icons/paymentMethod/visa.png",
    "MasterCard": "lib/icons/paymentMethod/masterCard.png",
    "Later": "lib/icons/paymentMethod/later.png",
  };
  PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: (80 / 783.27) * screenHeight,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: (22 / 428) * screenWidth,
                bottom: (24 / 783.27) * screenHeight,
              ),
              child: Text(
                'Payment Method:',
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: (22 / 428) * screenWidth),
                child: ListView.builder(
                  itemCount: availablePaymentMethod.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: (20 / 783.27) * screenHeight,
                      ),
                      child: IconButton(
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          //TODO: OPEN A BROWSER PAGE TO PROCEED TO THE PAYMENT
                        },
                        icon: Container(
                          height: (90 / 926) * screenHeight,
                          decoration: const BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: (45 / 428) * screenWidth,
                                  width: (45 / 428) * screenWidth,
                                  child: Image.asset(
                                    availablePaymentMethod.values
                                        .elementAt(index),
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                                SizedBox(
                                  width: (20 / 392.72) * screenWidth,
                                ),
                                Text(
                                  availablePaymentMethod.keys.elementAt(index),
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        color: Color(0xFF1C1F1E),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
