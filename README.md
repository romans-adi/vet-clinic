<!-- PROJECT DESCRIPTION -->

# <a name="about-project">VetClinic</a>

This project is a database system for a vet clinic. The database includes tables to store information about animals, their owners, clinic employees, and visits. The goal is to design a comprehensive database structure that enables efficient management and organization of data related to the clinic's operations and patient care.

<!-- TABLE OF CONTENTS -->

# Table of Contents

- [🛠 Built With](#built-with)
  - [Tech Stack](#tech-stack)
  - [Key Features](#key-features)
- [Live Demo](#live-demo)
- [Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [Authors](#authors)
- [Future Features](#future-features)
- [Contributing](#contributing)
- [Show your support](#support)
- [Acknowledgements](#acknowledgements)
- [License](#license)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Well-structured data**
- **Autoincrementing IDs**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO

## Live Demo <a name="live-demo"></a>

> Add a link to your deployed project.

- [Live Demo Link]()

<p align="right">(<a href="#readme-top">back to top</a>)</p>
-->

<!-- GETTING STARTED -->

## Getting Started <a name="getting-started"></a>

### Prerequisites

1. To install PostgreSQL, follow these steps:

Determine the appropriate installation method for your operating system. PostgreSQL supports various platforms, including Linux, macOS, and Windows. Visit the PostgreSQL website to find the installation method specific to your OS.

1. For Linux:

> sudo apt-get install postgresql

or

> sudo yum install postgresql-server

or

> sudo dnf install postgresql-server postgresql-contrib

Other distributions: Refer to the PostgreSQL documentation or consult your distribution's documentation for installation instructions.

2. For Windows:

PostgreSQL Installer for Windows: Download the PostgreSQL Installer for Windows from the official website and run the installer. Follow the prompts and choose the components you want to install.

3. For macOS

Homebrew: If you have Homebrew installed, use the following command:

> brew install postgresql

PostgreSQL for macOS: Download the PostgreSQL package for macOS from the official website and follow the installation instructions.


During the installation process, you may be prompted to provide a password for the default PostgreSQL superuser (postgres). Choose a strong password and remember it for future use.
After the installation is complete, PostgreSQL should be up and running as a service on your system. You can start and stop the service using the provided tools or by using the system services manager.

Once PostgreSQL is installed, you can access it using the psql command-line tool or a graphical client.

### Setup

To get a local copy up and running, follow these steps.
Choose the directory on your local machine where you want to copy project. For example:

> cd /home/user/name-of-your-directory

Clone the project using one of the options.

Using SSH-key:

> git clone git@github.com:romans-adi/vet-clinic.git

Using HTTPS:

> git clone https://github.com/romans-adi/vet-clinic.git

You can also create the new directory just adding the name of it in the end of command. For example:

> git clone https://github.com/romans-adi/vet-clinic.git vet-clinic

### Usage

To create the PostgreSQL database and view its contents, follow the steps below:

1. Ensure that PostgreSQL is installed on your system and the PostgreSQL server is running.

2. Open a terminal or command prompt.

3. Run the following command to create the database:

> psql -U <username> -c "CREATE DATABASE <database_name>;"

Replace <username> with your PostgreSQL username and <database_name> with the desired name for your database.

4. To view the contents of the database, use the following command:

> psql -U <username> -d <database_name> -c "SELECT * FROM <table_name>;"

Replace <username> with your PostgreSQL username, <database_name> with the name of your database, and <table_name> with the name of the table you want to view.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## Authors <a name="authors"></a>

**Romans S.**

- GitHub: [@romans-adi](https://github.com/romans-adi/)
- Twitter: [@obj583](https://twitter.com/obj583/)
- LinkedIn: [Romans Špiļaks](https://www.linkedin.com/in/obj513/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **Add new tables & create relations between**
- [ ] **Database performance audit**
- [ ] **Add schema diagram**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing <a name="contributing"></a>

We welcome contributions to enhance the functionality and user experience of the VetClinic project. If you have any ideas, suggestions, or bug reports, feel free to open an issue or submit a pull request. Let's help the animals together!

If you'd like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with descriptive commit messages.
4. Push your changes to your forked repository.
5. Submit a pull request to the main repository, explaining your changes in detail.

Please adhere to the coding conventions and guidelines specified in the project.

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## Support <a name="support"></a>

If you encounter any issues or have any questions or suggestions, please open an issue on the [issue tracker](../../issues/).
Furthermore, if you would like to get in touch with us, you can find our contact information in the <a href="#authors">Authors</a> section.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgments <a name="acknowledgements"></a>

I would like to express our gratitude to the PostgreSQL community for the development and continuous improvement of the PostgreSQL open-source database management system. [PostgreSQL] (https://www.postgresql.org) has provided a robust and reliable foundation for my project, enabling me to leverage its powerful features and scalability.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
