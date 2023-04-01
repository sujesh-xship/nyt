
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsHeaderWidget extends StatelessWidget {
  const DetailsHeaderWidget({
    super.key,
    required this.imagUrl,
    required this.title,
    required this.authorName,
  });

  final String imagUrl;
  final String title;
  final String authorName;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return
      Stack(
      children: [
          Container(
          width: double.infinity,
          height: size.height * .5,
          decoration: BoxDecoration(
            color: const Color(0xffbdbdbd),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                imagUrl,
              ),
            ),
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),),
        Positioned(
     left: 10,
          top: size.height * .4,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                   Text(
                      title,
                      softWrap: true,
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        height: 1.3,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    Text(
                      authorName,
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );








    //   Container(
    //   width: double.infinity,
    //   //height: size.height * .5,
    //   decoration: BoxDecoration(
    //     color: const Color(0xffbdbdbd),
    //     image: DecorationImage(
    //       fit: BoxFit.cover,
    //       image: CachedNetworkImageProvider(
    //         imagUrl,
    //       ),
    //     ),
    //     borderRadius: const BorderRadius.only(
    //       bottomRight: Radius.circular(20),
    //       bottomLeft: Radius.circular(20),
    //     ),
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.fromLTRB(24.0, 45, 24, 0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Padding(
    //           padding:
    //               const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
    //           child: Row(
    //             children: [
    //               Expanded(
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       title,
    //                       style: GoogleFonts.lato(
    //                         fontSize: 20,
    //                         fontWeight: FontWeight.w700,
    //                         height: 1.3,
    //                         color: Color(0xffffffff),
    //                       ),
    //                     ),
    //                     Text(
    //                       authorName,
    //                       style: GoogleFonts.lato(
    //                         fontSize: 14,
    //                         fontWeight: FontWeight.w400,
    //                         height: 1.4,
    //                         color: Color(0xffffffff),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
