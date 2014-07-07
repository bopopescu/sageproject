cdef extern from *:
    ctypedef double* const_double_ptr "const double*"
    cdef int BINARY = 1
    cdef int REAL = -1
    cdef int INTEGER = 0

from sage.structure.sage_object cimport SageObject
from sage.numerical.backends.generic_backend cimport GenericBackend
cdef class SDPVariable


cdef class SemidefiniteProgram(SageObject):
    cdef GenericBackend _backend
    cdef list _sdpvariables
    cdef SDPVariable _default_sdpvariable
    cdef dict _variables
    cdef object _linear_functions_parent
    cdef object _linear_constraints_parent
    cpdef int number_of_constraints(self)
    cpdef int number_of_variables(self)
    cdef int _check_redundant
    cdef list _constraints
    cpdef sum(self, L)

cdef class SDPVariable(SageObject):
    cdef SemidefiniteProgram _p
    cdef int _dim
    cdef dict _dict
    cdef int _vtype
    cdef char * _name
    cdef bint _hasname

