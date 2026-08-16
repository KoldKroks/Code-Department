# Code Department

A collection of coding exercises and small projects from over the years,
covering SQL database design, a JSP web app, an Android app skeleton, Python
scripting exercises, and a few HTML snippets. This is a learning/portfolio
archive rather than a single cohesive application — each item below is
self-contained.

## What's in here

Everything currently lives at the root of the repo (it was assembled from
several older individual projects). Grouped by topic:

### SQL — pet food supplier project ("TygerBerg")
A database-design exercise for a fictional pet food supplier.
- `Tygervalley Script.sql` — creates the `TygerBergFoodProject` database
- `TygerBurgProject.sql` — full schema (tables, sample data, views, stored procedures, indexes)
- `AnimalCategoryTable.sql`, `FoodTypeTable.sql`, `PetTypesTable.sql`, `SupplierTable.sql`, `Product.sql`, `Quantity.sql` — individual table definitions
- `DeleteFoodType.sql`, `UpdateStock.sql` — stored procedures
- `VW_LowestFoods.sql`, `vw_ExpiredFoodDetails.sql`, `vw_ManufacturerDetails.sql`, `vw_PetsPerType.sql`, `vw_all_crust.sql`, `vw_all_item.sql`, `vw_purchased_item.sql` — SQL views
- **Run with:** Microsoft SQL Server (T-SQL syntax). Open in SSMS and execute the scripts in order.

### SQL — hardware/screw shop database ("screw_db")
- `Custom.sql`, `Invoice.sql` — table definitions for a small customer/invoice schema
- `screw_db.bak` — a SQL Server database backup (kept locally, no longer tracked in git — see [Hygiene notes](#hygiene-notes))
- **Run with:** Microsoft SQL Server. Restore `screw_db.bak` in SSMS, or run the `.sql` scripts directly.

### SQL — South African universities notebook
- `SQLOCode.ipynb` — a SQL notebook (Azure Data Studio / Jupyter SQL kernel) building a small `sauniversities` database (cities, universities, city-university mapping).
- **Run with:** Azure Data Studio or Jupyter with a SQL kernel, against a SQL Server instance.

### JSP — simple forum web app
A basic login/registration/forum demo using JSP and SQL Server via JDBC.
- `index.html`, `Login.html` — landing/login pages
- `login.jsp`, `signup.jsp`, `Forums.jsp`, `ForgetPassword.jsp` — server pages handling auth and forum topics
- `message (4).txt` – `message (7).txt` — earlier drafts/alternate versions of the forum/login/register pages (kept for history)
- **Run with:** a Java servlet container (e.g. Apache Tomcat) with the SQL Server JDBC driver on the classpath, backed by a SQL Server instance. Connection details in the source are placeholders — set your own host/user/password before running (see [Hygiene notes](#hygiene-notes)).

### Android — calculator app skeleton
- `build.gradle`, `settings.gradle`, `gradlew`, `gradlew.bat`, `gradle.properties` — Gradle project scaffold for an app named `CalculatorApp`
- `compiler.xml`, `gradle.xml`, `jarRepositories.xml`, `misc.xml`, `modules.xml`, `workspace.xml` — Android Studio project metadata
- Note: only the project scaffold/config is present; the actual `app` module source isn't included in this snapshot.
- **Run with:** Android Studio (open the folder, let Gradle sync, then Run).

### Python exercises
Small standalone scripts, mostly from coursework-style exercises (grades/averages, egg-carton counting logic, number-guessing/summing, file processing, social-media "likers" counter).
- `Eggs Example.py`, `likers.py`, `Question2.py`, `Question2 (1).py`, `Question3.py`, `Question5.py`, `newQuestion4.py`, `newQuestion5.py`
- **Run with:** Python 3, e.g. `python "Question2.py"`. Each script is independent and mostly takes interactive input from the console.

### HTML snippets
- `HTML code.txt`, `Html Code 2.txt` — standalone HTML/CSS snippets from early web exercises.
- **Run with:** open directly in a browser, or rename to `.html`.

## Tech stack summary

| Area              | Tech                                      |
|-------------------|--------------------------------------------|
| Databases         | Microsoft SQL Server (T-SQL)               |
| Web backend       | Java, JSP, JDBC                            |
| Mobile            | Android (Gradle, Java)                     |
| Scripting         | Python 3                                   |
| Notebooks         | SQL notebook (Jupyter/Azure Data Studio)   |
| Frontend snippets | HTML / CSS                                 |

## Hygiene notes

This repo spans several years of coursework/practice projects, so a few things
worth knowing if you poke around the source:

- The JSP database connection strings originally contained hardcoded
  credentials for local development SQL Server instances; these have been
  replaced with `<DB_HOST>` / `<DB_USER>` / `<DB_PASSWORD>` placeholders.
  Fill in your own values in a config/environment variable if you run this
  code — don't hardcode real credentials.
- `screw_db.bak` (a SQL Server backup file) and `local.properties` (an
  Android Studio machine-specific file) are no longer tracked in git and are
  covered by `.gitignore` going forward.
- Sample data in the SQL scripts (names, emails, phone numbers) is fictional,
  used only to populate example tables for these exercises.

## License

MIT — see [LICENSE](LICENSE).
