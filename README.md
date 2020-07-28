# Gaussian Elimination
Gaussian eliminations is a basic method to solve multiple system of linear equations. The system of linear can be written as follows

![fig1](https://i.upmath.me/svg/%5Cbegin%7Balign*%7D%0Aa_%7B11%7Dx_1%2Ba_%7B12%7Dx_2%2B%5Chdots%2Ba_%7B1n%7Dx_%7Bn%7D%26%3Db_1%20%5C%5C%0Aa_%7B21%7Dx_1%2Ba_%7B22%7Dx_2%2B%5Chdots%2Ba_%7B2n%7Dx_%7Bn%7D%26%3Db_2%20%5C%5C%0A%5Cvdots%5C%5C%0Aa_%7Bn1%7Dx_1%2Ba_%7Bn2%7Dx_2%2B%5Chdots%2Ba_%7Bnn%7Dx_%7Bn%7D%26%3Db_n%20%5C%5C%0A%5Cend%7Balign*%7D)

This linear equations can be written in matrix form

![fig2](https://i.upmath.me/svg/%5Cbegin%7Bpmatrix%7D%0Aa_%7B11%7D%20%26%20a_%7B12%7D%20%26%20a_%7B13%7D%20%5C%5C%0Aa_%7B21%7D%20%26%20a_%7B22%7D%20%26%20a_%7B23%7D%20%5C%5C%0A%5Cvodts%20%26%20%5Cvdots%20%26%20%5Cvdots%20%5C%5C%0Aa_%7Bn1%7D%20%26%20a_%7Bn2%7D%20%26%20a_%7Bn3%7D%0A%5Cend%7Bpmatrix%7D%0A%5Cbegin%7Bpmatrix%7D%20%0Ax_%7B1%7D%20%5C%5C%20%0Ax_%7B2%7D%20%5C%5C%0A%5Cvdots%20%5C%5C%0Ax_%7Bn%7D%0A%5Cend%7Bpmatrix%7D%20%3D%0A%5Cbegin%7Bpmatrix%7D%20%0Ab_%7B1%7D%20%5C%5C%20%0Ab_%7B2%7D%20%5C%5C%0A%5Cvdots%20%5C%5C%0Ab_%7Bn%7D%0A%5Cend%7Bpmatrix%7D)

and can be simplified to

![fig3](https://i.upmath.me/svg/Ax%20%3Db)

The idea of this method is, the original matrix is transformed to upper triangular matrix. The upper triangular matrix is all the entries below main diagonal is zero such as 

![fig4](https://i.upmath.me/svg/%5Cbegin%7Bpmatrix%7D%0Aa_%7B11%7D%20%26%20a_%7B12%7D%20%26%20a_%7B13%7D%20%5C%5C%0A0%20%26%20a_%7B22%7D%20%26%20a_%7B23%7D%20%5C%5C%0A0%20%26%200%20%26%20a_%7B33%7D%0A%5Cend%7Bpmatrix%7D%0A%5Cbegin%7Bpmatrix%7D%20%0Ax_%7B1%7D%20%5C%5C%20%0Ax_%7B2%7D%20%5C%5C%0Ax_%7B3%7D%0A%5Cend%7Bpmatrix%7D%20%3D%0A%5Cbegin%7Bpmatrix%7D%20%0Ab_%7B1%7D%20%5C%5C%20%0Ab_%7B2%7D%20%5C%5C%0Ab_%7B3%7D%0A%5Cend%7Bpmatrix%7D)

This process can be done by multiply and add for each row until we get `a21 = 0, a31 = 0, a32 = 0`

By using the last row of matrix, ![form1](https://i.upmath.me/svg/a_%7B33%7Dx_3%20%3D%20b_3), we can calculate the ![form2](https://i.upmath.me/svg/x_3). Then, we can subtitute the ![form2](https://i.upmath.me/svg/x_3) into the second row to calculate ![form3](https://i.upmath.me/svg/x_2) and until we find ![form4](https://i.upmath.me/svg/x_1) by using fisrt row of matrix. This is called backward subtitution.

# Example
Given some linear equations

![equation1](https://i.upmath.me/svg/%5Cbegin%7Balign*%7D%0A-2x_1%2Bx_2%2B2x_3%3D6%20%5C%5C%0A3x_1-4x_2%2B8x_3%3D12%20%5C%5C%0A6x_1-2x_2%2Bx_3%3D4%0A%5Cend%7Balign*%7D)

We can write become

![equation2](https://i.upmath.me/svg/%5Cbegin%7Bpmatrix%7D%0A-2%20%26%201%20%26%202%20%5C%5C%0A3%20%26%20-4%20%26%208%20%5C%5C%0A6%20%26%20-2%20%26%201%0A%5Cend%7Bpmatrix%7D%0A%5Cbegin%7Bpmatrix%7D%20%0Ax_%7B1%7D%20%5C%5C%20%0Ax_%7B2%7D%20%5C%5C%0Ax_%7Bn%7D%0A%5Cend%7Bpmatrix%7D%20%3D%0A%5Cbegin%7Bpmatrix%7D%20%0A6%20%5C%5C%20%0A12%20%5C%5C%0A4%0A%5Cend%7Bpmatrix%7D)

By transforming 
