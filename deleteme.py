
import random

# Generate a list of 10 random numbers between 1 and 100
random_numbers = [random.randint(1, 100) for _ in range(10)]


def bubble(random_numbers):
    sortiert = False
    while (sortiert == False):
        print('unsorted:', random_numbers)
        sortiert = True
        for idx in range(len(random_numbers)  -1):
            a = random_numbers[idx]
            b = random_numbers[idx+1]
            if a > b:
                random_numbers[idx] = b
                random_numbers[idx+1] = a
                sortiert = False

    print('sorted:', random_numbers)


bubble(random_numbers)


 
