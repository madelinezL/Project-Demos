This Transfer Pricing ("TP") Econometric Analysis of ESG Benefit project is a Deloitte TP internal project which I participated in July 2023. My primary responsibility and contributions include validating the models and drafting the memo. Below is a debrief of the project, with sensitive information redacted to maintain confidentiality.

## Introduction
Environmental, Social, and Governance ("ESG") is a mechanism to transparently and consistently communicate how organizations are operationalizing their sustainability agenda. It reflects the broad set of environmental and societal risks, opportunities, and disruptors that an organization manages, measures, and credibly communicates its performance. ESG value creation offers numerous benefits to companies, society, and the environment. By integrating sustainable practices and responsible business strategies, companies can unlock a host of benefits, including top-line growth, cost reductions, productivity uplift, risk mitigation, regulatory relief, and investment and innovation.

Deloitte transfer pricing team has conducted an econometric analysis to measure the benefit provided by ESG activities for transfer pricing purposes. The analysis can be used to determine arm’s length prices for ESG benefit between intercompany affiliates of a company.  

## Data Used
Obtained from Refinitive, the preliminary dataset consists of the ESG scores of 339 companies across three regions including Europe, Middle East, and Africa (“EMEA”), Asia Pacific (“APAC”) and North America. The dataset period spans from 2016 to 2021 and includes data from 20 countries, such as France, Italy, Netherlands, Finland, Japan, China, United States, and Canada. 

The supplemented dataset consists of macroeconomic variables by country and region using sources such as Federal Reserve Bank of St. Louis, Bloomberg, DAX Index, Straits Index, Dow Jones Index, and the International Monetary Fund. Macroeconomic variables include bond rate, stock return, GDP growth, CPI inflation.

## Data Modeling

The specification with natural log transformation of the key variables (i.e. gross margin, geo ESG) passed various diagnostic tests (i.e. multicollinearity, autocorrelation, normality of residuals, consistency over different time duration) and provide the most robust results. A logarithms regression model is performed to analyze the multiplicative relationship between Geo ESG and Gross Margin of a company.

## Model Results
<p align="center">
  <img src="screenshot/ESG model.png" alt="model result" width="500">
</p>

The econometric results show a positive relationship between the Geo ESG and Gross Margin. This relationship can be expressed in terms of the percentage changes as below:

<div align="center">
  </strong> % change in Gross Margin = C * (% change in Geo ESG) </strong>
</div>

## Interpretation and Application
The positive coefficient between Gross Margin and Geo ESG can be used to quantify the ESG value contribution with the help of the following steps.

1. Identify the baseline Geo ESG and compare with client's current GEO ESG, which is illustrated as:
   % change in Geo ESG = (Current Geo ESG - Baseline Geo ESG) / Baseline Geo ESG 
3. Measure the impact on gross margin due to percentage change in Geo ESG, which is illustrated as: % change in Gross Margin = C * (% change in Geo ESG)
4. Measure the impact on gross margin in adsolute terms, which is illustrated as: Absolute change in Gross Margin = C * (% change in Geo ESG) * Current Gross Margin
5. Compute the ESG value contribution, which is illustrated as: ESG Value Contribution = [C * (% change in Geo ESG) * Current Gross Margin] * Current Revenue  
