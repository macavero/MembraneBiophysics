# MembraneBiophysics
Basic operations that are needed in cell membrane biophysics. Includes solution to Nernst and Goldman equations, number of ions that a cell can save as a capacitor (number of leaked ions), Ohm's law, and more.

### Exponential fit and IV plot
There are two different functions that are still under improvement, FitChannel gives back the opening an closing constants (alpha an beta) from an array in a csv file with current values from single channel patch clamp. The IVplotConductance makes linear regression to the IV curve from 0 to 40 mV. Then calculates reversal potential and conductance, and plots it. The input is a csv file with voltage in the first column and current in the second column.

The channel opening and closing can be described by an exponential model. This can be derived from the binomial distribution, which describes the probability of an event (success) of happening a specific number of times. This distribution can be aproximated to a Poisson distribution when the number of sample is big and the probability of success is small. This distribution allows us to calculate the proability of $k$ events happening during a interval of time $t$

\begin{equation}
    p\left( \genfrac{}{}{0pt}{}{K events}{in \,t} \right) = \alpha t^k \times e^{-\alpha t}, 
\end{equation}

where alpha can be also described in terms of $\lambda$, which corresponds to the mean of the probability function

\begin{equation}
    \lambda = \alpha \times t.
\end{equation}

Which we can think as the mean $\alpha t$ of opening of the channel if we measure during a time $t$. In this case, the "success" event represents one transition, or one state change of the channel.If $k = 0$ during one period of time $t$, this means there were no transitions during this time, for example, if the channel was open, this means it did not closed during time $t$.

We can derive the Probability Density Function (PDF) that describes the the probability of a certain amount of time of the channel to remain in a specific state (i.e open or close, so there will be two PDF), from its Cumulative Densiti Funcion (CDF). From now on, we are going to focus in the opening PDF and CDF. The CDF will tell us in a time $t$ what is the probability of the channel to stay open during $t$ seconds or less. And the rest of the CDF will represent the probability of opening during a time greater than $t$.  