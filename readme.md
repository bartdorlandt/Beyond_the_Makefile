# Beyond the Makefile

## Introduction

In the realm of automating repetitive tasks and managing project workflows, several tools have emerged to simplify and streamline these processes. Among the most notable are [Makefile](https://www.gnu.org/software/make/manual/make.html), [Taskfile](https://taskfile.dev/), [Just](https://github.com/casey/just), [invoke](https://www.pyinvoke.org/index.html) and a custom Bash scripts ([run](https://www.youtube.com/watch?v=SdmYd5hJISM&t=42s)). Each of these tools offers unique features and benefits, catering to different needs and preferences of developers.

For each of the tools, you obviously need to have the tool installed on your system. Makefile is a standard tool on Unix-based systems, while Taskfile, Just, and invoke need to be installed separately. The installation process for each tool may vary depending on the platform and package manager used.

# Files
## Makefile
[Makefile](https://www.gnu.org/software/make/manual/make.html)

Makefile is a build automation tool that has been around since the early days of Unix. It uses a file named `Makefile` to define a set of tasks to be executed. These tasks are typically used to compile and link programs, but Makefile can be used for a wide range of automation tasks. The syntax of Makefile is simple yet powerful, allowing for complex dependency management and task execution.

## Taskfile
[Taskfile](https://taskfile.dev/)

Taskfile is a modern alternative to Makefile, designed to be simpler and more intuitive. It uses a YAML-based configuration file named `Taskfile.yml` to define tasks. Taskfile aims to provide a more user-friendly experience while maintaining the power and flexibility needed for complex workflows. It supports features like task dependencies, variables, and cross-platform compatibility.

It also supports a global Taskfile.yml file that can be used to define tasks that are shared across multiple projects or system wide tasks.

## Just
[Just](https://github.com/casey/just)

Just is another modern task runner that focuses on simplicity and ease of use. It uses a file named `Justfile` to define tasks, with a syntax that is inspired by Makefile but more concise and readable. Just is designed to be easy to install and use, with a focus on providing a pleasant user experience. It supports features like variables, dependencies, and command-line arguments.

## run - a bash script
[run](https://www.youtube.com/watch?v=SdmYd5hJISM&t=42s)

For those who prefer a more hands-on approach, writing custom Bash scripts is a viable option. Bash scripts offer complete control over the automation process, allowing developers to write scripts tailored to their specific needs. While this approach requires more effort and expertise, it provides unmatched flexibility and customization. Bash scripts can be used to automate virtually any task that can be performed from the command line.

In summary, whether you choose Makefile, Taskfile, Just, or a custom Bash script, each tool offers unique advantages that can help streamline your development workflow and automate repetitive tasks.

Write an introduction of Makefile and the newer alternatives taskfile, just and a self created bash script.

## invoke
[invoke](https://www.pyinvoke.org/index.html)

Invoke is a Python-based task execution tool that is designed to be simple, flexible, and powerful. It uses a file named `tasks.py` to define tasks, with a syntax that is easy to read and write. Invoke is built on top of the Python programming language, making it easy to extend and customize. It supports features like task dependencies, command-line arguments, and parallel execution.

### Dependencies
Python needs to be installed on the system of course as well as the `invoke` library and the `python-dotenv` for reading the .env file.

```bash
python3 -m venv .venv
source .venv/bin/activate[.fish]
pip install -U pip
pip install -r requirements.txt
```

Or using `uv`:
```bash
uv venv
uv pip install -r requirements.txt
```

# The same features
All of the tools are able to execute the same commands. The difference is in the syntax and the way the commands are defined. Makefile uses a Makefile, Taskfile uses a Taskfile.yml, Just uses a Justfile, invoke uses a tasks.py file and a bash script uses a .sh (or run in this case) file.

## Specifics

### Makefile
- Standard tool on Unix-based systems
- Simple syntax
- Easily getting started from scratch
- Needs make to be installed
- Probably easy to use in pipeline, since most environments have make installed

### Justfile
- Simpeler than Makefile
- Easy to get started
- Easier than Makefile with more features
- Needs to be installed, single binary
- Probably needs to be installed in the pipeline

### Taskfile
- Modern alternative to Makefile
- YAML-based configuration
- Very easy to read and write
- Needs to be installed, single binary
- More verbose than the others
- Probably needs to be installed in the pipeline

### Bash script
- Full control over the automation process
- More effort and expertise required
- No dependencies
- bash is installed on every system
- Will run in every pipeline

### Invoke
- Python-based
- Easy to read and write (if you know Python)
- More powerful than the others
- More dependencies
- Python is probably installed on the system
- Dependencies probably needs to be installed in the pipeline
