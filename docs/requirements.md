# American Sociological Review Requirements

*Source: https://journals.sagepub.com/author-instructions/smx (Retrieved: July 4, 2025)*

References are presented in a separate section headed "REFERENCES." All references cited in the text must be listed in the reference section, and vice versa. Publication information for each must be complete and correct. List the references in alphabetical order by authors' last names; include first names and middle initials for all authors when available. List two or more entries by the same author(s) in order of the year of publication. When the cited material is not yet published but has been accepted for publication, use "Forthcoming" in place of the date and give the journal name or publishing house. For dissertations and unpublished papers, cite the date and place the paper was presented and/or where it is available. If no date is available, use "n.d." in place of the date. If two or more cited works are by the same author(s) within the same year, list them in alphabetical order by title and distinguish them by adding the letters a, b, c, etc., to the year (or to "Forthcoming"). For works with more than one author, only the name of the first author is inverted (e.g., "Jones, Arthur B., Colin D. Smith, and James Petersen"). List all authors; using "et al." in the reference list is not acceptable. References for data sets should include a persistent identifier, such as a Digital Object Identifier (DOI). Persistent identifiers ensure future access to unique published digital objects, such as a text or data set. Persistent identifiers are assigned to data sets by digital archives, such as institutional repositories and partners in the Data Preservation Alliance for the Social Sciences (Data-PASS). Refer to the ASA Style Guide (7th ed., 2022) for additional examples

## Examples

### Books:
Bernard, Claude. [1865] 1957. An Introduction to the Study of Experimental Medicine. Translated by H. C. Greene. New York: Dover.

Mason, Karen O. 1974. Women's Labor Force Participation and Fertility. Research Triangle Park, NC: National Institutes of Health.

U.S. Bureau of the Census. 1960. Characteristics of Population, Vol. 1. Washington, DC: U.S. Government Printing Office.
 
### Periodicals:
Goodman, Leo A. 1947a. "The Analysis of Systems of Qualitative Variables When Some of the Variables Are Unobservable. Part I—A Modified Latent Structure Approach." American Journal of Sociology 79(5):1179–1259.

Goodman, Leo A. 1947b. "Exploratory Latent Structure Analysis Using Both Identifiable and Unidentifiable Models." Biometrika 61(2):215–31

Szelényi, Szonja, and Jacqueline Olvera. Forthcoming. "The Declining Significance of Class: Does Gender Complicate the Story?" Theory and Society.
 
### Collections:
Sampson, Robert J. 1992. "Family Management and Child Development: Insights from Social Disorganization Theory." Pp. 63–93 in Advances in Criminology Theory, Vol. 3, Facts, Frameworks, and Forecasts, edited by J. McCord. New Brunswick, NJ: Transaction.
 
### Dissertations:
Charles, Maria. 1990. "Occupational Sex Segregation: A Log-Linear Analysis of Patterns in 25 Industrial Countries." PhD dissertation, Department of Sociology, Stanford University, Stanford, CA
 
### Web sites:
American Sociological Association. 1997. "Call for Help: Social Science Knowledge on Race, Racism, and Race Relations" (ASA Action Alert, October 15). Washington, DC: American Sociological Association.(http://www.asanet.org/racecall.htm).

Kao, Grace, and Jennifer Thompson. 2003. "Racial and Ethnic Stratification in Educational Achievement and Attainment." Annual Review of Sociology 29:417–42. (http://arjournals.annualreviews.org/doi/abs/10.1146/annurev.soc.29.010202.100019)
 
### Datasets:
Deschenes, Elizabeth Piper, Susan Turner, and Joan Petersilia. 2000. "Intensive Community Supervision in Minnesota, 1990–1992: A Dual Experiment in Prison Diversion and Enhanced Supervised Release [Computer file]." ICPSR06849-v1. Ann Arbor, MI: Inter-university Consortium for Political and Social Research [distributor]. (https//doi.org/10.3886/ICPSR06849)

## TODO/Task List

- [ ] Sort references alphabetically by author's surname, first author as "Last, First", others as "First Last" (no comma)
- [ ] List all authors with full names (not allowed to use "et al.")
- [ ] Sort multiple works by same author by year, use a/b/c for same year disambiguation
- [ ] Use "Forthcoming" instead of year for unpublished but accepted works
- [ ] Use "n.d." for no date available
- [ ] Support special types: collections, dissertations, datasets, etc.
- [ ] Dataset citations must include DOI
- [ ] Format details adjustment for journals, books, websites, etc.
- [ ] Test samples covering all types
- [ ] Extreme/boundary testing

## APA vs ASA Differences Comparison

| Item                | APA Style                        | ASA Style (Target)              |
|---------------------|----------------------------------|---------------------------------|
| Author names        | Initials only, may use et al.   | Full names, list all, no et al.|
| Sorting             | Author surname + name initials  | Author surname + full name     |
| Same year works     | Sort by title, a/b/c             | Sort by title, a/b/c           |
| Unpublished/accepted| In press                         | Forthcoming                    |
| No date             | n.d.                             | n.d.                           |
| Dataset citation    | DOI optional                     | DOI required                   |
| Author inversion    | All authors                      | First author only              |
| Date display        | Year/month/day if available      | Only year, range as year--endyear, special cases use Forthcoming and n.d. |

**ASA date policy:** Only the year is shown in references (no month or day). If a date range is needed (e.g., 1990--1992), print year--endyear. Special cases: 'Forthcoming' and 'n.d.' are used as year values when appropriate.

## Development Progress Tracking

- [x] Requirements analysis (Completed 2025-07-02, detailed in requirements.md)
- [x] Initial style file modification (Completed 2025-07-02, apa.bbx significantly modified)
- [x] Bibliography sorting implementation (Completed 2025-07-02, sorting template implemented, suggest adding edge tests)
- [x] Author name processing implementation (Completed 2025-07-02, apaauthor format implemented)
- [x] Special type support (datasets, dissertations, etc.) (Completed 2025-07-02, drivers covered, suggest adding tests)
- [x] Test sample writing (Completed 2025-07-02, test-asa.bib covers main types, suggest adding boundary tests)
- [x] Documentation improvement (Completed 2025-07-02, requirements.md, README.md documented)
- [x] Final acceptance testing (Completed 2025-07-04, package loading and functionality tests passed)