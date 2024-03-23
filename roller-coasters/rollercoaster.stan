data {
    int<lower=0> N;          // Number of observations
    int<lower=0> K;          // Number of predictors
    matrix[N, K] X;          // Predictor matrix
    int<lower=0> y[N];       // Outcome vector
}

parameters {
    real beta0;              // Intercept
    vector[K] beta;          // Coefficients for predictors
    real<lower=0> sigma;     // Error standard deviation
}

model {
    // Priors
    beta0 ~ normal(0, 10);
    beta ~ normal(0, 10);
    sigma ~ cauchy(0, 10);
    
    // Likelihood
    y ~ poisson_log(X * beta + beta0);
}