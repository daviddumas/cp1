# Adapted from CythonGSL 0.2.1
# https://github.com/twiecki/CythonGSL
# Thomas Wiecki (twiecki)

cdef extern from "gsl/gsl_complex.h":

    ctypedef double * gsl_complex_packed_array
    ctypedef double * gsl_complex_packed_ptr

    ctypedef struct gsl_complex:
        double dat[2]

    double GSL_REAL(gsl_complex z) nogil

    double GSL_IMAG(gsl_complex z) nogil

    int GSL_COMPLEX_EQ(gsl_complex z1,gsl_complex z2) nogil

    double GSL_SET_COMPLEX(gsl_complex * zp, double  x, double  y) nogil

    double GSL_SET_REAL(gsl_complex * zp, double x) nogil

    double GSL_SET_IMAG(gsl_complex * zp, double y) nogil


cdef extern from "gsl/gsl_complex_math.h":

    # Complex numbers
    gsl_complex  gsl_complex_rect(double x, double y) nogil

    gsl_complex  gsl_complex_polar(double r, double theta) nogil

    gsl_complex GSL_COMPLEX_ONE
    gsl_complex GSL_COMPLEX_ZERO
    gsl_complex GSL_COMPLEX_NEGONE

    # Properties of complex numbers
    double  gsl_complex_arg(gsl_complex z) nogil

    double  gsl_complex_abs(gsl_complex z) nogil

    double  gsl_complex_abs2(gsl_complex z) nogil

    double  gsl_complex_logabs(gsl_complex z) nogil

    # Complex arithmetic operators
    gsl_complex  gsl_complex_add(gsl_complex a, gsl_complex b) nogil

    gsl_complex  gsl_complex_sub(gsl_complex a, gsl_complex b) nogil

    gsl_complex  gsl_complex_mul(gsl_complex a, gsl_complex b) nogil

    gsl_complex  gsl_complex_div(gsl_complex a, gsl_complex b) nogil

    gsl_complex  gsl_complex_add_real(gsl_complex a, double x) nogil

    gsl_complex  gsl_complex_sub_real(gsl_complex a, double x) nogil

    gsl_complex  gsl_complex_mul_real(gsl_complex a, double x) nogil

    gsl_complex  gsl_complex_div_real(gsl_complex a, double x) nogil

    gsl_complex  gsl_complex_add_imag(gsl_complex a, double y) nogil

    gsl_complex  gsl_complex_sub_imag(gsl_complex a, double y) nogil

    gsl_complex  gsl_complex_mul_imag(gsl_complex a, double y) nogil

    gsl_complex  gsl_complex_div_imag(gsl_complex a, double y) nogil

    gsl_complex  gsl_complex_conjugate(gsl_complex z) nogil

    gsl_complex  gsl_complex_inverse(gsl_complex z) nogil

    gsl_complex  gsl_complex_negative(gsl_complex z) nogil

    # Elementary Complex Functions
    gsl_complex  gsl_complex_sqrt(gsl_complex z) nogil

    gsl_complex  gsl_complex_sqrt_real(double x) nogil

    gsl_complex  gsl_complex_pow(gsl_complex z, gsl_complex a) nogil

    gsl_complex  gsl_complex_pow_real(gsl_complex z, double x) nogil

    gsl_complex  gsl_complex_exp(gsl_complex z) nogil

    gsl_complex  gsl_complex_log(gsl_complex z) nogil

    gsl_complex  gsl_complex_log10(gsl_complex z) nogil

    gsl_complex  gsl_complex_log_b(gsl_complex z, gsl_complex b) nogil

    # Complex Trigonometric Functions
    gsl_complex  gsl_complex_sin(gsl_complex z) nogil

    gsl_complex  gsl_complex_cos(gsl_complex z) nogil

    gsl_complex  gsl_complex_tan(gsl_complex z) nogil

    gsl_complex  gsl_complex_sec(gsl_complex z) nogil

    gsl_complex  gsl_complex_csc(gsl_complex z) nogil

    gsl_complex  gsl_complex_cot(gsl_complex z) nogil

    # Inverse Complex Trigonometric Functions
    gsl_complex  gsl_complex_arcsin(gsl_complex z) nogil

    gsl_complex  gsl_complex_arcsin_real(double z) nogil

    gsl_complex  gsl_complex_arccos(gsl_complex z) nogil

    gsl_complex  gsl_complex_arccos_real(double z) nogil

    gsl_complex  gsl_complex_arctan(gsl_complex z) nogil

    gsl_complex  gsl_complex_arcsec(gsl_complex z) nogil

    gsl_complex  gsl_complex_arcsec_real(double z) nogil

    gsl_complex  gsl_complex_arccsc(gsl_complex z) nogil

    gsl_complex  gsl_complex_arccsc_real(double z) nogil

    gsl_complex  gsl_complex_arccot(gsl_complex z) nogil

    # Complex Hyperbolic Functions
    gsl_complex  gsl_complex_sinh(gsl_complex z) nogil

    gsl_complex  gsl_complex_cosh(gsl_complex z) nogil

    gsl_complex  gsl_complex_tanh(gsl_complex z) nogil

    gsl_complex  gsl_complex_sech(gsl_complex z) nogil

    gsl_complex  gsl_complex_csch(gsl_complex z) nogil

    gsl_complex  gsl_complex_coth(gsl_complex z) nogil

    # Inverse Complex Hyperbolic Functions
    gsl_complex  gsl_complex_arcsinh(gsl_complex z) nogil

    gsl_complex  gsl_complex_arccosh(gsl_complex z) nogil

    gsl_complex  gsl_complex_arccosh_real(double z) nogil

    gsl_complex  gsl_complex_arctanh(gsl_complex z) nogil

    gsl_complex  gsl_complex_arctanh_real(double z) nogil

    gsl_complex  gsl_complex_arcsech(gsl_complex z) nogil

    gsl_complex  gsl_complex_arccsch(gsl_complex z) nogil

    gsl_complex  gsl_complex_arccoth(gsl_complex z) nogil
