\# Parents' Circle of Influence



\## 1. Project Overview



\*\*Goal:\*\* To identify which parental factors fall within the "Circle of Influence" and may influence their children's school performance.



\*\*Context:\*\* The Circle of Influence, introduced by Stephen Covey (\*7 Habits of Highly Effective People\*), focuses on factors fully under one's control. By isolating these variables within the dataset, this analysis aims to highlight actionable areas where parents can have a direct and meaningful impact on their child's learning outcomes.



\## 2. Dataset Description



\- \*\*Name:\*\* Student Alcohol Consumption

\- \*\*Source\*\*: \[Kaggle – Student Alcohol Consumption](https://www.kaggle.com/datasets/uciml/student-alcohol-consumption)

\- \*\*Size:\*\* 395 rows, 33 columns



\## Key Variable Analyzed



\*\*Student grades\*\*



\- \*\*G1, G2:\*\* period grades

\- \*\*G3:\*\* final grade



\*\*Student information\*\*



\- \*\*sex:\*\* gender

\- \*\*address:\*\* urban or rural

\- \*\*romantic:\*\* relationship status

\- \*\*studytime\*\*: weekly study time



\*\*Circle of Influence\*\*



These variables were selected because they represent factors fully controlled by parents and therefore align with Covey's Circle of Influence framework:



\- \*\*guardian\*\*: student's guardian (mother/father/other)

\- \*\*famsup\*\*: family educational support

\- \*\*paid\*\*: extra paid classes

\- \*\*activities\*\*: extra-curricular activities

\- \*\*nursery\*\*: attended nursery school

\- \*\*internet\*\*: Internet access at home



\## 3. Tools \& Technologies



\*\*Language:\*\* Python (3.11.5)



\*\*Libraries:\*\* Pandas, NumPy, Matplotlib



\*\*Environment:\*\* Jupyter Notebook



\## 4. Key Goals \& Insight



\*\*Project Goals\*\*



\- Identify which 'Circle of Influence' variables correlate most strongly with student performance.

\- Evaluate how each COI factor influences the average final grade (G3).

\- Provide simple and clear analysis that parents can easily understand and apply.



\*\*Key Insight \& Findings\*\*



\- \*\*Nursery Attendance:\*\* Students who attended nursery show higher average grades compared to those who didn't.

\- \*\*Internet Access:\*\* Internet access at home is associated with higher performance.

\- \*\*Extracurricular Activities:\*\* both paid classes and extra activities show a positive trend toward higher grades.

\- \*\*Family Support\*\*: Students who report receiving additional family support show lower average grades.

\- Guardian Type: Students whose guardian is neither mother nor father score lower than those under parental guardianship.



\## 5. Methodology \& Analysis Process



\*\*5.1 Data Cleaning and Preparation\*\*



Before starting the analysis, the dataset was checked for common data quality issues.



This included:



\- verifying the presence of duplicate rows,

\- checking for missing values across all columns,



\*\*Result:\*\* The dataset contained \*\*no\*\* duplicates and no missing values, so no additional cleaning steps were required at this stage.



\*\*5.2 Feature Engineering \& Transformation\*\*



To prepare the dataset for statistical analysis and correlation testing, the following transformations were applied:



\*\*Column name formatting:\*\*



All column names were converted to lowercase, stripped of extra spaces, and formatted using underscores for consistency.



\*\*Feature grouping:\*\*



All features were grouped into logical segments (Circle of Influence, Family \& Environment, Time-Related Factors, Other Factors) to structure the analysis.



\*\*Guardian variable encoding:\*\*



The original \*'guardian'\* column contained three categories (mother, father, other) and was therefore unsuitable for correlation. It was transformed into three dummy variables, which were added to the dataset, and the original column was removed from the COI group.



\*\*Target DataFrame for ML analysis:\*\*



A separate copy of the dataset \*(df\_ml)\* was created for numeric processing and correlation analysis.



\*\*Binary variable conversion:\*\*



All yes/no variables in the COI group were mapped to numeric values (1/0) to ensure compatibility with statistical and machine-learning methods.



\*\*5.3 Distribution of Final Grades (G3)\*\*



To understand the overall performance of students, descriptive statistics were calculated for the target variable 'G3' (Final Grade, scale 0-20).



\*\*Descriptive Statistics:\*\*



\*\*Mean:\*\* 10.42 | \*\*Median:\*\* 11.0 - Indicates a balanced, near-normal distribution



\*\*Spread:\*\* Standard Deviation of 4.58 highlights a significant performance gap.



\*\*Range:\*\* 0 to 20.



\*\*Outliers:\*\*



A noticeable cluster of students scored '0'. These values were kept, as failing a course is an important outcome when evaluating parental influence.



\*\*Visualization:\*\*



A histogram of the final grades shows:



\- a moderate spread across 0-20 scale

\- a concentration around the middle range

\- a visible spike at 0

\- !\[G3 Distribution](charts/g3\_distribution.png)



\*\*5.4 Circle of Influence Analysis\*\*



This section examines individual parental factors to see how strongly they relate to student performance.



\*\*Nursery Attendance (Early Education):\*\*



\- !\[Average Grade by Nursery Attendance](charts/nursery.png)

\- \*\*Correlation with 'G3':\*\* \*\*0.05\*\* (Very Weak Positive).

\- \*\*Mean difference (yes-no):\*\* \*\*+0.59\*\* points

\- \*\*Insight:\*\* While there is a positive link, early childhood education has a minimal direct impact on high school performance compared to current factors.



\*\*Internet Access (Home Resources)\*\*:



\- !\[Average Grade by Internet Access](charts/internet.png)

\- \*\*Correlation with 'G3':\*\* \*\*0.10\*\* (Very Weak Positive)

\- \*\*Mean Difference (yes – no):\*\* \*\*+1.21\*\* points

\- \*\*Insight:\*\* Internet access appears to support better learning conditions, likely by improving access to study materials, research, and homework tools.



\*\*Activities (Extra-Curricular Engagement)\*\*



\- !\[Average Grade by Extra Activities](charts/activities.png)

\- \*\*Correlation with 'G3':\*\* \*\*0.02\*\* \*(Very Weak Positive)\*

\- \*\*Mean Difference (yes – no): +0.02\*\* points

\- \*\*Insight:\*\* The effect is negligible. While activities may provide developmental benefits, they show almost no measurable impact on academic performance in this dataset.



\*\*Paid Classes (Extra Lessons):\*\*



\- !\[Average Grade by Paid Classes](charts/paid.png)

\- \*\*Correlation with G3:\*\* \*\*0.10\*\* (Very weak positive)

\- \*\*Mean Difference (yes-no):\*\* \*\*+0.93\*\* points

\- \*\*Insight:\*\* Paid classes show a small but clearer positive association with final grades compared to other COI factors. While the effect is not strong, structured additional lessons appear to support slightly better performance.



\*\*Family Support\*\*:



\- !\[Average Grade by Family Support](charts/famsup.png)

\- \*\*Correlation with G3:\*\* \*\*–0.04\*\* (Very Weak Negative)

\- \*\*Mean Difference (yes-no):\*\* \*\*-0.37\*\* points

\- \*\*Insight:\*\* The effect is minimal and statistically weak. Family support — as defined in the dataset — does \*\*not\*\* show a meaningful positive influence on final grades.



\*\*Guardians:\*\*



\- !\[Average Grade by Guardian Type](charts/guardians.png)

\- \*\*Correlation with G3:\*\*

&nbsp;   

&nbsp;   \*\*Mother:\*\* \*\*0.02\*\* (Very Weak Positive)

&nbsp;   

&nbsp;   \*\*Father:\*\* \*\*0.03\*\* (Very Weak Positive)

&nbsp;   

&nbsp;   \*\*Other:\*\* \*\*-0.09\*\* (Very Weak Positive)

&nbsp;   

\- \*\*Mean Difference (yes - no):\*\*

&nbsp;   

&nbsp;   \*\*Mother:\*\* \*\*+0.22\*\* points

&nbsp;   

&nbsp;   \*\*Father:\*\* \*\*+0.36\*\* points

&nbsp;   

&nbsp;   \*\*Other:\*\* \*\*-1.47 points\*\*

&nbsp;   

\- \*\*Insight:\*\*

&nbsp;   

&nbsp;   Students cared for by \*mother\* or \*father\* perform similarly well, with almost no difference in average grades. However, students whose primary guardian is listed as \*other\* score notably lower (–1.47), indicating a potential disadvantage.

&nbsp;   



\## 6. Key Findings



\*\*Summary of Impact:\*\*



The six "Circle of Influence" factors showed only small differences in average grades. There is no single action that dramatically improves performance on its own.



\*\*Positive Drivers:\*\*



The most consistent positive effects came from providing internet access, paid classes, and early nursery education, though individual gains were marginal.



\*\*Risk Factors:\*\*



Students cared for by a guardian other than a parent scored noticeably lower, indicating a potential disadvantage.



\*\*Conclusion:\*\*



There is no one big fix—but small positive habits add up. Stable support, involvement, and access to learning resources can create an environment where students perform better over time.



\## 7. Project Structure



├── student.ipynb                       # Main analysis notebook

├── student.csv                           # Dataset (Kaggle: Student Alcohol Consumption)

├── charts/                                   # Folder with all exported visualizations

│   ├── g3\_distribution.png

│   ├── nursery.png

│   ├── internet.png

│   ├── activities.png

│   ├── paid.png

│   ├── famsup.png

│   ├── guardian\_mother.png

│   ├── guardian\_father.png

│   ├── guardian\_other.png

│   ├── guardians.png

├── \[README.md](http://README.md)                          # Project documentation

├── requirements.txt



\## 8. How to Run This Project



This project was developed and tested in a local Python environment using Jupyter Notebook.



\*\*Requirements\*\*



\- Python \*\*3.10+\*\* (recommended)

\- Required libraries listed in \*\*requirements.txt\*\*



\*\*Steps\*\*



1\. \*\*Clone the repository:\*\*

&nbsp;   

&nbsp;   git clone <repository-url>

&nbsp;   

2\. \*\*Navigate to the project directory:\*\*

&nbsp;   

&nbsp;   cd parents-circle-of-influence

&nbsp;   

3\. \*\*(Optional but recommended) Create a virtual environment:\*\*

&nbsp;   

&nbsp;   python -m venv venv

&nbsp;   source venv/bin/activate   # macOS/Linux

&nbsp;   venv\\Scripts\\activate      # Windows

&nbsp;   

4\. \*\*Install dependencies:\*\*

&nbsp;   

&nbsp;   pip install -r requirements.txt

&nbsp;   

5\. \*\*Launch Jupyter Notebook:\*\*

&nbsp;   

&nbsp;   jupyter notebook

&nbsp;   

6\. Open \*\*student.ipynb\*\* and run the cells from top to bottom.



All charts are automatically saved to the `charts/` directory.



\## 9. Future Work



Possible future updates:



\- \*\*SQL integration:\*\*

&nbsp;   

&nbsp;   Recreate key analyses using SQL queries to demonstrate data extraction and aggregation skills.

&nbsp;   

\- \*\*Power BI dashboard\*\*

&nbsp;   

&nbsp;   Create an interactive dashboard to present key findings dynamically, allowing users to explore how different Circle of Influence factors relate to student performance.

&nbsp;   

\- \*\*Regression analysis:\*\*

&nbsp;   

&nbsp;   Apply statistical regression techniques both for COI-only and full-feature scenarios to quantify relationships and interpret variable effects.

&nbsp;   

\- \*\*Machine Learning model:\*\*

&nbsp;   

&nbsp;   Train a predictive model (e.g., linear regression or tree-based models) to estimate final grades (G3) using all features (prediction focus).

