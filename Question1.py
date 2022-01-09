#!/usr/bin/env python
# coding: utf-8

# #### Question 1: Given some sample data, write a program to answer the following: click here to access the required data set
#  > On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe. We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis.
# 

# In[1]:


pip install pandas


# In[20]:


# Load essential library
import pandas as pd
import numpy as np


# #### Explore the Data

# In[4]:


data = pd.read_csv("datascience.csv")
data.sample(10) #shows us random 10 lines of the dataframe to get a general sense of the data


# In[5]:


print(data.info()) #shows us the data type of the 7 columns


# In[7]:


data.describe() # shows us the statistical summary of the DataFrame


# #### a. Think about what could be going wrong with our calculation. Think about a better way to evaluate this data.
# > From the statistical summary, the mean of the column 'order_amount' is equivalent to the AOV that we orignially calculated, in this case is $3145.123. 
# 

# > To get a better intution of what goes wrong with our caclulation, how we orignally got the wrong caclulation is listed as below:

# In[17]:


wrong_aov = data['order_amount'].sum() / data['total_items'].count()
np.round(wrong_aov, decimals = 2)


# #### b. What metric would you report for this dataset?
# > Instead of using the built-in function count( ) to count the number of entries, we should use the built-in fuction sum( ) to caclulate the number of orders. 

# In[19]:


correct_aov = data['order_amount'].sum()/data['total_items'].sum()
np.round(correct_aov, decimals = 2) #keep the decimal place to 2 to align with our intended calculation


# #### c. What is its value?
# > The correct average order value (AOV) is $357.92
