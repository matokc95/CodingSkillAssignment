import 'package:assignment/common/app_export.dart';
import 'package:assignment/common/custom_icon_button.dart';
import 'package:assignment/models/genres/data/genre.dart';
import 'package:assignment/models/movies/data/movie.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  final Movie movie;
  final List<Genre> genres;
  final double? initialChildSize;
  final double? maxChildSize;
  final double? minChildSize;

  const CustomBottomSheet({
    Key? key,
    required this.movie,
    required this.genres,
    this.initialChildSize,
    this.maxChildSize,
    this.minChildSize,
  }) : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: widget.initialChildSize!, // half screen on load
        maxChildSize: widget.maxChildSize!, // full screen on scroll
        minChildSize: widget.minChildSize!,
        builder: (context, scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: ColorConstant.gray901,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  20.00,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 15,
                    right: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: getMargin(
                          top: 4,
                        ),
                        width: getHorizontalSize(250),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              widget.movie.originalTitle ?? "N/A",
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.indigo50,
                                fontSize: getFontSize(
                                  20,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                                height: 1.00,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 1,
                                top: 9,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVector,
                                      height: getVerticalSize(
                                        12.00,
                                      ),
                                      width: getHorizontalSize(
                                        13.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 5,
                                      top: 2,
                                    ),
                                    child: Text(
                                      widget.movie.voteAverage != null
                                          ? "${widget.movie.voteAverage!.toStringAsFixed(1)} / 10 IMDb"
                                          : "",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.indigo50,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w400,
                                        height: 1.00,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 16,
                                right: 10,
                              ),
                              child: Container(
                                width: getHorizontalSize(200),
                                child: Expanded(
                                  child: Wrap(
                                    children: [
                                      Wrap(
                                        children: [
                                          for (Genre genre in widget.genres)
                                            Padding(
                                              padding:
                                                  getPadding(right: 10, top: 10),
                                              child: Container(
                                                padding: getPadding(
                                                  left: 15,
                                                  top: 4,
                                                  right: 8,
                                                  bottom: 4,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.orangeA20033,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      4.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  genre.name,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: ColorConstant.indigo50,
                                                    fontSize: getFontSize(
                                                      11,
                                                    ),
                                                    fontFamily: 'SF Pro',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 44,
                                right: 10,
                              ),
                              child: Text(
                                "Description",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.indigo50,
                                  fontSize: getFontSize(
                                    15,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          bottom: 110,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.red90073,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              27.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 32,
                              width: 32,
                              margin: getMargin(
                                all: 11,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgBookmark32X32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      width: getHorizontalSize(
                        327.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 12,
                        right: 20,
                        bottom: 20,
                      ),
                      child: Text(
                        widget.movie.overview,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.indigo50,
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w300,
                          height: 1.38,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}