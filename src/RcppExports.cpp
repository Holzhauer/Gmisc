// This file was generated by Rcpp::compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// calculateLinesAndArrow
Rcpp::List calculateLinesAndArrow(NumericVector x, NumericVector y, NumericVector offset, double end_x, double end_y, double arrow_offset);
RcppExport SEXP Gmisc_calculateLinesAndArrow(SEXP xSEXP, SEXP ySEXP, SEXP offsetSEXP, SEXP end_xSEXP, SEXP end_ySEXP, SEXP arrow_offsetSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< NumericVector >::type x(xSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type y(ySEXP);
    Rcpp::traits::input_parameter< NumericVector >::type offset(offsetSEXP);
    Rcpp::traits::input_parameter< double >::type end_x(end_xSEXP);
    Rcpp::traits::input_parameter< double >::type end_y(end_ySEXP);
    Rcpp::traits::input_parameter< double >::type arrow_offset(arrow_offsetSEXP);
    __result = Rcpp::wrap(calculateLinesAndArrow(x, y, offset, end_x, end_y, arrow_offset));
    return __result;
END_RCPP
}
// gnrlBezierPoints
NumericMatrix gnrlBezierPoints(SEXP& ctrl_points, int length_out);
RcppExport SEXP Gmisc_gnrlBezierPoints(SEXP ctrl_pointsSEXP, SEXP length_outSEXP) {
BEGIN_RCPP
    Rcpp::RObject __result;
    Rcpp::RNGScope __rngScope;
    Rcpp::traits::input_parameter< SEXP& >::type ctrl_points(ctrl_pointsSEXP);
    Rcpp::traits::input_parameter< int >::type length_out(length_outSEXP);
    __result = Rcpp::wrap(gnrlBezierPoints(ctrl_points, length_out));
    return __result;
END_RCPP
}
