def factorial(num: int) -> int:
    """
    Return factorial of `num`
    :param num: takes integer only
    :return: multiplication of all integer numbers from 1 to `num`, inclusive
    """
    if num ==0:
        return 1
    fact_num = 1
    for x in range(1,num+1):
        fact_num = fact_num*(x)
    return fact_num


def num_zeros(num: int) -> int:
    """
    Returns the number of zeros in factorial of `num`
    :param num: takes integer only
    :return: returns total number of zeros in factorial `num`
    """
    fact = str(factorial(num))
    fact.split()
    count = 0
    for i in fact:
        if i == "0":
            count = count+1
    return count


for i in range(0,100):
    print(i,factorial(i),num_zeros(i))