def cube(x):
    """
    This function squares the input as shown in the following tests.

    >>> cube(5)
    25
    >>> cube(1)
    1
    >>> cube(0)
    0
    """

    return x**2

if __name__ == "__main__":
    import doctest
    doctest.testmod(verbose=True, optionflags=doctest.NORMALIZE_WHITESPACE)
    
def eulerToR((alpha, beta, gamma)):

    R11 = (cos(beta)*cos(gamma));
    R12 = (sin(alpha)*sin(beta)*sin(gamma)) - (cos(alpha)*sin(beta));
    R13 = (cos(alpha)*sin(beta)*cos(gamma)) + (sin(alpha)*sin(beta));

    R21 = (cos(beta)*sin(gamma));
    R22 = (sin(alpha)*sin(beta)*sin(gamma)) + (cos(alpha)*cos(beta));
    R23 = (cos(alpha)*sin(beta)*sin(gamma)) - (sin(alpha)*cos(beta));

    R31 = (-cos(beta));
    R32 = (sin(alpha)*cos(beta));
    R33 = (cos(alpha)*cos(beta));

    
    
