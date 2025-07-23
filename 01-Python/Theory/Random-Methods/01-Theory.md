# Overview

- [Overview](#overview)
- [Introduction](#introduction)
  - [Note](#note)
- [How to Import](#how-to-import)
- [Commonly Used Functions in random](#commonly-used-functions-in-random)
  - [1. random.random()](#1-randomrandom)
  - [2. random.randint(a, b)](#2-randomrandinta-b)
  - [3. random.uniform(a, b)](#3-randomuniforma-b)
  - [5. random.choices(population, weights=None, k=1)](#5-randomchoicespopulation-weightsnone-k1)
  - [6. random.sample(population, k)](#6-randomsamplepopulation-k)
  - [7. random.shuffle(list)](#7-randomshufflelist)
  - [8. random.seed(value)](#8-randomseedvalue)

&nbsp;

&nbsp;

&nbsp;

# Introduction

The `random` module in Python is used to generate pseudo-random numbers and perform random operations like **selecting a random item from a list**, **shuffling elements**, or **generating random integers or floats**.

&nbsp;

## Note

- The random module uses the **Mersenne Twister** algorithm and is not cryptographically secure.

- For cryptographic needs, use the secrets module.

&nbsp;

&nbsp;

# How to Import

```py
import random
```

&nbsp;

&nbsp;

| Method            | Description                                                                                                                                            |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| seed()            | Initialize the random number generator                                                                                                                 |
| getstate()        | Returns the current internal state of the random number generator                                                                                      |
| setstate()        | Restores the internal state of the random number generator                                                                                             |
| getrandbits()     | Returns a number representing the random bits                                                                                                          |
| randrange()       | Returns a random number between the given range                                                                                                        |
| randint()         | Returns a random number between the given range                                                                                                        |
| choice()          | Returns a random element from the given sequence                                                                                                       |
| choices()         | Returns a list with a random selection from the given sequence                                                                                         |
| shuffle()         | Takes a sequence and returns the sequence in a random order                                                                                            |
| sample()          | Returns a given sample of a sequence                                                                                                                   |
| random()          | Returns a random float number between 0 and 1                                                                                                          |
| uniform()         | Returns a random float number between two given parameters                                                                                             |
| triangular()      | Returns a random float number between two given parameters, you can also set a mode parameter to specify the midpoint between the two other parameters |
| betavariate()     | Returns a random float number between 0 and 1 based on the Beta distribution (used in statistics)                                                      |
| expovariate()     | Returns a random float number based on the Exponential distribution (used in statistics)                                                               |
| gammavariate()    | Returns a random float number based on the Gamma distribution (used in statistics)                                                                     |
| gauss()           | Returns a random float number based on the Gaussian distribution (used in probability theories)                                                        |
| lognormvariate()  | Returns a random float number based on a log-normal distribution (used in probability theories)                                                        |
| normalvariate()   | Returns a random float number based on the normal distribution (used in probability theories)                                                          |
| vonmisesvariate() | Returns a random float number based on the von Mises distribution (used in directional statistics)                                                     |
| paretovariate()   | Returns a random float number based on the Pareto distribution (used in probability theories)                                                          |
| weibullvariate()  | Returns a random float number based on the Weibull distribution (used in statistics)                                                                   |

# Commonly Used Functions in random

&nbsp;

&nbsp;

&nbsp;

&nbsp;

## 5. random.choices(population, weights=None, k=1)

Returns a list of k elements chosen from population with replacement.

```python
print(random.choices([1, 2, 3], weights=[10, 1, 1], k=2)) # e.g., [1, 1]
```

&nbsp;

&nbsp;

## 6. random.sample(population, k)

Returns a list of k unique elements from the population without replacement.

```python
print(random.sample([1, 2, 3, 4, 5], 3))  # e.g., [2, 4, 1]
```

&nbsp;

&nbsp;

## 7. random.shuffle(list)

Shuffles the list in place.

```python
items = [1, 2, 3, 4, 5]
random.shuffle(items)
print(items)  # e.g., [3, 1, 5, 2, 4]
```

&nbsp;

&nbsp;

## 8. random.seed(value)

Initializes the random number generator. Useful for reproducibility.

```python
random.seed(42)
print(random.random())  # Always same if seed is fixed
```

&nbsp;

&nbsp;

&nbsp;

&nbsp;
