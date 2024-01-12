#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

df = pd.read_csv('D://Data Sets and practice work//Data//HR_Analytics.csv')


# In[2]:


df.head()


# In[3]:


df_filtered = df[df['Age'] > 30]


# In[4]:


df_filtered


# In[5]:


df.dropna(inplace=True)


# In[6]:


df


# In[7]:


df_sorted = df.sort_values(by='Age', ascending=False)


# In[8]:


df_sorted


# In[9]:


unique_roles = df['Department'].nunique()


# In[10]:


unique_roles


# In[11]:


pivot_table = pd.pivot_table(df, values='DailyRate', index='Department', columns='Gender', aggfunc='mean')


# In[12]:


pivot_table


# In[13]:


sns.countplot(x='BusinessTravel', hue='Attrition', data=df)


# In[14]:


#Distribution of Age
plt.figure(figsize=(10, 6))
sns.histplot(df['Age'], bins=20, kde=True)
plt.title('Distribution of Age')
plt.xlabel('Age')
plt.ylabel('Frequency')
plt.show()


# In[26]:


sns.stripplot(x='Department', y='YearsAtCompany', data=df, hue='Attrition', dodge=True)
plt.show()


# In[27]:


sns.barplot(x='Gender', y='MonthlyIncome', data=df, estimator=sum)
plt.show()


# In[28]:


sns.violinplot(x='Department', y='YearsAtCompany', data=df, hue='Attrition', split=True)
plt.show()


# In[19]:


# Value counts for categorical columns
print(df['Attrition'].value_counts())
print(df['BusinessTravel'].value_counts())
print(df['Department'].value_counts())


# In[20]:


# Average Monthly Income by Job Role
average_income_by_role = df.groupby('Department')['MonthlyIncome'].mean()


# In[21]:


average_income_by_role


# In[23]:


# Number of employees in each Education Field
education_field_counts = df['EducationField'].value_counts()


# In[24]:


education_field_counts


# In[29]:


from mpl_toolkits.mplot3d import Axes3D
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
ax.scatter(df['Age'], df['MonthlyIncome'], df['YearsAtCompany'], c='blue', marker='o')
plt.show()


# In[ ]:




