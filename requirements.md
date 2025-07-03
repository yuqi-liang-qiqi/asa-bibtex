Turn biblatex-apa to biblatex-asa (american sociological association) style.

biblatex-apa is a package for formatting bibliographies in APA style, while biblatex-asa is for ASA style. The two styles have different requirements for citations and references. Original link: https://ctan.org/pkg/biblatex-apa?lang=en

I would like to use biblatex-apa as the foundation to modify for biblatex-asa style. The following are the requirements for the American Sociological Association (ASA) style, which is used in sociology and related fields.

American Sociological Review Requirements:

References are presented in a separate section headed "REFERENCES." All references cited in the text must be listed in the reference section, and vice versa. Publication information for each must be complete and correct. List the references in alphabetical order by authors' last names; include first names and middle initials for all authors when available. List two or more entries by the same author(s) in order of the year of publication. When the cited material is not yet published but has been accepted for publication, use "Forthcoming" in place of the date and give the journal name or publishing house. For dissertations and unpublished papers, cite the date and place the paper was presented and/or where it is available. If no date is available, use "n.d." in place of the date. If two or more cited works are by the same author(s) within the same year, list them in alphabetical order by title and distinguish them by adding the letters a, b, c, etc., to the year (or to "Forthcoming"). For works with more than one author, only the name of the first author is inverted (e.g., "Jones, Arthur B., Colin D. Smith, and James Petersen"). List all authors; using "et al." in the reference list is not acceptable. References for data sets should include a persistent identifier, such as a Digital Object Identifier (DOI). Persistent identifiers ensure future access to unique published digital objects, such as a text or data set. Persistent identifiers are assigned to data sets by digital archives, such as institutional repositories and partners in the Data Preservation Alliance for the Social Sciences (Data-PASS). Refer to the ASA Style Guide (7th ed., 2022) for additional examples
Books:
Bernard, Claude. [1865] 1957. An Introduction to the Study of Experimental Medicine. Translated by H. C. Greene. New York: Dover.

Mason, Karen O. 1974. Women's Labor Force Participation and Fertility. Research Triangle Park, NC: National Institutes of Health.

U.S. Bureau of the Census. 1960. Characteristics of Population, Vol. 1. Washington, DC: U.S. Government Printing Office.
 
Periodicals:
Goodman, Leo A. 1947a. "The Analysis of Systems of Qualitative Variables When Some of the Variables Are Unobservable. Part I—A Modified Latent Structure Approach." American Journal of Sociology 79(5):1179–1259.

Goodman, Leo A. 1947b. "Exploratory Latent Structure Analysis Using Both Identifiable and Unidentifiable Models." Biometrika 61(2):215–31

Szelényi, Szonja, and Jacqueline Olvera. Forthcoming. "The Declining Significance of Class: Does Gender Complicate the Story?" Theory and Society.
 
Collections:
Sampson, Robert J. 1992. "Family Management and Child Development: Insights from Social Disorganization Theory." Pp. 63–93 in Advances in Criminology Theory, Vol. 3, Facts, Frameworks, and Forecasts, edited by J. McCord. New Brunswick, NJ: Transaction.
 
Dissertations:
Charles, Maria. 1990. "Occupational Sex Segregation: A Log-Linear Analysis of Patterns in 25 Industrial Countries." PhD dissertation, Department of Sociology, Stanford University, Stanford, CA
 
Web sites:
American Sociological Association. 1997. "Call for Help: Social Science Knowledge on Race, Racism, and Race Relations" (ASA Action Alert, October 15). Washington, DC: American Sociological Association.(http://www.asanet.org/racecall.htm).

Kao, Grace, and Jennifer Thompson. 2003. "Racial and Ethnic Stratification in Educational Achievement and Attainment." Annual Review of Sociology 29:417–42. (http://arjournals.annualreviews.org/doi/abs/10.1146/annurev.soc.29.010202.100019)
 
Datasets:
Deschenes, Elizabeth Piper, Susan Turner, and Joan Petersilia. 2000. "Intensive Community Supervision in Minnesota, 1990–1992: A Dual Experiment in Prison Diversion and Enhanced Supervised Release [Computer file]." ICPSR06849-v1. Ann Arbor, MI: Inter-university Consortium for Political and Social Research [distributor]. (https//doi.org/10.3886/ICPSR06849)

### TODO/任务清单

- [x] 参考文献按作者姓氏字母顺序排列（2025-07-02 完成，已实现排序模板，建议补充极端测试）
- [x] 所有作者均需列出全名（不可用"et al."）（2025-07-02 完成，已实现 apaauthor 格式）
- [x] 同一作者多篇文献按年份排序，同年用 a/b/c 区分（2025-07-02 完成，已实现 year postfix 机制，建议补充测试）
- [x] 未出版但已接受的文献用"Forthcoming"代替年份（2025-07-02 完成，样例已覆盖）
- [x] 无日期用"n.d."代替（2025-07-02 完成，已支持 nodate 字符串）
- [x] 论文集、学位论文、数据集等特殊类型支持（2025-07-02 完成，driver 已覆盖，建议补充测试）
- [x] 数据集引用需包含 DOI（2025-07-02 完成，dataset driver 已实现）
- [x] 支持作者名只倒置第一个作者（2025-07-02 完成，apaauthor 格式已实现）
- [x] 期刊、书籍、网站等不同类型的格式细节调整（2025-07-02 完成，driver 已实现）
- [x] 测试样例覆盖所有类型（2025-07-02 完成，test-asa.bib 已覆盖主要类型，建议补充边界测试）
- [x] 极端/边界测试（2025-07-03 完成，test-asa.bib 和 test-asa.tex 已覆盖边界情况）

### apa 与 asa 差异对比

| 项目                | APA 样式                         | ASA 样式（目标）                |
|---------------------|----------------------------------|-------------------------------|
| 作者名              | 仅首字母，部分可用 et al.        | 全名，全部列出，不用 et al.    |
| 排序                | 作者姓+名首字母                  | 作者姓+全名                   |
| 同年多篇            | 按标题排序，a/b/c                | 按标题排序，a/b/c             |
| 未出版/已接受       | In press                         | Forthcoming                   |
| 无日期              | n.d.                             | n.d.                          |
| 数据集引用          | DOI 可选                         | DOI 必须                      |
| 作者倒置            | 所有作者                         | 仅第一个作者                  |

### 开发进度追踪

- [x] 需求分析（2025-07-02 完成，requirements.md 已详细列出）
- [x] 样式文件初步修改（2025-07-02 完成，apa.bbx 已大幅修改）
- [x] 参考文献排序实现（2025-07-02 完成，已实现排序模板，建议补充极端测试）
- [x] 作者名处理实现（2025-07-02 完成，apaauthor 格式已实现）
- [x] 特殊类型支持（数据集、学位论文等）（2025-07-02 完成，driver 已覆盖，建议补充测试）
- [x] 测试样例编写（2025-07-02 完成，test-asa.bib 已覆盖主要类型，建议补充边界测试）
- [x] 文档完善（2025-07-02 完成，requirements.md、README.md 已有说明）
- [ ] 终极验收